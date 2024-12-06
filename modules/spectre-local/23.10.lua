-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        SPECTRE-local")
whatis("Version:     231")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/custom-ic-analog-rf-design/circuit-simulation/spectre-simulation-platform.html")
whatis("Description: Block-level, chip-level, and mixed-signal simulation.")
whatis("Installed on : 21 Aug 2023")

help([[
Cadence SPECTRE 23.10.063 (last updated 08/21/2023)
-----------------------------------------------

    spectre <input file> &    Spectre circuit simulator
    relxpert

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")

--setup path
prepend_path("PATH","~/apps/cadence_apps/SPECTRE231/tools/bin")
prepend_path("PATH","~/apps/cadence_apps/SPECTRE231/bin")
prepend_path("PATH","~/apps/cadence_apps/SPECTRE231/tools/mdl/bin")

--application variables
setenv("CDS_AUTO_64BIT","ALL")
setenv("MMSIMHOME","~/apps/cadence_apps/SPECTRE231")
