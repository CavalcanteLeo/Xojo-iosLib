#tag IOSView
Begin iosView iOSGraphicsView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "iOSGraphics"
   Top             =   0
   Begin iOScanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 4, Label1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Height          =   361.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Label1, 2, Canvas1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Refresh")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("DrawLines")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("DrawRects")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Text")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Shapes")
		  Toolbar.Add(button)
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  Select case button.Caption
		  case "Refresh"
		    canvas1.Invalidate
		  case "DrawLines"
		    dim w as new CGGraphicsDrawLinesView
		    self.PushTo w
		  case "DrawRects"
		    dim w as new CGGraphicsDrawRectsView
		    self.PushTo w
		  case "Text"
		    dim w as new CGGraphicsTextView
		    self.pushto w
		  case "Shapes"
		    dim w as new CGGraphicsView
		    self.pushto w
		  End Select
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  dim t1 as date = date.now
		  dim mypic as new AppleImage (iosLibLogo)
		  dim ga as new AppleCGContext (g)
		  
		  ga.InterpolationQuality = CGInterpolationQuality.High
		  ga.SetShadow 2,2,5, &c6B3BB300 // paints a shadow for the following graphics
		  g.SaveState // saving the current state because the context needs to be flipped for the tiledimage call
		  g.Translate (0, me.Height) // flip it
		  g.Scale (1, -1)
		  ga.DrawtiledImage FoundationFrameWork.NSMakeRect (0,0,20, 20), mypic.toCGImage
		  g.RestoreState // and restire it to normal
		  ga.RemoveShadow // don't paint shadow anymore
		  // g.LineColor = &c86676D00
		  // g.LineWidth = 8
		  // ga.LineCap = CGLineCap.Round
		  // ga.LineJoin = CGLineJoin.Round
		  ga.BlendMode = CGBlendMode.Multiply // overlay the next graphcis
		  //
		  ga.DrawLinearGradient (array(&c435B9600,&cDA770000, &c07710000,  &cEAFBFE00, &cB0BBB100), FoundationFrameWork.NSMakePoint (30,30), FoundationFrameWork.NSMakePoint (me.width, me.Height), true)
		  // g.DrawLine me.Width-10,5,5, me.Height-10
		  // ga.TextDrawingMode = CGTextDrawingMode.Fill
		  g.FillColor = &cFFFFFF00
		  ga.BlendMode = CGBlendMode.Normal // overlay the next graphcis
		  ga.SetShadow 1,1,1, &c06001C00 // paints a shadow for the following graphics
		  
		  g.DrawTextBlock "iOSGraphicsExtension and the class AppleCGContext give you access to a lot more graphics routines than you are used to." +endofline + _
		  "Here you see the DrawTiledImage method with a shadow applied and a multiplied gradient. This text itself carries another shadow. "+endofline + endofline + _
		  "For other methods, select one below.", 10, 80, me.Width - 20
		  // g.FillColor = &cDA770000
		  g.LineWidth = 10
		  // g.LineColor = &c06001C00
		  // dim myArray(49) AS NSPoint
		  // for q as integer = 0 to 49
		  // myArray(q)=NSPoint(q*me.Width/49, math.RandomInt (0, me.Height))
		  // next
		  // if Switch1.Value then
		  // ga.AddLines myArray
		  // ga.StrokePath
		  // else
		  // for q as integer= 1 to 49
		  // g.DrawLine myArray(q-1).x, myArray(q-1).y,myArray(q).x, myArray(q).y
		  // next
		  // end if
		  // ga.RemoveShadow
		  dim dt as DateInterval = date.now - t1
		  dim sec as double = dt.NanoSeconds / 1000000000.0
		  dim FPS as double = 1/sec
		  label1.text = sec.ToText +" seconds drawing time for this canvas = "+fps.ToText+" FPS"
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
