-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        CATAPULT")
whatis("Version:     2024.1")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://eda.sw.siemens.com/en-US/ic/catapult-high-level-synthesis/")
whatis("Description: Catapult has the broadest portfolio of hardware design solutions for C++ and SystemC-based High-Level Synthesis (HLS). Catapult's physically-aware, multi-VT mode, with Low-Power estimation and optimization, plus a range of leading Verification solutions make Catapult HLS more than just \"C to RTL\".")

help([[
MentorGraphics Catapult 2024.1
-------------------------------
Use the following command(s) to start

catapult -product ultra		Catapult Ultra
catapult -product hls		Catapult HLS
catapult -product cformal	Catapult Formal
catapult -product da		Catapult Design Analyzer
catapult -product lb		Catapult Library Builder

NOTE: To invoke Catapult in non-GUI mode, include the -shell switch.
For example: catapult -shell -product ultra

Application(s) Maintained by ECE,
send problem reports to ecehelp@ncsu.edu
]])

--initial vars + license
local base = "/mnt/apps/public/COE/mg_apps/catapult2024.1/Mgc_home/"
setenv("MGLS_LICENSE_FILE", "1717@ece-lic-32.ece.ncsu.edu")
setenv("SALT_LICENSE_SERVER", "1717@ece-lic-32.ece.ncsu.edu")

--setenv("MGLS_LICENSE_FILE", pathJoin(base, "licenses/license.dat"))

--SETUP PATH
prepend_path("PATH", pathJoin(base, "bin"))

--application variables
--setenv("MODELSIM_HOME", base)
--setenv("MODEL_TECH", pathJoin(base, "bin"))
--setenv("MODELSIM", pathJoin(base, "modelsim.ini"))

