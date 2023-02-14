-- ScriptableComputers & it's API by TheFattestCat & Donyti_Qramixy
-- API reference file written by FlooferLand

-- Check out ScriptableComputers at (https://steamcommunity.com/sharedfiles/filedetails/?id=2821133117)
-- You can use this file to get autocompletion for the mod by importing it using `require`
-- (Additionally, check out my discussion thread at https://steamcommunity.com/workshop/filedetails/discussion/2821133117/3768986428634401869)


--- get value from register
--- @param name string
--- @returns [number|bool]
function getreg(name) end

--- set value to register
--- @param name string
--- @param value number|bool
function setreg(name, value) end

--- clear all registers
function clearregs() end

--- returns table of parent computers datas
--- @returns table
function getParentComputers() end

--- returns table of child computers datas
--- @returns table
function getChildComputers() end

--- returns table of child displays datas
--- @returns table
function getDisplays() end

--- returns table of child motors datas
--- @returns table
function getMotors() end

--- returns table of child radars datas
--- @returns table
function getRadars() end 

--- returns table of child network ports datas
--- @returns table
function getPorts() end

--- returns table of child discks datas
--- @returns table
function getDisks() end

--- performs invokation some code on clients
--- @param code string
function clientInvoke(code) end

--- input selector (if color specified);
--- returns true if one on selected inputs is true else returns false
--- @param color string|nil
--- @returns bool
function input(color) end

--- if color specified returns table of parent interactable powers;
--- if no color -- returns full table of powers
--- @param color string|nil
--- @returns table[num]
function ninput(color) end

--- set power and active state of self.interactable
--- @param value number|boolean
function out(value) end 

--- make function from code
--- @param code string
--- @param env table|nil
--- @return function
function loadstring(code, env) return (function() end) end

--- execute string code
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

