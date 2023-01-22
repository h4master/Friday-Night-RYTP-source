function onCreate()
   	makeLuaSprite('bg1','tb-back',-230,-260)
	setScrollFactor('bg1',0.5,0.5)
	addLuaSprite('bg1')
	scaleObject('bg1', 0.6, 0.6)
   	makeLuaSprite('bg2','borsh-is-fucking-dead',150,390)
	setScrollFactor('bg2',0.6,0.6)
	addLuaSprite('bg2')
	scaleObject('bg2', 0.6, 0.6)
        makeAnimatedLuaSprite('truck', 'TruckFOF', 100, -650);
	addAnimationByPrefix('truck', 'rain', 'Truck', 24, true)
	objectPlayAnimation('truck', 'rain', true)
	setScrollFactor('truck',0.6,0.6)
	addLuaSprite('truck', false);
	scaleObject('truck', 0.7, 0.7)
   	makeLuaSprite('fg','Vignette',-100,-50)
	setScrollFactor('fg',0.0,0.0)
	addLuaSprite('fg', true)
	scaleObject('fg', 1.5, 1.3)
end
function onCreatePost()
	setScrollFactor('dad',0.7,0.7)
setProperty('gf.visible', false);

end