#tag Class
Protected Class AppleArray
Inherits AppleMutableObjectInterface
	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(alloc(classptr)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anArray as AppleArray)
		  Declare function arrayWithArray lib FoundationLibName  selector "arrayWithArray:" (id as ptr, anarray as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (arrayWithArray(classptr, anArray.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsObject(anObject as AppleGeneralObject) As Boolean
		  Declare function containsObject lib FoundationLibName  selector "containsObject:" (id as ptr, anObject as ptr) as Boolean
		  return containsObject (id, anObject.GeneralID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsText(SearchText as CFStringRef) As Boolean
		  Declare function containsText lib FoundationLibName  selector "containsObject:" (id as ptr, anObject as cfstringref) as Boolean
		  return containsText (id, SearchText)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleArray
		  return if (aptr <> NIL, new AppleArray (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectAtIndex(Index as Uinteger) As AppleObject
		  return AppleObject.MakeFromPtr (PtrAtIndex (index))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PtrAtIndex(Index as Uinteger) As Ptr
		  declare function objectAtIndex lib FoundationLibName  selector "objectAtIndex:" (id as ptr, index as uinteger) as Ptr
		  return objectAtIndex (id, index)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextAtIndex(Index as Uinteger) As cfstringref
		  declare function objectAtIndex lib FoundationLibName  selector "objectAtIndex:" (id as ptr, index as uinteger) as CFStringRef
		  return objectAtIndex (id, index)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toPtrArray() As Ptr()
		  dim result() as Ptr
		  for q as uinteger = 0 to count -1
		    result.Append PtrAtIndex (q)
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toTextArray() As text()
		  dim result() as text
		  for q as uinteger = 0 to count -1
		    result.Append Textatindex (q)
		  next
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSArray")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			return getCount
		#tag EndNote
		#tag Getter
			Get
			  return getCount
			End Get
		#tag EndGetter
		Count As UInteger
	#tag EndComputedProperty


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
