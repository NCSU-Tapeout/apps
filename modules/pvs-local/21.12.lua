-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        PVS")
whatis("Version:     21.12")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/digital-design-and-signoff/silicon-signoff/physical-verification-system-for-fast-final-signoff.html")
whatis("Description: Cadence® Physical Verification System (PVS) is the premier signoff solution enabling in-design and back-end physical verification, constraint validation, and reliability checking.")
whatis("Installed on : 29 Sept 2022")

help([[
Cadence Physical Verification System v21.14 (last updated 09/29/2022)
------------------------

    pvs		Physical Verification

These tools are licensed to NCSU for education and research use
only.  Any for-profit and/or commercial use is strictly forbidden.

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "/mnt/apps/public/COE/cadence_apps"

--setup path
prepend_path("PATH", pathJoin(base, "PVS211/bin"))
prepend_path("PATH", pathJoin(base, "PVS211/tools/bin"))

--application variables
--none defined
