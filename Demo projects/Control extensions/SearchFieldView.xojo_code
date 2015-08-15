#tag IOSView
Begin iosView SearchFieldView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   "AppleSearchBarControl"
   Title           =   ""
   Top             =   0
   Begin AppleSearchBarControl AppleSearchBarControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AppleSearchBarControl1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   AppleSearchBarControl1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   AppleSearchBarControl1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   AppleSearchBarControl1, 8, , 0, False, +1.00, 1, 1, 70, 
      BarStyle        =   ""
      BookmarkButton  =   False
      CancelButton    =   False
      ConfirmChangesInEvents=   False
      Height          =   70.0
      HorizontalSearchFieldBackgroundPositionAdjustment=   0.0
      HorizontalSearchTextPositionAdjustment=   0.0
      Left            =   20
      LockedInPosition=   False
      Placeholder     =   ""
      Prompt          =   ""
      Scope           =   0
      SearchbarStyle  =   ""
      SearchResultsButton=   False
      searchResultsButtonSelected=   False
      SearchText      =   ""
      SelectedButton  =   0
      ShowsScopeBar   =   False
      Top             =   73
      Translucent     =   True
      VerticalSearchFieldBackgroundPositionAdjustment=   0.0
      VerticalSearchTextPositionAdjustment=   0.0
      Visible         =   True
      Width           =   280.0
   End
   Begin AppleSearchBarControl AppleSearchBarControl2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AppleSearchBarControl2, 7, AppleSearchBarControl1, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AppleSearchBarControl2, 3, AppleSearchBarControl1, 4, False, +1.00, 1, 1, 30, 
      AutoLayout      =   AppleSearchBarControl2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   AppleSearchBarControl2, 8, , 0, False, +1.00, 1, 1, 112, 
      BarStyle        =   ""
      BookmarkButton  =   False
      CancelButton    =   False
      ConfirmChangesInEvents=   False
      Height          =   112.0
      HorizontalSearchFieldBackgroundPositionAdjustment=   0.0
      HorizontalSearchTextPositionAdjustment=   0.0
      Left            =   20
      LockedInPosition=   False
      Placeholder     =   ""
      Prompt          =   ""
      Scope           =   0
      SearchbarStyle  =   ""
      SearchResultsButton=   False
      searchResultsButtonSelected=   False
      SearchText      =   ""
      SelectedButton  =   0
      ShowsScopeBar   =   False
      Top             =   173
      Translucent     =   True
      VerticalSearchFieldBackgroundPositionAdjustment=   0.0
      VerticalSearchTextPositionAdjustment=   0.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 3, AppleSearchBarControl2, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label1, 2, AppleSearchBarControl2, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, AppleSearchBarControl2, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      Enabled         =   True
      Height          =   179.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "These are two possible ways to design a SearchBarControl, but many more customization options are available, as well as the full battery of events."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   293
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events AppleSearchBarControl1
	#tag Event
		Sub Open()
		  me.BarStyle = UIKitFramework.UIBarStyle.Black
		  me.Prompt = "Black BarStyle"
		  me.CancelButton = true
		  me.BookmarkButton = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppleSearchBarControl2
	#tag Event
		Sub Open()
		  me.SetScopeButtonTitles ("First", "Second", "Third")
		  me.SearchbarStyle = UIKitFramework.UISearchBarStyle.Prominent
		  me.ShowsScopeBar = true
		  me.prompt = "Default BarStyle"
		  me.SearchResultsButton = true
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
