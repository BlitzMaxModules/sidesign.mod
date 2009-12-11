' spinning cube

Import sidesign.minib3d

graphics3d 800,600

cube=createcube()

scaleentity cube,1,1,1

cube2=createcube(cube)
scaleentity cube2,1,2,1
moveentity cube2,0,0,3

cam=createcamera()
moveentity cam,0,0,-10

'moveentity cube,0,0,25

light=createlight()
moveentity light,-25,25,-50

While Not KeyHit(KEY_ESCAPE)
	turnentity cube,.1,.2,.3
	turnentity cube2,0,1,0
	updateworld
	renderworld
	Flip
Wend
