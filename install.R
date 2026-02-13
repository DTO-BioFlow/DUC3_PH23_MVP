options(repos = c(CRAN = "https://cloud.r-project.org"))

url  <- "https://github.com/IFREMER-LERBL/PelHabMSFD/releases/download/v1.0/PelHabMSFD_1.0.tar.gz"
out  <- "PelHabMSFD_1.0.tar.gz"

cat("Downloading PelHabMSFD source package...\n")
download.file(url, destfile = out, mode = "wb")

cat("Checking and installing required R packages...\n")

packages <- c(
  "adespatial", "corrplot", "ggplot2", "gplots",
  "jpeg", "pastecs", "svMisc", "tcltk",
  "tcltk2", "testit", "vegan", "viridis"
)

installed <- rownames(installed.packages())
to_install <- setdiff(packages, installed)

if (length(to_install)) {
  install.packages(to_install, dependencies = TRUE,
                   Ncpus = parallel::detectCores())
} else {
  message("All dependencies already installed.")
}

cat("Installing PelHabMSFD from source...\n")

install.packages(out, repos = NULL, type = "source", dependencies = TRUE)

cat("Installation complete.\n")
