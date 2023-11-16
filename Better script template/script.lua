require "scriptable_computers"
---@diagnostic disable: lowercase-global

if STARTED ~= nil then
	if input() then
		-- Error handling
		local ran, err = pcall(onTick)
		if not ran then
			onError()
			error(err)
		end
	else
		onStop()
	end
else
	-- The place you should write your code!

	function onStart()
		-- Runs once, when the computer turns on
	end

	function onTick()
		-- Runs every tick while the computer is active
	end

	function onStop()
		-- Runs once, when the computer turns off
		-- (Example uses: Deactivating motors, etc)
	end

	function onError()
		-- This method gets called when active computer gets an error in the onTick method.
		-- You can invoke the onStop method to stop the computer when an error happens
		onStop()
	end

	-- Some things to make the script work, you generally shouldn't touch them!
	onStart()
	STARTED = true
end
