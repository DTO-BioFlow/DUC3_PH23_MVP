#!/usr/bin/env bash
set -euo pipefail

URL="https://github.com/IFREMER-LERBL/PelHabMSFD/releases/download/v1.0/PelHabMSFD_1.0.tar.gz"
OUT="PelHabMSFD_1.0.tar.gz"

echo "Installing system tools, compilers, and Tcl/Tk fonts..."
sudo apt update
sudo apt install -y \
    xvfb \
    r-base-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    tcl-dev tk-dev xorg-dev \
    xfonts-base xfonts-100dpi xfonts-75dpi xfonts-scalable \
    fonts-dejavu fonts-liberation \
    gfortran libblas-dev liblapack-dev \
    wget

echo "Downloading PelHabMSFD..."
wget -O "$OUT" "$URL"

echo "Installing required R packages..."
Rscript -e 'packages <- c(
  "adespatial", "corrplot", "ggplot2", "gplots",
  "jpeg", "pastecs", "svMisc", "tcltk",
  "tcltk2", "testit", "vegan", "viridis"
);
installed <- rownames(installed.packages());
to_install <- setdiff(packages, installed);
if (length(to_install)) {
  install.packages(to_install, repos="https://cloud.r-project.org", Ncpus=parallel::detectCores());
} else {
  message("All dependencies already installed.");
}'

echo "Installing PelHabMSFD from source..."
Rscript -e 'install.packages("'"$OUT"'", repos=NULL, type="source", dependencies=TRUE)'