#tag Class
 Attributes ( incomplete = "needs AVAsset" ) Protected Class AppleAVPlayerItem
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub CancelPendingSeeks()
		  cancelPendingSeeks (id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub cancelPendingSeeks Lib AVFoundationLibname Selector "cancelPendingSeeks" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aURL as AppleURL)
		  Declare function initWithURL lib AVFoundationLibName selector "initWithURL:" (id as ptr, url as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithURL(alloc(Classptr), aURL.id))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(URLName as CFStringRef)
		  Constructor (new AppleURL (URLName))
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getaudioMix Lib AVFoundationLibname Selector "audioMix" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getaudioTimePitchAlgorithm Lib AVFoundationLibname Selector "audioTimePitchAlgorithm" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlayFastForward Lib AVFoundationLibname Selector "canPlayFastForward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlayFastReverse Lib AVFoundationLibname Selector "canPlayFastReverse" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlayReverse Lib AVFoundationLibname Selector "canPlayReverse" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlaySlowForward Lib AVFoundationLibname Selector "canPlaySlowForward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlaySlowReverse Lib AVFoundationLibname Selector "canPlaySlowReverse" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanStepBackward Lib AVFoundationLibname Selector "canStepBackward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanStepForward Lib AVFoundationLibname Selector "canStepForward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getduration Lib AVFoundationLibname Selector "duration" (id as ptr) As CMTime
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getforwardPlaybackEndTime Lib AVFoundationLibname Selector "forwardPlaybackEndTime" (id as ptr) As CMTime
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getloadedTimeRanges Lib AVFoundationLibname Selector "loadedTimeRanges" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function getpresentationSize Lib AVFoundationLibname Selector "presentationSize" (id as ptr) As FoundationFrameWork.nssize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function getpresentationSize32 Lib AVFoundationLibname Selector "presentationSize" (id as ptr) As FoundationFrameWork.nssize32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getreversePlaybackEndTime Lib AVFoundationLibname Selector "reversePlaybackEndTime" (id as ptr) As CMTime
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getseekableTimeRanges Lib AVFoundationLibname Selector "seekableTimeRanges" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getseekingWaitsForVideoCompositionRendering Lib AVFoundationLibname Selector "seekingWaitsForVideoCompositionRendering" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getstatus Lib AVFoundationLibname Selector "status" (id as ptr) As PlayerItemStatus
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getTimebase Lib AVFoundationLibname Selector "timebase" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function gettimedMetadata Lib AVFoundationLibname Selector "timedMetadata" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function gettracks Lib AVFoundationLibname Selector "tracks" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isPlaybackBufferEmpty Lib AVFoundationLibname Selector "isPlaybackBufferEmpty" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isPlaybackBufferFull Lib AVFoundationLibname Selector "isPlaybackBufferFull" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isPlaybackLikelyToKeepUp Lib AVFoundationLibname Selector "isPlaybackLikelyToKeepUp" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function makefromPtr(aPtr as Ptr) As AppleAVPlayerItem
		  return if (aptr = nil, nil, new AppleAVPlayerItem(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SeekToTime(Time as CMTime)
		  dim block as new AppleBlock (AddressOf SeekToTimeCompletionBlock)
		  AVFoundationFramework.seekToTime id, time, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SeekToTime(Time as CMTime, ToleranceBefore As CMTime, ToleranceAfter as CMTime)
		  dim block as new AppleBlock (AddressOf SeekToTimeCompletionBlock)
		  AVFoundationFramework.seekToTimeTolerance id, time, ToleranceBefore, ToleranceAfter, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub SeekToTimeCompletionBlock(Finished as Boolean)
		  if me <> nil then RaiseEvent TimeFound (Finished)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setaudioMix Lib AVFoundationLibname Selector "setAudioMix:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setaudioTimePitchAlgorithm Lib AVFoundationLibname Selector "setAudioTimePitchAlgorithm:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setforwardPlaybackEndTime Lib AVFoundationLibname Selector "setForwardPlaybackEndTime:" (id as ptr, value as cmtime)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setreversePlaybackEndTime Lib AVFoundationLibname Selector "setReversePlaybackEndTime:" (id as ptr, value as CMTime)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setseekingWaitsForVideoCompositionRendering Lib AVFoundationLibname Selector "setSeekingWaitsForVideoCompositionRendering:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub StepBy(StepCount As Integer)
		  stepByCount (id, StepCount)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub stepByCount Lib AVFoundationLibname Selector "stepByCount" (id as ptr, stepcount as integer)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event TimeFound(Finished as Boolean)
	#tag EndHook


	#tag Note, Name = Status
		
		Needs AVAsset for another constructor and properties
		Needs NSDate for Seektodate
		Needs AVVideoComposition & AVVideoCompositingfor property
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioMix.makeFromPtr (getaudioMix(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setaudioMix (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		AudioMix As AppleAVAudioMix
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getaudioTimePitchAlgorithm (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setaudioTimePitchAlgorithm (id, value)
			End Set
		#tag EndSetter
		AudioTimePitchAlgorithm As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcanPlayFastForward (id)
			End Get
		#tag EndGetter
		CanPlayFastForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcanPlayFastReverse (id)
			End Get
		#tag EndGetter
		CanPlayFastReverse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcanPlayReverse (id)
			End Get
		#tag EndGetter
		CanPlayReverse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcanPlaySlowForward (id)
			End Get
		#tag EndGetter
		CanPlaySlowForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcanPlaySlowReverse (id)
			End Get
		#tag EndGetter
		CanPlaySlowReverse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcanStepBackward (id)
			End Get
		#tag EndGetter
		CanStepBackward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcanStepForward (id)
			End Get
		#tag EndGetter
		CanStepForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("AVPlayerItem")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getTimebase (id)
			End Get
		#tag EndGetter
		CMTimeBaseRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AVFoundationFramework.getcurrentTime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AVFoundationFramework.setCurrentTime id, value
			End Set
		#tag EndSetter
		currentTime As CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getduration (id)
			End Get
		#tag EndGetter
		Duration As CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleError.MakefromPtr (AVFoundationFramework.geterror(id))
			End Get
		#tag EndGetter
		Error As AppleError
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getforwardPlaybackEndTime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setforwardPlaybackEndTime (id, value)
			End Set
		#tag EndSetter
		ForwardPlaybackEndTime As CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr (getloadedTimeRanges (id))
			End Get
		#tag EndGetter
		LoadedTimeRanges As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return isPlaybackBufferEmpty (id)
			End Get
		#tag EndGetter
		PlaybackBufferEmpty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return isPlaybackBufferFull (id)
			End Get
		#tag EndGetter
		PlaybackBufferFull As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return isPlaybackLikelyToKeepUp (id)
			End Get
		#tag EndGetter
		PlaybackLikelyToKeepUp As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getpresentationSize (id)
			  #elseif Target32Bit
			    return getpresentationSize32(id).tonssize
			  #endif
			End Get
		#tag EndGetter
		PresentationSize As FoundationFrameWork.nssize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getreversePlaybackEndTime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setreversePlaybackEndTime (id, value)
			End Set
		#tag EndSetter
		ReversePlaybackEndTime As CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr (getseekableTimeRanges (id))
			End Get
		#tag EndGetter
		SeekableTimeRanges As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getseekingWaitsForVideoCompositionRendering (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setseekingWaitsForVideoCompositionRendering (id, value)
			End Set
		#tag EndSetter
		SeekWaitsForVideo As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getstatus (id)
			End Get
		#tag EndGetter
		Status As PlayerItemStatus
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr (gettimedMetadata (id))
			End Get
		#tag EndGetter
		TimedMetadata As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(gettracks(id))
			End Get
		#tag EndGetter
		Tracks As AppleArray
	#tag EndComputedProperty


	#tag Constant, Name = kAVAudioTimePitchAlgorithmLowQualityZeroLatency, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmLowQualityZeroLatency", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAVAudioTimePitchAlgorithmSpectral, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmSpectral", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAVAudioTimePitchAlgorithmTimeDomain, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmTimeDomain", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAVAudioTimePitchAlgorithmVarispeed, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmVarispeed", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = PlayerItemStatus, Type = Integer, Flags = &h0
		Unknown
		  ReadyToPlay
		Failed
	#tag EndEnum


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
			Name="isProxy"
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
