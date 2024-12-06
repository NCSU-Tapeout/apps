-- Copyright 2024 North Carolina State University. Added on: 2024-10-17

whatis("Name:        Synopsys")
whatis("Version:     2022")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.synopsys.com/")
whatis("Description: Synopsys is at the forefront of Smart Everything with the world¿s most advanced technologies for chip design, verification, IP integration, and application security testing and quality testing.")

help([[
Synopsys Suite v2022 (last updated 10/28/2022)

-custom_compiler                                     CustomCompiler T-2022.06-SP1
-icc2_shell                                          IC Compiler2 T-2022.03-SP3
icv64                                               IC Validator T-2022.03-SP3
Milkyway, rapid3d, StarXtract, xTractor             StarRC T-2022.03-SP4
dc_shell, design_vision                             Synthesis Tools T-2022.03-SP4
vcs, dve                                            VCS T-2022.06-SP1

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

-- Tells Cadence Virtuso that Synopsys is installed
setenv("CDS_LOAD_ENV","CSF")


-------------------------------------------------------------------------------
--- VCS
-------------------------------
--- Command: vcs, dve

local vcs_base = pathJoin(base, "vcs/T-2022.06-SP1")

setenv("SNPS_VCS", vcs_base)
setenv("VCS_HOME", vcs_base)
append_path("PATH", pathJoin(vcs_base, "bin"))


