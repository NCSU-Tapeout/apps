-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        INNOVUS")
whatis("Version:     21.19")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/digital-design-and-signoff/soc-implementation-and-floorplanning/innovus-implementation-system.html")
whatis("Description: Meet PPA and TAT requirements at advanced nodes.")
whatis("Installed on : 01 Aug 2024")

help([[
Cadence INNOVUS 21.19 (last updated 08/01/2024)
------------------------

    innovus &      Innovus Implementation System

These tools are licensed to NCSU for education and research use
only.  Any for-profit and/or commercial use is strictly forbidden.

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")

--setup path
prepend_path("PATH","/mnt/apps/public/COE/cadence_apps/INNOVUS2119/tools/bin")

--application variables
