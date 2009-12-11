Type TPivot Extends TEntity

	Method New()
	
		If LOG_NEW
			DebugLog "New TPivot"
		EndIf
	
	End Method
	
	Method Delete()
	
		If LOG_DEL
			DebugLog "Del TPivot"
		EndIf
	
	End Method

	Method CopyEntity:TPivot(parent_ent:TEntity=Null)

		' new piv
		Local piv:TPivot=New TPivot
		
		Clone(piv,parent_ent)
		
		piv.cull_radius#=cull_radius#
		piv.radius_x#=radius_x#
		piv.radius_y#=radius_y#
		piv.box_x#=box_x#
		piv.box_y#=box_y#
		piv.box_z#=box_z#
		piv.box_w#=box_w#
		piv.box_h#=box_h#
		piv.box_d#=box_d#
		piv.pick_mode=pick_mode
		piv.obscurer=obscurer
		
		Return piv

	End Method
	
	Method FreeEntity()
	
		Super.FreeEntity() 
			
	End Method
	
	Function CreatePivot:TPivot(parent_ent:TEntity=Null)

		Local piv:TPivot=New TPivot
		piv.class$="Pivot"
		
		piv.AddParent(parent_ent:TEntity)
		piv.EntityListAdd(entity_list)

		' update matrix
		piv.UpdateMat()

		Return piv

	End Function
		
	Method Update()

	End Method

End Type
