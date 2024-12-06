whatis("Name:        EMX")
whatis("Version:     6.3.10")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.integrandsoftware.com/aboutemx.php")
whatis("Description: EMX is an electromagnetic simulator for high-frequency, RF, and mixed-signal integrated circuits.")
whatis("Installed on : 28 Sept 2022")

help([[
Cadence EMX 6.3.10 (last updated 09/28/2022)
------------------------

	emx 
	modelgen

These tools are licensed to NCSU for education and research use 
only.  Any for-profit and/or commercial use is strictly forbidden.  

Application managed by WolfTech, ecehelp@ncsu.edu
]])

--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "/mnt/apps/public/COE/cadence_apps"
setenv("EMXHOME",pathJoin(base,"INTEGRAND63"))
setenv("PARAVIEWHOME",pathJoin(base,"ParaView-5.7.0-MPI-Linux-Python3.7-64bit"))


--setup path
prepend_path("PATH", pathJoin(base, "INTEGRAND63/bin"))
prepend_path("PATH", pathJoin(base, "INTEGRAND63/ParaView-5.7.0-MPI-Linux-Python3.7-64bit/bin"))

