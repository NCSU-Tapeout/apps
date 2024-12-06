-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        Library Compiler")
whatis("Version:     V-2023.12-SP5")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.synopsys.com/")
whatis("Description: The Library Compiler tool from Synopsys captures ASIC libraries and translates them into Synopsys internal database format for physical synthesis or into VHDL format for simulation.") 

help([[
Synopsys Library Compiler V-2023.12-SP5 (last updated 10/11/2024)

lc_shell

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

-- Tells Cadence Virtuso that Synopsys is installed
setenv("CDS_LOAD_ENV","CSF")

------------------------------------------------------------------------------
-- Star-RC
------------------------------------------------------------------------------
-- Command: grdgenxo, StarXtract, rapid3d

local lc_base = pathJoin(base, "lc/V-2023.12-SP5")

append_path("PATH", pathJoin(lc_base, "bin"))

-- Let's PrimeTime find LC -- INC4328179
setenv("SYNOPSYS_LC_ROOT", lc_base)

