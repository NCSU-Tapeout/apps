whatis("Name:        Netgen")
whatis("Version:     1.5 r284")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         http://opencircuitdesign.com/netgen")
whatis("Netgen is a tool for comparing netlists, a process known as LVS, which stands for Layout vs. Schematic.") 

help([[
Netgen VLSI LVS Tool last updated 10/11/2024)

netgen

These tools are opensource. 

Manuals are available by visiting the following Wolftech website:
http://www.wolftech.ncsu.edu/manuals/

Application managed by WolfTech, ecehelp@ncsu.edu

]])

--initial vars + license
local base = "/mnt/designkits/ncsu/Sky130/tools/"
local home = os.getenv("HOME")


------------------------------------------------------------------------------
-- Magic
------------------------------------------------------------------------------
-- Command: magic

local netgen_base = pathJoin(base, "netgen")

append_path("PATH", pathJoin(netgen_base, "bin"))

