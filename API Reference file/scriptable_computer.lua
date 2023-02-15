--- @copyright FlooferLand, TheFattestCat, Donyti_Qramixy
-- This API reference file is under the MIT license, FlooferLand@2023 - Credit if redistributing!
-- ScriptableComputer's API does not fall under my copyright.
-- You don't need to credit me in your mods/creations if you use my tools! Though it would be appreciated! c:

----------------------------------------------------------------
-- ScriptableComputer & API by TheFattestCat & Donyti_Qramixy
-- API reference file written by FlooferLand
----------------------------------------------------------------

-- This API reference file is still being updated from time to time.
-- Some things might not have documentation or might be included in
-- Feel free to open up an `Issue` on my project's Github!

-- **DO NOT** bother the developers of the ScriptableComputer mod
--   - They're not the ones maintaining this API reference file.
--   - Open up an issue on this project's GitHub instead!
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

--- The Display data structure.
Display = {

	--- Gets the width of the display
	--- @return integer
	getWidth = function() return(0) end,

	--- Gets the height of the display
	--- @return integer
	getHeight = function() return(0) end,

	--- Clears the display's screen using a colour
	--- @param color string
	clear = function(color) end,

	--- Draws a pixel of color `color` at a location (`x`, `y`)
	--- @param x integer
	--- @param y integer
	--- @param color string
	drawPixel = function(x, y, color) end,
	
	--- Draws a line-based rectangle of colour `color` at the location of `x` and `y`, with a width/height of `w`/`h`
	--- @param x integer
	--- @param y integer
	--- @param w integer
	--- @param h integer
	--- @param color string
	drawRect = function(x, y, w, h, color) end,

	--- Draws a filled-in rectangle of colour `color` at the location of `x` and `y`, with a width/height of `w`/`h`
	--- @param x integer
	--- @param y integer
	--- @param w integer
	--- @param h integer
	--- @param color string
	fillRect = function(x, y, w, h, color) end,

	--- Draws a line-based circle of colour `color` at the location of `x` and `y`, with a radius of `r`
	--- @param x integer
	--- @param y integer
	--- @param r number
	--- @param color string
	drawCircle = function(x, y, r, color) end,

	--- Draws a filled-in circle of colour `color` at the location of `x` and `y`, with a radius of `r`
	--- @param x integer
	--- @param y integer
	--- @param r number
	--- @param color string
	fillCircle = function(x, y, r, color) end,
	
	--- Draws a line between two locations (`x` `y`, and `x2` `y2`) with a colour of `color`
	--- @param x  integer
	--- @param y  integer
	--- @param x2 integer
	--- @param y2 integer
	--- @param color string
	drawLine = function(x, y, x2, y2, color) end,

	--- Draws text at the location of `x` `y`, with a colour of `color`, and the text of `text`
	--- @param x integer
	--- @param y integer
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
	--- @return integer
	getClicksAllowed = function() return(0) end,
	
	--- `TODO:` Documentation missing for this function! <br/>
	---
	--- This returns a table/array structured the following way:
	--- ```Lua
	--- { x, y, "pressed"|"drag"|"released", 1|2 }
	--- ```
	--- @return table[integer, integer, string, integer]
	getClick = function() return({0,0,"pressed",1}) end,
	
	--- Sets the buffer size <br/>
	--- `n` - [1; 16]
	--- @param n integer
	setMaxClicks = function(n) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	--- @return integer
	getMaxClicks = function() return(0) end,
	
	--- Clears the click buffer
	clearClicks = function() end,
	
	--- Calculate rendering of pixels not rendering, can break well-optimized rendering
	--- "Not sure what this means, but I'm guessing it has to do with how far away the screens render" - FlooferLand
	--- @param bool boolean
	setRenderAtDistance = function(bool) end,

	--- "Not sure what this means, but I'm guessing it has to do with how far away the screens render" - FlooferLand
	--- @return boolean
	getRenderAtDistance = function() return(false) end
}

--- The StepperMotor data structure
StepperMotor = {
	--- Gets the velocity of the stepper motor
	--- @return number
	getVelocity = function() return(0) end,
	
	--- Sets the velocity of the stepper motor
	--- @param velocity number
	setVelocity = function(velocity) end,
	
	--- Get the strength of the stepper motor
	--- @return number
	getStrength = function() return(0) end,

	--- Sets the strength of the stepper motor
	--- @param strength number
	setStrength = function(strength) end,
	
	--- Gets the angle the stepper motor is at
	--- @return number
	getAngle = function() return(0) end,
	
	--- Sets the angle the stepper motor is at
	--- @param angle number|nil
	setAngle = function(angle) end,
	
	--- Returns true if the stepper motor is active, false if not
	isActive = function() end,
	
	--- Activates/deactivates the stepper motor
	--- @param active number|boolean
	setActive = function(active) end
}

