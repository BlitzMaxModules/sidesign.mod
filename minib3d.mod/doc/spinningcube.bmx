' spinning cube

Import sidesign.minib3d

graphics3d 800,600

cube=createcube()

cam=createcamera()
moveentity cam,0,0,-10

light=createlight()
moveentity light,-25,25,-50

While Not KeyHit(KEY_ESCAPE)
	turnentity cube,.1,.2,.3
	updateworld
	renderworld
	Flip
Wend
