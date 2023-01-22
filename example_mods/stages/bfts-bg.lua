function onCreate()
	
        makeLuaSprite('bg-back', 'forest')
	addLuaSprite('bg-back')
	scaleObject('bg-back', 1.4, 1.4)
	makeLuaSprite('bg-front', 'potsyks-car', true)
        addLuaSprite('bg-front', true) 
	scaleObject('bg-front', 1.4, 1.5)
        setObjectOrder('boyfriendGroup', getObjectOrder('bg-front')+1)
	close(true)
end