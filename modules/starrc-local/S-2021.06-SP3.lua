-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        Synopsys")
whatis("Version:     2021")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.synopsys.com/")
whatis("Description: Synopsys is at the forefront of Smart Everything with the world’s most advanced technologies for chip design, verification, IP integration, and application security testing and quality testing.")

help([[
Synopsys Suite v2021 (last updated 12/10/2021)

Milkyway, rapid3d, StarXtract, xTractor             StarRC S-2021.06-SP3

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

--fixes MIT-SHM errors
setenv("XLIB_NO_SHM","1")

--Set the PATH to each of the application suites
--place finesim before hspice or wrong metaencrypt path called (if both installed)
prepend_path("PATH", pathJoin(base,"starrc/S-2021.06-SP3/bin"))


