#tag IOSView
Begin iosView IntrospectionMethodsView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      Format          =   "0"
      Height          =   407.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor(classname as Text)
		  // Calling the overridden superclass constructor.
		  try
		    IntroSpectionInstance = NSClassFromString (classname)
		    Introspection = new iOSLibIntrospection (IntroSpectionInstance)
		    dim methods() as iOSLibMethod = Introspection.Methods
		  catch err
		    
		  end try
		  Super.Constructor
		  self.Title = classname+ " Methods"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showClasses(filter as text = "")
		  Table1.RemoveAll
		  if IntroSpectionInstance <> NIL then
		    dim cell as  iOSTableCellData
		    dim mymethods() as iOSLibMethod = Introspection.Methods
		    dim count as uinteger = mymethods.Ubound + 1
		    Table1.AddSection (count.totext+" Methods")
		    for q as uinteger = 0 to count -1
		      dim myname as text =mymethods(q).Name
		      cell = new iOSTableCellData (myname, "", NIL, iostablecelldata.accessorytypes.detail)
		      cell.Tag = mymethods(q)
		      table1.AddRow (0, cell)
		    next
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Introspection As iOSLibIntrospection
	#tag EndProperty

	#tag Property, Flags = &h21
		Private IntroSpectionInstance As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClasses() As Text
	#tag EndProperty


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  showClasses
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  // dim Classname as text = me.RowData(section, row).Text
		  
		  // break
		End Sub
	#tag EndEvent
	#tag Event
		Sub AccessoryAction(section As Integer, row As Integer)
		  dim mymethod as iOSLibMethod = me.RowData(section,row).Tag
		  dim nv as new IntrospectionMethodView (mymethod)
		  self.pushto nv
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="NavigationBarVisible"
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
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
