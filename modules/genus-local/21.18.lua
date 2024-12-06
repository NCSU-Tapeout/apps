-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        GENUS")
whatis("Version:     21.18")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         http://www.cadence.com/en_US/home/tools/digital-design-and-signoff/synthesis/genus-synthesis-solution.html")
whatis("Description: Delivering the best possible productivity during RTL design and the highest quality of results (QoR) in final implementation.")
whatis("Installed on : 22 Aug 2023")

help([[
Cadence Genus v21.18 (last updated 08/22/2023)
------------------------

    genus	Genus Synthesis

These tools are licensed to NCSU for education and research use
only.  Any for-profit and/or commercial use is strictly forbidden.

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "/mnt/apps/public/COE/cadence_apps"

--setup path
prepend_path("PATH", pathJoin(base, "GENUS2118/tools.lnx86/bin"))

--application variables
--none defined
