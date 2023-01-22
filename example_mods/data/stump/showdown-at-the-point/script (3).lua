function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'pocyk-bfts')
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-Steklobaba')
	setProperty('skipCountdown', true)
end

function onCreatePost()
	setObjectOrder('bg-back', 1)
	setObjectOrder('dadGroup', 2)
	setObjectOrder('gfGroup', 3)
	setObjectOrder('car', 4)
	setObjectOrder('boyfriendGroup', 5)

	setScrollFactor('dad', 1, 1)
	setScrollFactor('gf', 1, 1)
	setScrollFactor('car', 1.2, 1)
	setScrollFactor('boyfriend', 1.25, 1)
end

function onSongStart()
	cameraFlash('game', '000000', 1.5, true)
end


function onStepHit()
	if curStep == 64 then
		objectPlayAnimation('car', 'car1', true)
	elseif curStep == 128 then
		objectPlayAnimation('car', 'car2', true)
	elseif curStep == 192 or 198 or 204 then
		objectPlayAnimation('car', 'car2-shot', true)
	elseif curStep == 224 then
		objectPlayAnimation('car', 'car3', true)
	elseif curStep == 230 then
		objectPlayAnimation('car', 'car4', true)
	elseif curStep == 236 then
		objectPlayAnimation('car', 'car5', true)
	end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Steklobaba Bullet' or 'Agaliy Bullet' then
		objectPlayAnimation('car', 'car5-shot', true)
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Steklobaba Bullet' or 'Agaliy Bullet' then
		objectPlayAnimation('car', 'car5-shot', true)
	end
end

function onUpdate()
	if mustHitSection == false then
		doTweenZoom('zoom-dad', 'camGame', 0.7, 0.7, 'SineOut')
	elseif mustHitSection == true then
		doTweenZoom('zoom-bf', 'camGame', 0.65, 0.7, 'SineOut')
	end
end