-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        Synopsys")
whatis("Version:     2022")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.synopsys.com/")
whatis("Description: Synopsys is at the forefront of Smart Everything with the world’s most advanced technologies for chip design, verification, IP integration, and application security testing and quality testing.")

help([[
Synopsys Suite v2022 (last updated 10/28/2022)

Milkyway, rapid3d, StarXtract, xTractor             StarRC T-2022.03-SP4

These tools are licensed to NCSU for education and research use
only.  Any for-profit and/or commercial use is strictly forbidden.
Such use could lead to legal prosecution by Synopsys and/or NCSU.

Manuals are available by visiting the following Wolftech website:
http://www.wolftech.ncsu.edu/manuals/

Application managed by WolfTech, ecehelp@ncsu.edu
Need a Synopsys application not listed? Contact us.

]])

--initial vars + license
local base = "/mnt/apps/public/COE/synopsys_apps/"
local home = os.getenv("HOME")

setenv("SNPS_BROWSER","/usr/bin/firefox")
setenv("SNPSLMD_LICENSE_FILE","27000@ece-lic-35.ece.ncsu.edu")


------------------------------------------------------------------------------
-- Star-RC
------------------------------------------------------------------------------
-- Command: grdgenxo, StarXtract, rapid3d

local starrc_base = pathJoin(base, "starrc/T-2022.03-SP4")

setenv("SNPS_STARRC", starrc_base)
setenv("STAR_RCXT_HOME_DIR", starrc_base)

append_path("PATH", pathJoin(starrc_base, "bin"))

