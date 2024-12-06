whatis("Name:        Magic")
whatis("Version:     8.3-497")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         http://opencircuitdesign.com/magic")
whatis("Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow.") 

help([[
Magic VLSI Layout Tool last updated 10/11/2024)

magic

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

local magic_base = pathJoin(base, "magic")

append_path("PATH", pathJoin(magic_base, "bin"))

