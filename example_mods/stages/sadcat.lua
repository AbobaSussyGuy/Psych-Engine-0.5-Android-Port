function onCreate()
	-- background shit
	makeLuaSprite('sadbg', 'sadbg', -600, -300);
	setScrollFactor('sadbg', 0.9, 0.9);
	
	makeLuaSprite('sadbgfront', 'sadbgfront', -650, 600);
	setScrollFactor('sadbgfront', 0.9, 0.9);
	scaleObject('sadbgfront', 1.1, 1.1);

	addLuaSprite('sadbg', false);
	addLuaSprite('sadbgfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end