--- The StepperMotor data structure
Radar = {
	-- TODO: Verify the types to make sure numbers (floats) aren't integers, and visa versa.
	--- Returns an array of { body id, horizontal angle, vertical angle, distance, force }
	--- @return table[body_id, number, number, number, number]
	getTargets = function() return({0, 0}) end,

	--- Set the angle
	--- @param angle number
	setAngle = function(angle) end,

	--- Get the angle
	--- @return number
	getAngle = function() return(0) end,

	--- Set the horizontal FoV (from 0 to Pi)
	--- @param fov number
	setHFov = function(fov) end,

	--- Get the horizontal FoV (from 0 to Pi)
	getHFov = function() end,

	--- Set the vertical FoV (from 0 to Pi)
	--- @param fov number
	setVFov = function(fov) end,

	--- Get the vertical FoV (from 0 to Pi)
	getVFov = function() end
}

--- The NetworkPort data structure
NetworkPort = {
	--- Gets how many packets the port can contain
	--- @return integer
	getMaxPacketsCount = function() return(0) end,
	
	--- Gets how many packets the port currently contains
	--- @return integer
	getPacketsCount = function() return(0) end,
	
	--- Gives the next packet to the process
	nextPacket = function() end,
	
	--- Sends some string data to the port
	--- @param data string
	send = function(data) end,
	
	--- Clears the buffered packets
	clear = function() end
}

--- The Disk data structure <br/>
--- `TODO`: Currently not finished!!!
Disk = {
	--- Creates a file at a path
	--- @param path string
	createFile = function(path) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	--- @param path string
	readFile = function(path) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	--- @param path string
	writeFile = function(path) end,
	
	--- Deletes the file at a path
	--- @param path string
	deleteFile = function(path) end,
	
	--- Returns true if there's a file at the path, else returns false
	--- @param path string
	--- @return boolean
	hasFile = function(path) return(false) end,
	
	--- Returns the size of the file at a path
	--- @param path string
	--- @return number|integer
	getFileSize = function(path) return(0) end,
	
	--- Creates a folder at a path
	--- @param path string
	createFolder = function(path) end,
	
	--- Deletes the folder at a path
	--- @param path string
	deleteFolder = function(path) end,
	
	--- Returns true if there's a folder at the path, else returns false
	--- @param path string
	--- @return boolean
	hasFolder = function(path) return(false) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	getUsedSize = function() end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	--- @param path string
	getFileList = function(path) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	--- @param path string
	getFolderList = function(path) end,
	
	--- Changes the default tracing path _(e.g. the Windows/Linux `cd` command)_
	--- @param path string
	openFolder = function(path) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	--- @return string
	getCurrentPath = function() return("") end
}

--- The Raycasting Camera data structre <br/>
RaycastingCamera = {
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	drawColor = function(display) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	drawDepth = function(display, baseColor) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	drawColorWithDepth = function(display) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute! <br/>
	-- `Original description:`  sets the rendering step (how much pixel will be rendered at draw call)
	setStep = function(int) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	getStep = function() end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	setDistance = function(num) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	getDistance = function(num) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute! <br/>
	-- `Original description:`  when low it has more details, when high it has more coverange
	setFov = function(num) end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute!
	getFov = function() end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute! <br/>
	--- `Original description:`  get pixel camera starts render from
	getNextPixel = function() end,
	
	--- `TODO:` This function hasn't been documented yet! <br/> Feel free to contribute! <br/>
	--- `Original description:`  resets that pixel to 0
	resetCounter = function() end
}


--- Get a value from a register
--- @param name string
--- @return number|boolean
function getreg(name) return(0) end

--- Set a value to a register
--- @param name string
--- @param value number|boolean
function setreg(name, value) end

--- Clear all registers
function clearregs() end

--- Returns a table of parent computers
--- @return table
function getParentComputers() return({}) end

--- Returns a table of child computers
--- @return table
function getChildComputers() return({}) end

--- Returns a table of child displays
--- @return table[Display]
function getDisplays() return({}) end

--- Returns a table of child motors
--- @return table[StepperMotor]
function getMotors() return({}) end

--- Returns a table of child radars
--- @return table[StepperMotor]
function getRadars() return({}) end

--- Returns a table of child network ports
--- @return table
function getPorts() return({}) end

--- Returns a table of child disks
--- @return table
function getDisks() return({}) end

--- Invokes some code on all the clients
--- @param code string
function clientInvoke(code) end

--- Input selector (if a color is specified);
--- Returns true if one of the selected inputs is true, else returns false
--- @param color string|nil
--- @return boolean
function input(color) return(false) end

--- If a colour is specified it returns a table of parent interactable powers;
--- If there is no color it returns a full table of powers
--- @param color string|nil
--- @return table[number]
function ninput(color) return({0}) end

-- TODO: Evaluate if this is a number, or an integer
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
