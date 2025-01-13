whatis("Name:        XCELIUM")
whatis("Version:     24.03")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/system-design-and-verification/simulation-and-testbench-verification/xcelium-simulator.html")
whatis("Description: Industry-leading simulation for best verification throughput.")
whatis("Installed on : 16 Apr 2024")

conflict("ic/6.18","ic/6.18-180")

help([[
Cadence XCELIUM 24.03.000 (last updated 04/16/2024)
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
local base = "/mnt/apps/public/COE/cadence_apps"

--setup path
prepend_path("PATH", pathJoin(base,"XCELIUMTEST/tools/dfII/bin"))
prepend_path("PATH", pathJoin(base,"XCELIUMTEST/tools/verilog/bin"))
prepend_path("PATH", pathJoin(base,"XCELIUMTEST/tools/bin"))
prepend_path("PATH", pathJoin(base,"XCELIUMTEST/tools/bin/64bit"))
--prepend_path("PATH", pathJoin(base,"/VMANAGER2403/bin"))
-- prepend_path("PATH", pathJoin(base,"/XCELIUM2403/tools"))

--application variables
setenv("CDS_AUTO_64BIT","ALL")
setenv("LANG","C")
