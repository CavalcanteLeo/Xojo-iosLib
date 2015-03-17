#tag Module
Protected Module iOSFoundation
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetBundleWithIdentifier Lib Foundation (BundleID as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetDataPointerForName Lib Foundation (Bundle as Ptr, symbolName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetDevelopmentRegion Lib Foundation (Bundle as Ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetIdentifier Lib Foundation (Bundle as Ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetInfoDictionary Lib Foundation (Bundle as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetMainBundle Lib Foundation () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleIsExecutableLoaded Lib Foundation (Bundle as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleLoadExecutable Lib Foundation (Bundle as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyDescription Lib Foundation (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyTypeIDDescription Lib Foundation (CFTypeId as uinteger) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetByteSize Lib Foundation (Number as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetType Lib Foundation (Number as Ptr) As CFNumberTypes
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetValue Lib Foundation (Number as Ptr, Numbertype as CFNumberTypes, byref ValuePtr as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberIsFloatType Lib Foundation (Number as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFRelease Lib Foundation (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringCreateCopy Lib Foundation (aString as cfstringref) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringCreateWithCString Lib Foundation (aString as cstring, encoding as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetCharactersPtr Lib Foundation (aString as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetCStringPtr Lib Foundation (aString as cfstringref, anencoding as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetFastestEncoding Lib Foundation (aString as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function DataPointerforName(name as CFStringRef, frameworkID as CFStringRef) As Ptr
		  // Implementation courtesy of Jim McKay
		  
		  dim frameworkRef As ptr=CFBundleGetBundleWithIdentifier(frameworkID)
		  if frameworkRef=nil then Return nil
		  
		  if not CFBundleIsExecutableLoaded(frameworkRef) then //bundle is not loaded
		    if not CFBundleLoadExecutable(frameworkRef) then  //try to load it
		      //fail
		      Return nil
		    end if
		  end if
		  
		  Return CFBundleGetDataPointerForName(frameworkRef,name) //lookup the constant
		  #pragma unused name
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSClassFromString Lib Foundation (aClassName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSMakeSize Lib Foundation (w as single, h as Single) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSProtocolFromString Lib Foundation (aProtocol as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSSelectorFromString Lib Foundation (aSelector as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSStringFromSelector Lib Foundation (aSelector as Ptr) As cfstringref
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function StandardTextEncoding() As xojo.Core.TextEncoding
		  static enc as xojo.Core.TextEncoding = xojo.core.TextEncoding.utf8
		  return enc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemConstantName(name as CFStringRef, frameworkID as CFStringRef) As CFStringRef
		  Return DataPointerforName (name, frameworkID).cfstringref(0)
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return 8
			  #elseif Target32Bit
			    return 4
			  #endif
			End Get
		#tag EndGetter
		IntegerSize As UInteger
	#tag EndComputedProperty


	#tag Constant, Name = CoreFoundation, Type = Text, Dynamic = False, Default = \"CoreFoundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Foundation, Type = Text, Dynamic = False, Default = \"Foundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = UIKit, Type = Text, Dynamic = False, Default = \"UIKit.framework", Scope = Public
	#tag EndConstant


	#tag Structure, Name = NSPoint, Flags = &h0
		x as double
		y as double
	#tag EndStructure

	#tag Structure, Name = NSPoint32Bit, Flags = &h0
		x as single
		y as single
	#tag EndStructure

	#tag Structure, Name = NSRange, Flags = &h0
		location as UInteger
		length as uinteger
	#tag EndStructure

	#tag Structure, Name = NSRect, Flags = &h0
		Origin as NSPoint
		Size_ as NSSize
	#tag EndStructure

	#tag Structure, Name = NSRect32Bit, Flags = &h0
		Origin as NSPoint32Bit
		Size_ as NSSize32Bit
	#tag EndStructure

	#tag Structure, Name = NSSize, Flags = &h0
		width as double
		height as double
	#tag EndStructure

	#tag Structure, Name = NSSize32Bit, Flags = &h0
		width as single
		height as single
	#tag EndStructure


	#tag Enum, Name = CFNumberTypes, Flags = &h0
		Int8 = 1
		  Int16 = 2
		  Int32 = 3
		  Int64= 4
		  Float32 = 5
		  Float64 = 6
		  Char = 7
		  Short = 8
		  Int = 9
		  Long = 10
		  LongLong = 11
		  Float = 12
		  Double = 13
		  CFIndex = 14
		  NSInteger = 15
		  CGFloat = 16
		Max = 16
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
End Module
#tag EndModule
