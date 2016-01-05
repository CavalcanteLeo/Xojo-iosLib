#tag Class
Protected Class AppleURLRequest
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor(aURL as AppleURL)
		  Declare function initWithURL lib FoundationLibName  selector "initWithURL:" (id as ptr, aURL as Ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithURL(alloc(ClassPtr), aURL.id))
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getURL Lib FoundationLibName Selector "URL" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLRequest
		  return if (aptr= nil, nil, new AppleURLRequest(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSURLRequest")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleurl.MakefromPtr(geturl(id))
			End Get
		#tag EndGetter
		URL As AppleURL
	#tag EndComputedProperty


	#tag Enum, Name = NSURLRequestCachePolicy, Type = UInteger, Flags = &h0
		UseProtocolCachePolicy
		  ReloadIgnoringLocalCacheData
		  ReloadIgnoringLocalAndRemoteCacheData
		  ReturnCacheDataElseLoad
		  ReturnCacheDataDontLoad
		ReloadRevalidatingCacheData
	#tag EndEnum

	#tag Enum, Name = NSURLRequestNetworkServiceType, Type = UInteger, Flags = &h0
		Default
		  VoIP
		  Video
		  Background
		Voice
	#tag EndEnum


	#tag ViewBehavior
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
