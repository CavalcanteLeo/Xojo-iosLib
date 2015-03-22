#tag IOSView
Begin iosView View2
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, 28, 
      AutoLayout      =   TextField1, 7, , 0, False, +1.00, 1, 1, 175, 
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 43, 
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   28
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "http://xojoblog.me"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   43
      Visible         =   True
      Width           =   175.0
   End
   Begin iOSHTMLViewer HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HTMLViewer1, 8, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   HTMLViewer1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   HTMLViewer1, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Height          =   320.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   160
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, TextField1, 2, False, +1.00, 1, 1, 43, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 65, 
      AutoLayout      =   Button1, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Goto"
      Enabled         =   True
      Height          =   30.0
      Left            =   246
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   43
      Visible         =   True
      Width           =   65.0
   End
   Begin iOStextfield Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, TextField1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 260, 
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      KeyboardType    =   "0"
      Left            =   28
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   100
      Visible         =   True
      Width           =   260.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 65, 
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 1, 1, 246, 
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 1, 1, 130, 
      Caption         =   "Create"
      Enabled         =   True
      Height          =   30.0
      Left            =   246
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   130
      Visible         =   True
      Width           =   65.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim NotificationCenter as new iOSLibNotificationCenter ("webViewDidStartLoad", NIL)
		  // dim NotificationCenter as new iOSLibNotificationCenter ("WebProgressEstimateChangedNotification", NIL)
		  
		  dim myint as integer = integer (HTMLViewer1.iosLibWebView.id)
		  dim myint1 as integer = integer (HTMLViewer1.handle)
		  //
		  label1.Text = myint.ToText + " "+myint1.totext + " "+HTMLViewer1.iosLibWebView.DebugDescription
		  dim webv as iOSLibwebView = HTMLViewer1.iOSLibwebView
		  dim acolo as color = &c5D637E00
		  dim acolorSpace as new iosLibCGColor (acolo)
		  Break
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private NotificationCenter As iOSLibNotificationCenter
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  HTMLViewer1.LoadURL TextField1.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  for q as uinteger = 1 to 10000000
		    dim cs as new iOSLibCGColorSpace
		  next
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
