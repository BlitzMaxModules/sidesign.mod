' spinning cube

Import sidesign.minib3d

graphics3d 800,600

cube=createcube()

cube2=createcube(cube)
moveentity cube2,1,1,1

cam=createcamera()
moveentity cam,0,0,-5

light=createlight()
moveentity light,-25,25,-50

While Not KeyHit(KEY_ESCAPE)
	turnentity cube,.1,.2,.3
	turnentity cube2,0,1,0
	updateworld
	renderworld
	Flip
Wend
