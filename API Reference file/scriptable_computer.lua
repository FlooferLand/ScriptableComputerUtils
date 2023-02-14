-- ScriptableComputer & API by TheFattestCat & Donyti_Qramixy
-- API reference file written by FlooferLand

-- This API reference file is still being updated from time to time.
-- Some things might not have documentation or might be included in
-- Feel free to open up an `Issue` on my project's Github!

-- /!\ **DO NOT** bother the developers of the ScriptableComputer mod
-- --- They're not the ones maintaining this API reference file.
-- --- Open up an issue on this project's GitHub instead!
-- https://github.com/FlooferLand/ScriptableComputerUtils/issues

-- /!\ Some functions might return something /!\
-- This is so it won't provide a warning regarding return types in your IDE
-- Do NOT expect to be able to test the functions outside the game
-- This project only contains documentation and autocompletion

----------------------------------------------
-- Some maybe-useful info about their API is
-- also available on my project's Github:
-- https://github.com/FlooferLand/ScriptableComputerUtils
----------------------------------------------

--- The Display data structure
Display = {

	--- Gets the width of the display
	--- @returns number
	getWidth = function() end,

	--- Gets the height of the display
	--- @returns number
	getHeight = function() end,

	--- Clears the display's screen using a colour
	--- @param color string
	clear = function(color) end,

	--- Draws a pixel of color `color` at a location (`x`, `y`)
	--- @param x number
	--- @param y number
	--- @param color string
	drawPixel = function(x, y, color) end,
	
	--- Draws a line-based rectangle of colour `color` at the location of `x` and `y`, with a width/height of `w`/`h`
	--- @param x number
	--- @param y number
	--- @param w number
	--- @param h number
	--- @param color string
	drawRect = function(x, y, w, h, color) end,

	--- Draws a filled-in rectangle of colour `color` at the location of `x` and `y`, with a width/height of `w`/`h`
	--- @param x number
	--- @param y number
	--- @param w number
	--- @param h number
	--- @param color string
	fillRect = function(x, y, w, h, color) end,

	--- Draws a line-based circle of colour `color` at the location of `x` and `y`, with a radius of `r`
	--- @param x number
	--- @param y number
	--- @param r number
	--- @param color string
	drawCircle = function(x, y, r, color) end,

	--- Draws a filled-in circle of colour `color` at the location of `x` and `y`, with a radius of `r`
	--- @param x number
	--- @param y number
	--- @param r number
	--- @param color string
	fillCircle = function(x, y, r, color) end,
	
	--- Draws a line between two locations (`x` `y`, and `x2` `y2`) with a colour of `color`
	--- @param x number
	--- @param y number
	--- @param x2 number
	--- @param y2 number
	--- @param color string
	drawLine = function(x, y, x2, y2, color) end,

	--- Draws text at the location of `x` `y`, with a colour of `color`, and the text of `text`
	--- @param x number
	--- @param y number
	--- @param text string
	--- @param color string
	drawText = function(x, y, text, color) end,
	
	--- Optimize the image if you don't want to use clear method for a long time <br/>
	---
	--- "Not sure how this works, but it's part of the official docs so feel free to contribute a description" - FlooferLand
	optimize = function() end,
	
	--- Updates the screen using all of your changes
	flush = function() end,
	
	--- Activate/deactivate the sensor screen,
	--- @param bool boolean
	setClicksAllowed = function(bool) end,
	
	--- `TODO:` Documentation missing for this function!
	--- @return number
	getClicksAllowed = function() return(0) end,
	
	--- `TODO:` Documentation missing for this function! <br/>
	---
	--- This returns a table/array structured the following way:
	--- ```Lua
	--- { x, y, "pressed"|"drag"|"released", 1|2 }
	--- ```
	--- @return table[number, number, string, number]
	getClick = function() return({0,0, "pressed", 1}) end,
	
	-- setMaxClicks(n: int [1; 16]), -- sets the buffer size
	
	--- `TODO:` Documentation missing for this function! <br/>
	--- @return number
	getMaxClicks = function() return(0) end,
	
	--- Clears the click buffer
	clearClicks = function() end,
	
	--- Calculate rendering of pixels not rendering, can break well-optimized rendering
	--- "Not sure what this means, but I'm guessing it has to do with how far away the screens render" - FlooferLand
	--- @param bool boolean
	setRenderAtDistance = function(bool) end,

	--- "Not sure what this means, but I'm guessing it has to do with how far away the screens render" - FlooferLand
	--- @param bool boolean
	getRenderAtDistance = function() return(false) end
}


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
--- @returns table[Display]
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
--- @returns table[number]
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

