#tag Class
Protected Class AppleTableViewDelegate
Inherits appleobject
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(alloc(classptr)))
		  MHAsownership = true
		  if RetainDict = nil then RetainDict = new Dictionary
		  RetainDict.value(id) = self
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub destructor()
		  if me.mhasownership then
		    RetainDict.Remove (id)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_accessoryButtonTappedForRowWithIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr)
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informonaccessoryButtonTappedForRowWithIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_cellForRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    dim path as new AppleIndexPath (IndexPath)
		    return  ego.Cell(path).id
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_commitEditingStyle(pid as ptr, sel as ptr, tableview as ptr, style as AppleTableViewCell.UITableViewCellEditingStyle, indexpath as ptr)
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informoncommitEditingStyle  (style, indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didDeselectRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr)
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informondidDeselectRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_didEndEditingRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informondidEndEditingRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didSelectRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr)
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informondidSelectRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_editActionsForRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As Ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informoneditActionsForRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_editingStyleForRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, indexpath as ptr) As AppleTableViewCell.UITableViewCellEditingStyle
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informoneditingStyleForRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_estimatedheightForFooterInSection32(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As single
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonestimatedheightForFooterInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_estimatedheightForFooterInSection64(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As double
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonestimatedheightForFooterInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_estimatedheightForHeaderInSection32(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As single
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonestimatedheightForHeaderInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_estimatedheightForHeaderInSection64(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As double
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonestimatedheightForHeaderInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_estimatedHeightForRowAtIndexPath32(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As single
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonestimatedheightForRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_estimatedHeightForRowAtIndexPath64(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As double
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonestimatedheightForRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_heightForFooterInSection32(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As single
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonheightForFooterInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_heightForFooterInSection64(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As double
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonheightForFooterInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_heightForHeaderInSection32(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As single
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonheightForHeaderInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_heightForHeaderInSection64(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As double
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonheightForHeaderInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_heightForRowAtIndexPath32(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As single
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonheightForRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_heightForRowAtIndexPath64(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As double
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonheightForRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_indentationLevelForRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As Integer
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonindentationLevelForRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_numberOfRowsInSection(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As integer
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.numberOfRowsInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_shouldIndentWhileEditingRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As boolean
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonshouldIndentWhileEditingRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_targetIndexPathForMoveFromRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonwillSelectRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_viewForFooterInSection(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonviewForFooterInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_viewForHeaderInSection(pid as ptr, sel as ptr, tableview as ptr, section as uinteger) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonviewForHeaderInSection  (section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_willBeginEditingRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informonwillBeginEditingRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_willDeselectRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return ego.informonwillDeselectRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willDisplayCell(pid as ptr, sel as ptr, tableview as ptr, cell as ptr, IndexPath as ptr)
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informonwillDisplayCell  (cell, indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willDisplayFooterView(pid as ptr, sel as ptr, tableview as ptr, headerview as ptr, section as uinteger)
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informonwillDisplayFooter  (headerview, section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willDisplayHeaderView(pid as ptr, sel as ptr, tableview as ptr, headerview as ptr, section as uinteger)
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    ego.informonwillDisplayHeader  (headerview, section)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_willSelectRowAtIndexPath(pid as ptr, sel as ptr, tableview as ptr, IndexPath as ptr) As ptr
		  dim ego as new AppleTableView (tableview)
		  if ego <> nil then
		    return  ego.informonwillSelectRowAtIndexPath  (indexpath)
		  end if
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    // if Observers = nil then Observers = new Dictionary
			    dim methods() as TargetClassMethodHelper
			    // //Delegate methods
			    methods.Append new TargetClassMethodHelper("tableView:willSelectRowAtIndexPath:", AddressOf impl_willSelectRowAtIndexPath, "@@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:shouldIndentWhileEditingRowAtIndexPath:", AddressOf impl_shouldIndentWhileEditingRowAtIndexPath, "c@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:didSelectRowAtIndexPath:", AddressOf impl_didSelectRowAtIndexPath, "v@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:indentationLevelForRowAtIndexPath:", AddressOf impl_indentationLevelForRowAtIndexPath, "i@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:willDisplayCell:forRowAtIndexPath:", AddressOf impl_willDisplayCell, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("tableView:editActionsForRowAtIndexPath:", AddressOf impl_editActionsForRowAtIndexPath, "@@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:accessoryButtonTappedForRowWithIndexPath:", AddressOf impl_accessoryButtonTappedForRowWithIndexPath, "v@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:willDeselectRowAtIndexPath:", AddressOf impl_willDeselectRowAtIndexPath, "@@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:didDeselectRowAtIndexPath:", AddressOf impl_didDeselectRowAtIndexPath, "v@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:viewForHeaderInSection:", AddressOf impl_viewForHeaderInSection, "@@:@i")
			    methods.Append new TargetClassMethodHelper("tableView:viewForFooterInSection:", AddressOf impl_viewForFooterInSection, "@@:@i")
			    methods.Append new TargetClassMethodHelper("tableView:willDisplayHeaderView:forSection:", AddressOf impl_willDisplayHeaderView, "v@:@@i")
			    methods.Append new TargetClassMethodHelper("tableView:willDisplayFooterView:forSection:", AddressOf impl_willDisplayFooterView, "v@:@@i")
			    methods.Append new TargetClassMethodHelper("tableView:willBeginEditingRowAtIndexPath:", AddressOf impl_willBeginEditingRowAtIndexPath, "v@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:didEndEditingRowAtIndexPath:", AddressOf impl_didEndEditingRowAtIndexPath, "v@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:editingStyleForRowAtIndexPath:", AddressOf impl_editingStyleForRowAtIndexPath, "i@:@@")
			    methods.Append new TargetClassMethodHelper("tableView:targetIndexPathForMoveFromRowAtIndexPath:toProposedIndexPath:", AddressOf impl_targetIndexPathForMoveFromRowAtIndexPath, "@@:@@@")
			    
			    
			    // Datasource methods
			    methods.Append new TargetClassMethodHelper("tableView:commitEditingStyle:forRowAtIndexPath:", AddressOf impl_commitEditingStyle, "v@:@i@")
			    // methods.Append new TargetClassMethodHelper("tableView:numberOfRowsInSection:", AddressOf impl_numberOfRowsInSection, "i@:@i")
			    // methods.Append new TargetClassMethodHelper("tableView:cellForRowAtIndexPath:", AddressOf impl_cellForRowAtIndexPath, "@@:@@")
			    
			    // methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    // methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    //
			    // methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    //
			    // methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    // methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    // methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    //
			    //
			    #if Target64Bit
			      methods.Append new TargetClassMethodHelper("tableView:heightForRowAtIndexPath:", AddressOf impl_heightForRowAtIndexPath64, "d@:@@")
			      methods.Append new TargetClassMethodHelper("tableView:estimatedHeightForRowAtIndexPath:", AddressOf impl_estimatedHeightForRowAtIndexPath64, "d@:@@")
			      methods.Append new TargetClassMethodHelper("tableView:heightForHeaderInSection:", AddressOf impl_heightForHeaderInSection64, "d@:@i")
			      methods.Append new TargetClassMethodHelper("tableView:estimatedHeightForHeaderInSection:", AddressOf impl_estimatedheightForHeaderInSection64, "d@:@i")
			      methods.Append new TargetClassMethodHelper("tableView:heightForFooterInSection:", AddressOf impl_heightForFooterInSection64, "d@:@i")
			      methods.Append new TargetClassMethodHelper("tableView:estimatedHeightForFooterInSection:", AddressOf impl_estimatedHeightForFooterInSection64, "d@:@i")
			    #elseif Target32Bit
			      methods.Append new TargetClassMethodHelper("tableView:heightForRowAtIndexPath:", AddressOf impl_heightForRowAtIndexPath32, "f@:@@")
			      methods.Append new TargetClassMethodHelper("tableView:estimatedHeightForRowAtIndexPath:", AddressOf impl_estimatedHeightForRowAtIndexPath32, "f@:@@")
			      methods.Append new TargetClassMethodHelper("tableView:heightForHeaderInSection:", AddressOf impl_heightForHeaderInSection32, "f@:@i")
			      methods.Append new TargetClassMethodHelper("tableView:estimatedHeightForHeaderInSection:", AddressOf impl_estimatedheightForHeaderInSection32, "f@:@i")
			      methods.Append new TargetClassMethodHelper("tableView:heightForFooterInSection:", AddressOf impl_heightForFooterInSection32, "f@:@i")
			      methods.Append new TargetClassMethodHelper("tableView:estimatedHeightForFooterInSection:", AddressOf impl_estimatedHeightForFooterInSection32, "f@:@i")
			    #endif
			    
			    targetID = BuildTargetClass ("XOJTableDelegate", "iOSLibUITableDelegate",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared RetainDict As dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
