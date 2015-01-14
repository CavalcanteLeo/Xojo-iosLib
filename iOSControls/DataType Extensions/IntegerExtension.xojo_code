#tag Module
Protected Module IntegerExtension
	#tag Method, Flags = &h0
		Function HasBit(extends i as UInteger, bit as integer) As Boolean
		  dim compare as uinteger = 2 ^ bit
		  return (i and compare) = compare
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBit(extends byref i as UInteger,  bit as integer)
		  dim compare as uinteger = 2 ^ bit
		  i = i or compare
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShiftLeft(Extends I as Uinteger, shift as integer) As UInteger
		  Return I *(2^shift)
		End Function
	#tag EndMethod


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
