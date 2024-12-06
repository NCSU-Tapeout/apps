whatis("Name:        PEGASUS")
whatis("Version:     231")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/digital-design-and-signoff/silicon-signoff/pegasus-verification-system.html")
whatis("Description: The Pegasus system provides a massively parallel architecture. It is the first solution to combine a pipelined infrastructure with stream processing delivering near-linear scalability across 100s of CPUs. The Pegasus system’s gigascale technology enables full-chip signoff DRC in just a few hours versus days. As many designs continue to grow in complexity, the Pegasus system can scale to meet customers’ stringent time-to-market requirements.")
whatis("Installed on : 15 Oct 2024")

help([[
Cadence PEGASUS 23.14.000 ISR4 (last updated 10/16/2024)
-----------------------------------------------

pegasus -drc
pegasus -xor
pegasus -lvs

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "/mnt/apps/public/COE/cadence_apps/PEGASUS231"

--setup path
prepend_path("PATH", pathJoin(base,"tools/bin"))
prepend_path("PATH", pathJoin(base,"bin"))

--application variables
setenv("CDS_AUTO_64BIT","ALL")
setenv("PEGASUSHOME", base)

