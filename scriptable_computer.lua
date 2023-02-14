-- ScriptableComputers & API by TheFattestCat & Donyti_Qramixy
-- API reference file written by FlooferLand


--- Get a value from a register
--- @param name string
--- @returns number|boolean
function getreg(name) end

--- Set a value to a register
--- @param name string
--- @param value number|boolean
function setreg(name, value) end

--- Clear all registers
function clearregs() end

--- Returns a table of parent computers
--- @returns table
function getParentComputers() end

--- Returns a table of child computers
--- @returns table
function getChildComputers() end

--- Returns a table of child displays
--- @returns table
function getDisplays() end

--- Returns a table of child motors
--- @returns table
function getMotors() end

--- Returns a table of child radars
--- @returns table
function getRadars() end

--- Returns a table of child network ports
--- @returns table
function getPorts() end

--- Returns a table of child discks
--- @returns table
function getDisks() end

--- Invokes some code on all the clients
--- @param code string
function clientInvoke(code) end

--- Input selector (if a color is specified);
--- Returns true if one of the selected inputs is true, else returns false
--- @param color string|nil
--- @returns bool
function input(color) end

--- If a colour is specified it returns a table of parent interactable powers;
--- If there is no color it returns a full table of powers
--- @param color string|nil
--- @returns table[num]
function ninput(color) end

--- Set the power and active state of `self.interactable`
--- @param value number|boolean
function out(value) end

--- Make a Lua function from code
--- @param code string
--- @param env table|nil
--- @return function
function loadstring(code, env) return (function() end) end

--- Execute some Lua code from a string
--- @param code string
--- @param env table|nil
function execute(code, env) end


-- --- deprecated, use getParentComputers
-- function getParentComputersData() end

-- --- deprecated, use getChildComputers
-- function getChildComputersData() end

-- --- deprecated, use getDisplays
-- function getConnectedDisplaysData() end

-- --- deprecated, use getMotors
-- function getConnectedMotorsData() end

-- --- deprecated, use getRadars
-- function getConnectedRadarsData() end

