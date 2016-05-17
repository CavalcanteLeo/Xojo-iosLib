#tag IOSView
Begin iosView TableViewView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLibTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Editing         =   False
      Format          =   "0"
      Height          =   452.0
      Left            =   0
      LockedInPosition=   False
      RowHeight       =   0.0
      Scope           =   0
      SectionCount    =   0
      Top             =   28
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  timer.CallLater (200, AddressOf init)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub AnalyzeBuffer(t as timer)
		  if me.BufferPtr <> nil then
		    dim buffer as new AppleAVAudioPCMBuffer (me.BufferPtr)
		    system.DebugLog buffer.DebugDescription
		  end if
		  system.DebugLog "Analyze ran"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CallBackBlock(BufferPtr as ptr, AVAudioTime as Ptr)
		  #pragma StackOverflowChecking false
		  #pragma BreakOnExceptions false
		  // #pragma backgroundtasks false
		  #pragma NilObjectChecking false
		  
		  declare Function floatChannelData lib AVFoundationLibName selector "floatChannelData" (id as ptr) as ptr
		  declare Function frameLength lib AVFoundationLibName selector "frameLength" (id as ptr) as UInt32
		  dim cdata as ptr = AppleAVAudioPCMBuffer.getfloatchanneldata (bufferptr)
		  dim frames as uint32 = frameLength (bufferptr)
		  
		  // system.DebugLog integer (frames).totext +": "+integer(cdata).ToText
		  dim mblock as new MutableMemoryBlock (cdata, frames)
		  // analyzetimer = new timer
		  // AddHandler AnalyzeTimer.action, AddressOf AnalyzeBuffer
		  // AnalyzeTimer.Period = 5
		  // Here's a problem: We can neither analyze the buffer and time from inside the method.
		  // Running Xojo methods on a different thread is not really stable, probability of stack overflows gets high
		  
		  // A timer.CallLater 1, AddressOf AnalyzeBuffer doesn't work too - gives stack overflows.
		  // Neither does a computed property for both ptrs.
		  
		  // Currently I see 2 possbilities:
		  // Either have a timer check the ptr values for changes and then start the AnalyzeBuffer method or
		  // Put the analyze method on the iOS Level of a custom subclass where it can be called from this block (hopefully) via ObjectiveC Runtime methods.
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init()
		  // analyzetimer = new timer
		  // AddHandler AnalyzeTimer.action, AddressOf AnalyzeBuffer
		  // AnalyzeTimer.Period = 1
		  // AnalyzeTimer.Mode = timer.modes.off
		  // 
		  // session = new AppleAVAudioSession
		  // dim error as new AppleError
		  // dim success as Boolean
		  // if Session.InputAvailable then
		  // success = Session.SetCategory(AppleAVAudioSession.kAVAudioSessionCategoryPlayAndRecord, error)
		  // if not success then
		  // break
		  // end if
		  // success = Session.SetActive(true, error)
		  // if not success then
		  // break
		  // end if
		  // 
		  // engine = new AppleAVAudioEngine
		  // dim mixer as  AppleAVAudioMixerNode = engine.MainMixerNode
		  // dim input as  AppleAVAudioInputNode = engine.InputNode
		  // dim format as AppleAVAudioFormat = input.InputFormat(0)
		  // engine.ConnectNodes (input, mixer, format)
		  // 
		  // dim block as new AppleBlock(AddressOf CallBackBlock)
		  // input.InstallTap (0, 4096, format, block)
		  // 
		  // // success = engine.start(error)
		  // if not success then
		  // break
		  // end if
		  // 
		  // end if
		  
		  dim cell as new AppleTableViewCell (AppleTableViewCell.UITableViewCellStyle.Value1)
		  cell.SetEditing (true)
		  cell.PrepareForReuse
		  
		  table1.AddSection ("Test")
		  dim d as new iOSTableCellData
		  d.text = "Can have section footers too"
		  Table1.AddRow (0, d)
		  d = new iOSTableCellData
		  d.text = "Backgroundimage for the whole tableview"
		  Table1.AddRow (0, d)
		  d = new iOSTableCellData
		  d.text = "Cellbackground and other properties via Event"
		  Table1.AddRow (0, d)
		  d = new iOSTableCellData
		  d.text = "Individual row indent via event"
		  Table1.AddRow (0, d)
		  d = new iOSTableCellData
		  d.text = "Individual RowHeight via event"
		  Table1.AddRow (0, d)
		  d = new iOSTableCellData
		  d.text = "Individual Edit Action Buttons via event"
		  Table1.AddRow (0, d)
		  table1.AddSection "A second section with standard header"
		  for q as integer = 0 to 30
		    d = new iOSTableCellData
		    d.AccessoryType = iOSTableCellData.AccessoryTypes.Detail
		    d.Text =q.totext+". row"
		    Table1.AddRow (1, d)
		  next
		  
		  table1.BackgroundImage = iosLibLogo
		  
		  // break
		  // t.SetEditingAnimated (true)
		  
		  // t.InsertRows (AppleMutableArray.fromAppleObjects(AppleIndexPath.IndexPathForRow (0,0)), true)
		  // dim c as AppleTableViewCell = t.Cell (1,1)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected AnalyzeTimer As Timer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BufferPtr As ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Engine As AppleAVAudioEngine
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Session As AppleAVAudioSession
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TimePtr As ptr
	#tag EndProperty


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub WillDisplayCell(Cell as appletableviewcell, Section as uinteger, row as uinteger)
		  
		  if row  > 5 or section > 0 then
		    dim blue as double = 10
		    cell.BackgroundColor = color.rgba(blue * row,150, 100, 150).toapplecolor
		    cell.TextLabel.TextColor = color.rgb(blue*row, 255-blue*row, blue*row).toapplecolor
		    cell.TextLabel.Font = AppleFont.SystemFont
		    cell.TextLabel.ShadowColor = AppleColor.ClearColor
		  else
		    cell.BackgroundColor = color.rgba (200,200,200,150).toapplecolor
		    cell.TextLabel.TextColor = AppleColor.BlackColor
		    cell.TextLabel.Font = new AppleFont ("ChalkboardSE-Bold", 24)
		    cell.TextLabel.ShadowColor = AppleColor.LightGrayColor
		    cell.TextLabel.ShadowOffset = FoundationFrameWork.NSMakesize (1, 1)
		  end if
		  // dim rotation as double = row
		  // cell.Rotate (rotation.DegreeToRadian)
		End Sub
	#tag EndEvent
	#tag Event
		Function ViewForHeader(Section as UInteger) As AppleView
		  if Section = 0 then 
		    dim newHeader as new AppleLabel(FoundationFrameWork.NSMakeRect (0,0,me.Width, 100))
		    // newHeader.Layer.AddSubLayer new AppleCAGradientLayer (array(&cE6E6E600, &c99999900, &c00408000, &c80800000, &c66CCFF00))
		    dim bgcolor as color = &c12072877
		    newHeader.BackgroundColor = bgcolor.toapplecolor
		    newHeader.TextColor = AppleColor.WhiteColor
		    newHeader.Font = new AppleFont ("Helvetica Neue", 42.0)
		    newHeader.ShadowColor = applecolor.DarkGrayColor
		    newHeader.ShadowOffset = FoundationFrameWork.NSMakesize (4, 4)
		    newHeader.Caption = " A custom header for each Section!"
		    return newHeader
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function IndentRow(section as uinteger, row as uinteger) As Integer
		  Return row/3
		End Function
	#tag EndEvent
	#tag Event
		Function HeightForRow(section as uinteger, row as uinteger) As Double
		  break
		  return me.RowHeight + RandomInt (-10, 10)
		  
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderHeight(section as uinteger) As Double
		  if section = 0 then return 100
		End Function
	#tag EndEvent
	#tag Event
		Function EstimatedHeaderHeight(section as uinteger) As Double
		  return 100
		End Function
	#tag EndEvent
	#tag Event
		Function EditActions(Section as uinteger, row as uinteger) As AppleTableViewRowAction()
		  if section = 1 then
		    dim FirstAciton as new  AppleTableViewRowAction (AppleTableViewRowAction.UITableViewRowActionStyle.Normal, "TestAction")
		    FirstAciton.BackgroundColor = AppleColor.GreenColor
		    dim secaction as  new  AppleTableViewRowAction (AppleTableViewRowAction.UITableViewRowActionStyle.Normal, "Another Action") 
		    secaction.BackgroundColor = AppleColor.BlueColor
		    return array(FirstAciton, secaction)
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub Action(Section as uinteger, row as uinteger)
		  me.SetEditMode (true)
		End Sub
	#tag EndEvent
	#tag Event
		Sub AccessoryAction(section as uinteger, row as uinteger)
		  
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
