#tag Class
Protected Class AppleTableViewCell
Inherits AppleView
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(style as UITableViewCellStyle, reuseIdentifier as text = "")
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithStyle (alloc(Classptr), style, reuseIdentifier))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getaccessoryType Lib UIKitLibName Selector "accessoryType" (id as ptr) As UITableViewCellAccessoryType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getaccessoryView Lib UIKitLibName Selector "accessoryView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function geteditingAccessoryType Lib UIKitLibName Selector "editingAccessoryType" (id as ptr) As UITableViewCellAccessoryType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function geteditingAccessoryView Lib UIKitLibName Selector "editingAccessoryView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function geteditingStyle Lib UIKitLibName Selector "editingStyle" (id as ptr) As UITableViewCellEditingStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getfocusStyle Lib UIKitLibName Selector "focusStyle" (id as ptr) As UITableViewCellFocusStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getHighlighted Lib UIKitLibName Selector "isHighlighted" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getImageView Lib UIKitLibName Selector "imageView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindentationLevel Lib UIKitLibName Selector "indentationLevel" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindentationWidth Lib UIKitLibName Selector "indentationWidth" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindentationWidth32 Lib UIKitLibName Selector "indentationWidth" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getmultipleSelectionBackgroundView Lib UIKitLibName Selector "multipleSelectionBackgroundView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getselected Lib UIKitLibName Selector "isSelected" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getselectedBackgroundView Lib UIKitLibName Selector "selectedBackgroundView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getselectionStyle Lib UIKitLibName Selector "selectionStyle" (id as ptr) As UITableViewCellSelectionStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getshouldIndentWhileEditing Lib UIKitLibName Selector "shouldIndentWhileEditing" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getshowingDeleteConfirmation Lib UIKitLibName Selector "showingDeleteConfirmation" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getshowsReorderControl Lib UIKitLibName Selector "showsReorderControl" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didTransitionToState(pid as ptr, sel as ptr, state as UInteger)
		  dim ego as new AppleTableViewCell (pid)
		  ego.informOnDidTransitionToState  (state)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willTransitionToState(pid as ptr, sel as ptr, state as UInteger)
		  dim ego as new AppleTableViewCell (pid)
		  ego.informOnWillTransitionToState  (state)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnDidTransitionToState(state as integer)
		  dim mask as new AppleTableViewCellStateMask (state)
		  raiseevent DidTransitionToState(Mask)
		  
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText  evDidTransitionToState
		  myarray.addobject new AppleNumber(state)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnWillTransitionToState(state as integer)
		  dim mask as new AppleTableViewCellStateMask (state)
		  raiseevent WillTransitionToState(Mask)
		  
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText  evWillTransitionToState
		  myarray.addobject new AppleNumber(state)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function initWithStyle Lib UIKitLibName Selector "initWithStyle:reuseIdentifier:" (id as ptr, style as UITableViewCellStyle, ReuseIdentifier as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleTableViewCell
		  return if (aptr = nil, nil, new AppleTableViewCell(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareForReuse()
		  UIKitFramework.PrepareForReuse(id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setaccessoryType Lib UIKitLibName Selector "setAccessoryType:" (id as ptr, value as UITableViewCellAccessoryType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setaccessoryView Lib UIKitLibName Selector "setAccessoryView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub SetEditing(Editing as Boolean, Animated as Boolean = true)
		  seteditinganimated (id, Editing, Animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub seteditingAccessoryType Lib UIKitLibName Selector "setEditingAccessoryType:" (id as ptr, value as UITableViewCellAccessoryType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub seteditingAccessoryView Lib UIKitLibName Selector "setEditingAccessoryView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setEditingAnimated Lib UIKitLibName Selector "setEditing:animated:" (id as ptr, selected as boolean, animated as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setfocusStyle Lib UIKitLibName Selector "setFocusStyle:" (id as ptr, value as UITableViewCellFocusStyle)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub SetHighlighted(Highlighted as Boolean, Animated as Boolean = true)
		  sethighlightedanimated (id, Highlighted, Animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setHighlighted Lib UIKitLibName Selector "setHighlighted:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setHighlightedAnimated Lib UIKitLibName Selector "setHighlighted:animated:" (id as ptr, selected as boolean, animated as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setindentationLevel Lib UIKitLibName Selector "setIndentationLevel:" (id as ptr, value as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setindentationWidth Lib UIKitLibName Selector "setIndentationWidth:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setindentationWidth32 Lib UIKitLibName Selector "setIndentationWidth:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setmultipleSelectionBackgroundView Lib UIKitLibName Selector "setMultipleSelectionBackgroundView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub SetSelected(Selected as Boolean, Animated as Boolean = true)
		  setselectedanimated (id, Selected, Animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setselected Lib UIKitLibName Selector "setSelected:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setSelectedAnimated Lib UIKitLibName Selector "setSelected:animated:" (id as ptr, selected as boolean, animated as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setselectedBackgroundView Lib UIKitLibName Selector "setSelectedBackgroundView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setselectionStyle Lib UIKitLibName Selector "setSelectionStyle:" (id as ptr, value as UITableViewCellSelectionStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setshouldIndentWhileEditing Lib UIKitLibName Selector "setShouldIndentWhileEditing:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setshowsReorderControl Lib UIKitLibName Selector "setShowsReorderControl:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event DidTransitionToState(Mask As AppleTableViewCellStateMask)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillTransitionToState(Mask As AppleTableViewCellStateMask)
	#tag EndHook


	#tag Note, Name = Status Complete
		completed including events, but fairly untested
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getaccessorytype (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setaccessorytype (id, value)
			End Set
		#tag EndSetter
		AccessoryType As UITableViewCellAccessoryType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (getaccessoryView (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setaccessoryView (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		AccessoryView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (UIKitFramework.getbackgroundView (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setbackgroundView (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		BackgroundView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    methods.Append new TargetClassMethodHelper("willTransitionToState:", AddressOf impl_willTransitionToState, "v@:i")
			    methods.Append new TargetClassMethodHelper("didTransitionToState:", AddressOf impl_didTransitionToState, "v@:i")
			    
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
			    // #if Target64Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    // #elseif Target32Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    // #endif
			    
			    targetID = BuildTargetClass ("UITableViewCell", "iOSLibUITableViewCell",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (UIKitFramework.getcontentView (id))
			End Get
		#tag EndGetter
		ContentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleLabel.MakefromPtr (UIKitFramework.getdetailtextlabel (id))
			End Get
		#tag EndGetter
		DetailTextLabel As AppleLabel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UIKitFramework.getEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setEditing (id, value)
			End Set
		#tag EndSetter
		Editing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return geteditingAccessoryType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  seteditingAccessoryType (id, value)
			End Set
		#tag EndSetter
		EditingAccessoryType As UITableViewCellAccessoryType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (geteditingAccessoryView (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  seteditingAccessoryView (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		EditingAccessoryView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return geteditingStyle (id)
			End Get
		#tag EndGetter
		EditingStyle As UITableViewCellEditingStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getfocusstyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfocusstyle (id, value)
			End Set
		#tag EndSetter
		FocusStyle As UITableViewCellFocusStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getHighlighted (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setHighlighted (id, value)
			End Set
		#tag EndSetter
		Highlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (getimageview (id))
			End Get
		#tag EndGetter
		ImageView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getindentationLevel(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setindentationLevel id, value
			End Set
		#tag EndSetter
		IndentationLevel As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getindentationwidth(id)
			  #elseif Target32Bit
			    return getindentationwidth32(id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setindentationwidth(id, value)
			  #elseif Target32Bit
			    setindentationwidth32(id, value)
			  #endif
			  
			End Set
		#tag EndSetter
		IndentationWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getshouldIndentWhileEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshouldIndentWhileEditing (id, value)
			End Set
		#tag EndSetter
		IndentWhileEditing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (getmultipleSelectionBackgroundView (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmultipleSelectionBackgroundView (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		MultipleSelectionBackgroundView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UIKitFramework.getreuseidentifier(id)
			End Get
		#tag EndGetter
		ReuseIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getselected (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setselected (id, value)
			End Set
		#tag EndSetter
		Selected As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (getselectedbackgroundView (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setselectedbackgroundView (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		SelectedBackgroundView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getSelectionStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSelectionStyle (id, value)
			End Set
		#tag EndSetter
		SelectionStyle As UITableViewCellSelectionStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return uikitframework.getseparatorinset(id)
			  #elseif Target32Bit
			    return uikitframework.getseparatorinset32(id).toUIEdgeInset
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    UIKitFramework.setseparatorinset(id, value)
			  #elseif Target32Bit
			    UIKitFramework.setseparatorinset32(id, value.toUIEDgeinset32)
			  #endif
			End Set
		#tag EndSetter
		SeparatorInset As foundationFramework.UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getshowingDeleteConfirmation (id)
			End Get
		#tag EndGetter
		ShowDeleteConfirmation As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getshowsReorderControl (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsReorderControl id, value
			End Set
		#tag EndSetter
		ShowsReorderControl As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleLabel.MakefromPtr (UIKitFramework.gettextlabel (id))
			End Get
		#tag EndGetter
		TextLabel As AppleLabel
	#tag EndComputedProperty


	#tag Constant, Name = evDidTransitionToState, Type = Text, Dynamic = False, Default = \"DidTransitionToState", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = evWillTransitionToState, Type = Text, Dynamic = False, Default = \"WillTransitionToState", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = UITableViewCellAccessoryType, Type = Integer, Flags = &h0
		None
		  DisclosureIndicator
		  DetailDisclosureButton
		  CheckMark
		DetailButton
	#tag EndEnum

	#tag Enum, Name = UITableViewCellEditingStyle, Type = Integer, Flags = &h0
		None
		  Delete
		Insert
	#tag EndEnum

	#tag Enum, Name = UITableViewCellFocusStyle, Type = Integer, Flags = &h0
		Default
		Custom
	#tag EndEnum

	#tag Enum, Name = UITableViewCellSelectionStyle, Type = Integer, Flags = &h0
		None
		  Blue
		  Gray
		Default
	#tag EndEnum

	#tag Enum, Name = UITableViewCellStyle, Type = Integer, Flags = &h0
		Default
		  Value1
		  Value2
		Subtitle
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessoryType"
			Group="Behavior"
			Type="UITableViewCellAccessoryType"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - DisclosureIndicator"
				"2 - DetailDisclosureButton"
				"3 - CheckMark"
				"4 - DetailButton"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditingAccessoryType"
			Group="Behavior"
			Type="UITableViewCellAccessoryType"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - DisclosureIndicator"
				"2 - DetailDisclosureButton"
				"3 - CheckMark"
				"4 - DetailButton"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditingStyle"
			Group="Behavior"
			Type="UITableViewCellEditingStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Delete"
				"2 - Insert"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusStyle"
			Group="Behavior"
			Type="UITableViewCellFocusStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Custom"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndentationLevel"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndentationWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndentWhileEditing"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReuseIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionStyle"
			Group="Behavior"
			Type="UITableViewCellSelectionStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Blue"
				"2 - Gray"
				"3 - Default"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowDeleteConfirmation"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsReorderControl"
			Group="Behavior"
			Type="Boolean"
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
