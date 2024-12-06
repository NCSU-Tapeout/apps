whatis("Name:        Jasper")
whatis("Version:     2024.03")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/system-design-and-verification/formal-and-static-verification/jasper-gold-verification-platform.html")
whatis("Description: Smart formal verification apps incorporating machine learning to improve verification productivity.")
whatis("Installed on : 30 May 2024")

help([[
Jasper 2024.03 (last updated 04/11/2024)
------------------------

    jaspergold &   

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "/mnt/apps/public/COE/cadence_apps/"

--setup path
prepend_path("PATH", pathJoin(base, "jasper_2024.03/bin"))

--application variables
