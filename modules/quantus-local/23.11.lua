-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        QUANTUS")
whatis("Version:     231")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.cadence.com/en_US/home/tools/digital-design-and-signoff/silicon-signoff/quantus-extraction-solution.html")
whatis("Description: The Cadence Quantus Extraction Solution is the industry’s most trusted signoff parasitic extraction tool, leading in advanced-node design adoptions and on-time tapeout deliveries. This single, unified tool supports both cell-level and transistor-level extractions during design implementation and signoff. It is foundry certified down to 2nm and is an essential component of our in-design methodology, working seamlessly with the Innovus Implementation System and Virtuoso platform.")
whatis("Installed on : 15 Oct 2024")

help([[
Cadence QUANTUS 23.11.000 ISR1 (last updated 10/16/2024)
-----------------------------------------------

quantus -cmd <command script> -log <log file>

check_spef: Verify the generated SPEF file for correctness.
spef_to_spice: Convert SPEF to SPICE for simulation purposes.
    

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "/mnt/apps/public/COE/cadence_apps/QUANTUS231"

--setup path
prepend_path("PATH", pathJoin(base,"bin"))

--application variables
setenv("CDS_AUTO_64BIT","ALL")
setenv("QUANTUSHOME", base)
setenv("QRC_HOME", base)

--RHEL8 issue see https://support.cadence.com/apex/ArticleAttachmentPortal?id=a1OPP000000TeYL2A0&pageName=ArticleContent
setenv("OA_UNSUPPORTED_PLAT", "linux_rhel70_gcc93x")
