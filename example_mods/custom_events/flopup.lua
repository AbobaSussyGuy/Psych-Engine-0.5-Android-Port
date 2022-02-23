function onEvent(name, value1, value2)
    if name == 'flopup' then
        playSound('error', 1)
        makeLuaSprite('flop','flopup',math.random(-200, 600),math.random(-450, 450))
        setObjectCamera('flop', 'other')
        addLuaSprite('flop',true)
targetDuration = tonumber(value1);
runTimer('flopremove',targetDuration,1)
            end
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'flopremove' then
removeLuaSprite('flop',false)
end
end