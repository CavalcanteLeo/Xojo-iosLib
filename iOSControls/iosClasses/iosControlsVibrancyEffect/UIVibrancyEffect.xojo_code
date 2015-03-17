#tag Class
Protected Class UIVibrancyEffect
Inherits UIVisualEffectView
	#tag Method, Flags = &h1000
		Sub Constructor()
		  declare function notificationCenterVibrancyEffect lib UIKit selector "notificationCenterVibrancyEffect" (id as ptr) as ptr
		  mHandle = notificationCenterVibrancyEffect (ClassPtr)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Effect as UIBlurEffect)
		  declare function effectForBlurEffect lib UIKit selector "effectForBlurEffect:" (id as ptr, effect as ptr) as ptr
		  mHandle = effectForBlurEffect (ClassPtr, effect.Handle)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIVibrancyEffect")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHandle
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mHandle As Ptr
	#tag EndProperty


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