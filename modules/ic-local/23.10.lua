-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        IC-local")
whatis("Version:     231, v000")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/custom-ic-analog-rf-design.html")
whatis("Description: Save time with optimized, automated design platforms for complex ICs and RF/microwave solutions.")
whatis("Installed on : 21 Aug 2023")

help([[
Cadence IC 23.10 (last updated 08/21/2023)
------------------------

    virtuoso &     Mixed digital, analog, microwave,IC Design tool
    layout &       Basic layout with interactive DRC
    layoutPlus &   Basic layout plus automated design tools

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "/mnt/apps/public/COE/cadence_apps"

--setup path
prepend_path("PATH", pathJoin(base, "IC231/tools/bin"))
prepend_path("PATH", pathJoin(base, "IC231/tools/dfII/bin"))

--application variables
setenv("CDS_AUTO_64BIT","ALL")
setenv("LANG","C")
setenv("CDS",pathJoin(base,"IC231"))
setenv("CDSHOME",pathJoin(base,"IC231"))
setenv("CDS_Netlisting_Mode","Analog")
