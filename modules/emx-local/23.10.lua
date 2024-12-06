whatis("Name:        EMX")
whatis("Version:     23.10.000")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.integrandsoftware.com/aboutemx.php")
whatis("Description: EMX is an electromagnetic simulator for high-frequency, RF, and mixed-signal integrated circuits.")
whatis("Installed on : 21 Aug 2023")

help([[
Cadence EMX 23.10.000 (last updated 08/21/2023)
------------------------

	emx 
	modelgen

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
setenv("EMX_GDSVIEW_INDIRECT","0")
setenv("MESA_GL_VERSION_OVERRIDE","3.3")

local base = "/mnt/apps/public/COE/cadence_apps"
setenv("EMXHOME",pathJoin(base,"EMX20231"))
setenv("PARAVIEWHOME",pathJoin(base,"ParaView-5.7.0-MPI-Linux-Python3.7-64bit"))

--setup path
prepend_path("PATH", pathJoin(base, "EMX20231/bin"))
prepend_path("PATH", pathJoin(base, "EMX20231/ParaView-5.7.0-MPI-Linux-Python3.7-64bit/bin"))
