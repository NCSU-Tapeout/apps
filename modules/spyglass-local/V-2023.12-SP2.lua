
whatis("Name:        Synopsys Spyglass")
whatis("Version:     2023")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.synopsys.com/")
whatis("Description: Synopsys is at the forefront of Smart Everything with the world’s most advanced technologies for chip design, verification, IP integration, and application security testing and quality testing.")

help([[
Synopsys Suite v2020 (last updated 11/09/2021)
------------------------
spyglass					                        SpyGlass V-2023.12-SP2


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

prepend_path("PATH", pathJoin(base,"spyglass/V-2023.12-SP2/SPYGLASS_HOME/bin"))
--Logging
--execute {cmd="/mnt/apps/public/COE/ece/logger/addLogger.sh",modeA={"load"}}
