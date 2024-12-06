-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        XCELIUM-local")
whatis("Version:     23.03")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/system-design-and-verification/simulation-and-testbench-verification/xcelium-simulator.html")
whatis("Description: Industry-leading simulation for best verification throughput.")
whatis("Installed on : 21 Aug 2023")

conflict("ic/6.18","ic/6.18-180")

help([[
Cadence XCELIUM 23.03 (last updated 08/21/2023)
----------------------------------------------

	xmsim
	xmvhdl
	xmvlog
	xrun
	xmelab
	simvision & 	SimVision debugging environment

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "~/apps/cadence_apps/"

--setup path
prepend_path("PATH", pathJoin(base,"/XCELIUM2303/tools/bin"))
prepend_path("PATH", pathJoin(base,"/XCELIUM2303/tools"))

--application variables
setenv("CDS_AUTO_64BIT","ALL")
setenv("LANG","C")
