-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        Synopsys")
whatis("Version:     2022_shep")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://www.synopsys.com/")
whatis("Description: Synopsys is at the forefront of Smart Everything with the world’s most advanced technologies for chip design, verification, IP integration, and application security testing and quality testing.")

help([[
Synopsys Suite v2022_shep (last updated 10/28/2022)

custom_compiler                                     CustomCompiler T-2022.06-SP1
wv                                                  Custom WaveView T-2022.06-SP1
fm_shell -64bit, fm_shell -64bit -gui               Formality T-2022.03-SP4
icc2_shell                                          IC Compiler2 T-2022.03-SP3
icv64                                               IC Validator T-2022.03-SP3
lc_shell                                            Library Compiler V-2023.12-SP5
cck, cma, pva, xa                                   PrimeSim XA (CustomSim) T-2022.06-SP1
finesim                                             PrimeSim (FineSim) T-2022.06-SP1
hspice, hspicerf, metaencrypt, converter            PrimeSim Hspice T-2022.06-SP1
pw_shell, primewave		                    PrimeWave T-2022.06-SP1
quantumatk                                          QuantumATK T-2022.03-SP1
Milkyway, rapid3d, StarXtract, xTractor             StarRC T-2022.03-SP4
dc_shell, design_vision                             Synthesis Tools T-2022.03-SP4
swb, GENESISe, dessis, floops, svisual, sprocess    TCAD Sentaurus T-2022.03-SP2
vcs, dve                                            VCS T-2022.06-SP1
verdi, nWave, nCompareg				    Verdi T-2022.06-SP1

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


------------------------------------------------------------------------------
-- Custom Compiler
------------------------------------------------------------------------------
-- Command: custom_compiler

local custom_compiler_base = pathJoin(base, "customcompiler/T-2022.06-SP1")

setenv("SNPS_CC", custom_compiler_base)
setenv("CCDIR", custom_compiler_base)
append_path("PATH", pathJoin(custom_compiler_base, "bin"))


------------------------------------------------------------------------------
-- CustomSim(XA)
------------------------------------------------------------------------------
-- Command: xa

local custom_sim_base = pathJoin(base, "xa/T-2022.06-SP1")

setenv("SNPS_CSIM", custom_sim_base)
setenv("XA_64", "1")
append_path("PATH", pathJoin(custom_sim_base, "bin"))


------------------------------------------------------------------------------
-- Custom WaveView Advanced - reqd by Dr. Davis INC3680421
------------------------------------------------------------------------------
-- Command: cx, wv

local custom_waveview_base = pathJoin(base, "wv/T-2022.06-SP1")

setenv("SNPS_CWV", custom_waveview_base)
append_path("PATH", pathJoin(custom_waveview_base, "bin"))

------------------------------------------------------------------------------
-- Finesim 
------------------------------------------------------------------------------
-- Command: finesim

local finesim_base = pathJoin(base, "finesim/T-2022.06-SP1")

setenv("SNPS_FSIM", finesim_base)
setenv("FINESIM_HOME", finesim_base)
append_path("PATH", pathJoin(finesim_base, "bin"))

------------------------------------------------------------------------------
-- Formality
------------------------------------------------------------------------------
-- Command: fm_shell -64bit, fm_shell -64bit -gui

local fm_base = pathJoin(base, "fm/T-2022.03-SP4")

setenv("SNPS_FM", fm_base)

append_path("PATH", pathJoin(fm_base, "bin"))


------------------------------------------------------------------------------
-- Hspice
------------------------------------------------------------------------------
-- Command: hspice, hspicerf, dpmanager, dpanalyzer

local hspice_base = pathJoin(base, "hspice/T-2022.06-SP1/hspice")

setenv("HSP_HOME", hspice_base)
setenv("SNPS_HSPICE", hspice_base)
setenv("HSPICE_64", "1")
append_path("PATH", pathJoin(hspice_base, "bin"))
setenv("CDPL_HOME", pathJoin(hspice_base, "cdpl"))
append_path("PATH", pathJoin(hspice_base, "cdpl/bin"))

------------------------------------------------------------------------------
-- PrimeTime
------------------------------------------------------------------------------
-- Command: 

local pt_base = pathJoin(base, "prime/T-2022.03-SP4")

setenv("SNPS_PT", pt_base)

append_path("PATH", pathJoin(pt_base, "bin"))

------------------------------------------------------------------------------
-- PrimeWave
------------------------------------------------------------------------------
-- Command: pw_shell, primewave

local pw_base = pathJoin(base, "primewave/T-2022.06-SP1")

setenv("SNPS_PW", pw_base)

append_path("PATH", pathJoin(pw_base, "bin"))

------------------------------------------------------------------------------
-- QuantumATK
------------------------------------------------------------------------------
-- Command: quantumatk

local qatk_base = pathJoin(base, "qatk/T-2022.03-SP1")

setenv("SNPS_QATK", qatk_base)

append_path("PATH", pathJoin(qatk_base, "bin"))

------------------------------------------------------------------------------
-- VCS
------------------------------
-- Command: vcs, dve

local vcs_base = pathJoin(base, "vcs/T-2022.06-SP1")

setenv("SNPS_VCS", vcs_base)
setenv("VCS_HOME", vcs_base)
append_path("PATH", pathJoin(vcs_base, "bin"))

------------------------------------------------------------------------------
-- Sentaurus
------------------------------------------------------------------------------
-- Command: swb, svisual, snmesh, sde, tdx, etc...

local sentaurus_base = pathJoin(base, "sentaurus/T-2022.03-SP2")

setenv("STRELEASE", "current")
setenv("STROOT", sentaurus_base)
append_path("PATH", pathJoin(sentaurus_base, "bin"))
--setenv("STDB", pathJoin(homedir, "STDB"))
setenv("STDB", pathJoin(home,".synopsys"))
-- (create STB dir) -> mkdir -p $STDB
--setenv("DMW_RSH_PATH", "/usr/bin/ssh")

--fixes MIT-SHM errors -- see SolvNet 000037614
setenv("XLIB_NO_SHM","1")

------------------------------------------------------------------------------
-- ICC2
------------------------------------------------------------------------------
-- Command: icc2_shell

local icc2_base = pathJoin(base, "icc2/T-2022.03-SP3")

setenv("SNPS_ICC2", icc2_base)

append_path("PATH", pathJoin(icc2_base, "bin"))



------------------------------------------------------------------------------
-- IC Validator
------------------------------------------------------------------------------
-- Command: icv, icv_vue

local icv_base = pathJoin(base, "icvalidator/T-2022.03-SP3")
local icv_arch = "LINUX.64"

setenv("SNPS_ICV", icv_base)
setenv("ARCH1", icv_arch)
setenv("ICV_HOME_DIR", icv_base)
setenv("ICV_INCLUDES", pathJoin(icv_base, "include"))
setenv("SYNOPSYS_SYSTYPE", icv_arch)
--setenv("ICV_RSH_COMMAND", "ssh")

append_path("PATH", pathJoin(icv_base, "bin", icv_arch))


------------------------------------------------------------------------------
-- Star-RC
------------------------------------------------------------------------------
-- Command: grdgenxo, StarXtract, rapid3d

local starrc_base = pathJoin(base, "starrc/T-2022.03-SP4")

setenv("SNPS_STARRC", starrc_base)
setenv("STAR_RCXT_HOME_DIR", starrc_base)

append_path("PATH", pathJoin(starrc_base, "bin"))

------------------------------------------------------------------------------
-- Synthesis
------------------------------------------------------------------------------
-- Command: dc_shell, design_vision

local syn_base = pathJoin(base, "syn/T-2022.03-SP4")

setenv("SNPS_SYN", syn_base)
setenv("SYNOPSYS", syn_base)
append_path("PATH", pathJoin(syn_base, "bin"))

------------------------------------------------------------------------------
-- Verdi
------------------------------------------------------------------------------
-- Command: verdi, nWave, nCompareg

local verdi_base = pathJoin(base, "verdi/T-2022.06-SP1")

setenv("SNPS_VERDI", verdi_base)
setenv("VERDI_HOME", verdi_base)
append_path("PATH", pathJoin(verdi_base, "bin"))


------------------------------------------------------------------------------
-- Library Compiler
------------------------------------------------------------------------------
-- Command: lc_shell

local lc_base = pathJoin(base, "lc/V-2023.12-SP5")

append_path("PATH", pathJoin(lc_base, "bin"))


