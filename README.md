# LMOD Modules
The setup of the required software uses the lmod package (module load). If your environment doesn't support lmod modules, please see the main repository for how to install the conda environment to support it.

## NCSU 
The environment automatically supports modules, you shouldn't need to modify the modules.

## External to NCSU
If your environment does not support the module load command, you will need to:

You will need to modify the lua files for each of the programs you are using to point to your license server, and installation directory of the software.

For example, the [apps/modules/ic-local/23.10.lua](../main/modules/ic-local/23.10.lua) for launching virtuoso:
```
--initial vars + license
setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")
local base = "~/apps/cadence_apps/"

--setup path
prepend_path("PATH", pathJoin(base, "IC231/tools/bin"))
prepend_path("PATH", pathJoin(base, "IC231/tools/dfII/bin"))

--application variables
setenv("CDS_AUTO_64BIT","ALL")
setenv("LANG","C")
setenv("CDS",pathJoin(base,"IC231"))
setenv("CDSHOME",pathJoin(base,"IC231"))
setenv("CDS_Netlisting_Mode","Analog")
```

You will need to change:
1) The `setenv("CDS_LIC_FILE","2101@ece-lic-11.ece.ncsu.edu")` to your license server
2) The `local base = "~/apps/cadence_apps/"` to be the installation directory. 
