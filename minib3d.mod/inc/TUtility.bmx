Type TUtility

	Function UpdateValue#(Current#,destination#,rate#)
	
		Current#=Current#+((destination#-Current#)*rate#)
	
		Return Current#
	
	End Function

	' Function by patmaba
	Function VectorYaw#(vx#,vy#,vz#)

		Return ATan2(-vx#,vz#)
	
	End Function

	' Function by patmaba
	Function VectorPitch#(vx#,vy#,vz#)

		Local ang#=ATan2(Sqr(vx#*vx#+vz#*vz#),vy#)-90.0

		If ang#<=0.0001 And ang#>=-0.0001 Then ang#=0
	
		Return ang#
	
	End Function



End Type
