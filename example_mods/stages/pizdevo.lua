function onCreate()
	
        makeLuaSprite('bg-back', 'tornado-sky')
	addLuaSprite('bg-back')
	scaleObject('bg-back', 1, 1)

	makeLuaSprite('bg-front', 'tornado-buildings')
        addLuaSprite('bg-front') 
	scaleObject('bg-front', 1.4, 1.4)

        makeLuaSprite('bg-fronter', 'tornado-pizdevo')
        addLuaSprite('bg-fronter')
        scaleObject('bg-fronter', 1.4, 1.4)

	close(true)
end