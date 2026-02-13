# DUC3 PH1 app

![DTO-Bioflow logo](https://dto-bioflow.eu/themes/custom/skeleton/logo.svg)
<br>
[DTO-Bioflow project](https://dto-bioflow.eu/) 


## About the software
Pelagic Habitats Assessments PH2-PH3: 
see [GitHub Pages website](https://dto-bioflow.github.io/DUC3_PH23_MVP/index.html).

## Install
Install dependencies 
Run ```install.sh```

This will: 
- download PelHabMSFD from its native [repository](https://github.com/IFREMER-LERBL/PelHabMSFD) -release 2023.
- install all dependencies and PelHabMSFD

## Launch

Run ```launch.R``` to launch the GUI.

In headless environments (onyxia): 

```xvfb-run -s "-screen 0 1024x768x24" Rscript launch``` 

Notice that this will successfully launch the software but it will not render the GUI. See [GitHub Pages website](https://dto-bioflow.github.io/DUC3_PH23_MVP/architecture.html) for more info about this issue.

## Credits
This is part of DTO-Bioflow Demonstrator use case 3: pelagic biodiversity.
<br>
<i>
The DTO-Bioflow project is funded by the European Union under the Horizon Europe Programme, [Grant Agreement No. 101112823](https://cordis.europa.eu/project/id/101112823/results).
</i>
<i>
The DTO-Bioflow project is funded by the European Union under the Horizon Europe Programme, [Grant Agreement No. 101112823](https://cordis.europa.eu/project/id/101112823/results).
</i>
<br>
<br>
This demonstrator makes use of following software:
<br>
<i>
Wacquet, G., Aubert, A., Budria, A., Duflos, M., Mialet, B., Rombouts, I., & Artigas, L. F. (2023). 
PelHabMSFD [Computer software]. 
<a href="https://github.com/IFREMER-LERBL/PelHabMSFD">https://github.com/IFREMER-LERBL/PelHabMSFD</a>
</i>   

(c) Willem Boone, 2026.

