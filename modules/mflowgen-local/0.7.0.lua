-- Meta information for the module
whatis("Name:        mflowgen")
whatis("Version:     1.0")
whatis("Category:    EDA tools, VLSI design")
whatis("Description: mflowgen is a flow generator that creates physical design flows for VLSI projects.")

-- Help section for the module
help([[
mflowgen is a flow generator that creates physical design flows for various projects. 
It uses directed acyclic graphs (DAGs) to represent the stages of a flow and allows 
for customization of those flows.

For more information, visit: https://mflowgen.readthedocs.io/
]])

--initial vars + license
local base = "/opt/designkit/tools"
local home = os.getenv("HOME")


------------------------------------------------------------------------------
-- Magic
------------------------------------------------------------------------------
-- Command: magic

local mflowgen_base = pathJoin(base, "mflowgen")

append_path("PATH", mflowgen_base)

