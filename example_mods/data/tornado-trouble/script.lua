function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'fighter')
	setProperty('skipCountdown', true)
	setProperty('gf.visible', 0)
end

function onCreatePost()
    doTweenAlpha('1', 'iconP1', 0, 0.01, 'linear')
    doTweenAlpha('2', 'iconP2', 0, 0.01, 'linear')
    doTweenAlpha('3', 'healthBar', 0, 0.01, 'linear')
    doTweenAlpha('4', 'healthBarBG', 0, 0.01, 'linear')
    doTweenAlpha('5', 'rating', 0, 0.01, 'linear')

	doTweenZoom('zoom-preload', 'camGame', 1.4, 0.001, 'sineIn')

	makeAnimatedLuaSprite('cutscene-fighter', 'characters/FIGHTER-cutscene', 850, 0)
	setObjectCamera('cutscene-fighter', 'hud')
	addAnimationByPrefix('cutscene-fighter', 'speech', 'FIGHTER-speech', 24, false)
	addLuaSprite('cutscene-fighter', true)
	doTweenAlpha('fighter1', 'cutscene-fighter', 0, 0.01, 'SineIn')

	makeLuaSprite('the-devil-himself', 'THE DEVIL HIMSELF', 0, 0)
	setObjectCamera('the-devil-himself', 'hud')
	addLuaSprite('the-devil-himself', true)
	doTweenAlpha('devil1', 'the-devil-himself', 0, 0.01, 'SineIn')

	makeLuaText('subtitle1', 'HOW TO BEAT UP A', 1000, 145, 500)
	setTextSize('subtitle1', 35)
	addLuaText('subtitle1')
	makeLuaText('subtitlebig', 'SNOWMAN', 1000, 145, 530)
	setTextSize('subtitlebig', 82)
	setTextColor('subtitlebig', '9a0000')
	addLuaText('subtitlebig')
	doTweenAlpha('text1', 'subtitle1', 0, 0.01, 'SineIn')
	doTweenAlpha('textbig1', 'subtitlebig', 0, 0.01, 'SineIn')

	makeLuaSprite('black', 'black', 0, 0)
	setObjectCamera('black', 'hud')
	addLuaSprite('black', true)
	scaleObject('black', 2, 2)
end

function onSongStart()
	doTweenAlpha('black1', 'black', 0, 4, 'linear')
	doTweenZoom('zoom-songstart', 'camGame', 0.9, 6, 'sineOut')
end

function onStepHit()
	if curStep == 64 then
		doTweenAlpha('6', 'iconP1', 1, 0.7, 'SineOut')
    	doTweenAlpha('7', 'iconP2', 1, 0.7, 'SineOut')
    	doTweenAlpha('8', 'healthBar', 1, 0.7, 'SineOut')
    	doTweenAlpha('9', 'healthBarBG', 1, 0.7, 'SineOut')
    	doTweenAlpha('10', 'rating', 1, 0.7, 'SineOut')
    elseif curStep == 190 then
    	objectPlayAnimation('cutscene-fighter', 'speech', true)
	elseif curStep == 192 then
		doTweenX('cutscene-fighter-move', 'cutscene-fighter', 650, 0.5, 'SineOut')
		doTweenAlpha('text2', 'subtitle1', 1, 0.1, 'SineOut')
		doTweenAlpha('fighter2', 'cutscene-fighter', 0.6, 0.15, 'SineOut')
	elseif curStep == 201 then
		doTweenAlpha('textbig2', 'subtitlebig', 1, 0.05, 'SineOut')
	elseif curStep == 208 then
		doTweenAlpha('text3', 'subtitle1', 0, 0.15, 'SineIn')
		doTweenAlpha('textbig3', 'subtitlebig', 0, 0.15, 'SineIn')
		doTweenAlpha('fighter3', 'cutscene-fighter', 0, 0.15, 'SineIn')
	elseif curStep == 709 then
		setTextSize('subtitle1', 50)
		setTextString('subtitle1', 'COME HERE!')
		doTweenAlpha('text4', 'subtitle1', 1, 0.1, 'SineOut')
	elseif curStep == 718 then
		doTweenAlpha('text5', 'subtitle1', 0, 0.3, 'SineIn')
	elseif curStep > 201 and curStep < 215 then
		if curStep % 2 == 1 then
			setTextColor('subtitlebig', '9a0000')
		elseif curStep % 2 == 0 then
			setTextColor('subtitlebig', '800000')
		end
	elseif curStep == 1179 then
		setProperty('health', 0.05)
	elseif curStep == 1187 then
		doTweenAlpha('devil1', 'the-devil-himself', 0.5, 1, 'SineOut')
		doTweenX('funi-zoom', 'the-devil-himself.scale', 1.1, 3)
		doTweenY('funi-zoom2', 'the-devil-himself.scale', 1.1, 3)
	elseif curStep == 1205 then
		doTweenAlpha('devil2', 'the-devil-himself', 0, 1.5, 'SineIn')
	end
end