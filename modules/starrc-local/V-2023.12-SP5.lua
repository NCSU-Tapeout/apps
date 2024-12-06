-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        StarRC")
whatis("Version:     V-2023.12-SP5")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.synopsys.com/")
whatis("Description: Synopsys StarRC™, the Gold standard parasitic extraction solution, is a key component of the Synopsys Digital Design and the Synopsys Custom Design Families. Synopsys StarRC provides a silicon-accurate and high-performance extraction solution for SoC, custom digital, analog/mixed-signal, memory and 3DIC designs. The Synopsys StarRC solution offers modeling of physical effects for advanced process technologies, including FinFET technologies at 16nm, 14nm, 10nm, 7nm, 5nm, 3nm and beyond. Its seamless integration with industry standard digital and custom implementation systems, physical verification timing, signal integrity, power, thermal and circuit simulation flows deliver unmatched ease-of-use and productivity to speed design closure and signoff verification") 

help([[
Synopsys StarRC V-2023.12-SP5 (last updated 10/11/2024)

Milkyway 
rapid3d
StarXtract
xTractor

These tools are licensed to NCSU for education and research use
only.  Any for-profit and/or commercial use is strictly forbidden.
Such use could lead to legal prosecution by Synopsys and/or NCSU.

Manuals are available by visiting the following Wolftech website:
http://www.wolftech.ncsu.edu/manuals/

Application managed by WolfTech, ecehelp@ncsu.edu
Need a Synopsys application (or version) not available in Module? Contact us.

]])

--initial vars + license
local base = "/mnt/apps/public/COE/synopsys_apps/"
local home = os.getenv("HOME")
setenv("SNPS_BROWSER","/usr/bin/firefox")
setenv("SNPSLMD_LICENSE_FILE","27000@ece-lic-35.ece.ncsu.edu")

--fixes MIT-SHM errors
setenv("XLIB_NO_SHM","1")

------------------------------------------------------------------------------
-- Star-RC
------------------------------------------------------------------------------
-- Command: grdgenxo, StarXtract, rapid3d

local starrc_base = pathJoin(base, "starrc/V-2023.12-SP5")

-- setenv("SNPS_STARRC", starrc_base)
-- setenv("STAR_RCXT_HOME_DIR", starrc_base)

append_path("PATH", pathJoin(starrc_base, "bin"))

