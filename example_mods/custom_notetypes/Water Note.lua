function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Water Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'waternote'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Water Note' then
		playSound('water',1)
		makeLuaSprite('water','water',0,0)
		setObjectCamera('water','other')
	    scaleObject('water', 2.5, 2.5);
		setProperty('water.alpha', 0.97);
		runTimer('watertimer',15,1)
        addMisses(1)
        setProperty('health',getProperty('health')-0.3	)
        addLuaSprite('water',true)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'watertimer' then
        removeLuaSprite('water', false)
     end
end