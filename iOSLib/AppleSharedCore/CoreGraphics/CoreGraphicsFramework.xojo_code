#tag Module
Protected Module CoreGraphicsFramework
	#tag Method, Flags = &h0
		Function CGAffineTransformConcat(T1 As CGAffineTransform, T2 As CGAffineTransform) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformConcat lib CoreGraphicsLibName (T1 As CGAffineTransform32Bit, T2 As CGAffineTransform32Bit) as CGAffineTransform32Bit
		    return CGAffineTransformConcat (T1.toCGAffineTransform32Bit, T2.toCGAffineTransform32Bit).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformConcat lib CoreGraphicsLibName (T1 As CGAffineTransform, T2 As CGAffineTransform) as CGAffineTransform
		    return CGAffineTransformConcat (T1, T2)
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformIdentity() As CGAffineTransform
		  static mResult as CGAffineTransform = CGAffineTransformMake (1, 0, 0, 1, 0, 0)
		  return mResult
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformInvert(T As CGAffineTransform) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformInvert lib CoreGraphicsLibName (T As CGAffineTransform32Bit) as CGAffineTransform32Bit
		    return CGAffineTransformInvert (T.toCGAffineTransform32Bit).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformInvert lib CoreGraphicsLibName (T As CGAffineTransform) as CGAffineTransform
		    return CGAffineTransformInvert (T)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMake(a as Double, b as Double, c as Double, d as Double, tx as Double, ty as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMake lib CoreGraphicsLibName (a as Single, b as Single, c as Single, d as Single, tx as Single, ty as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMake(a, b, c, d, tx, ty).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMake lib CoreGraphicsLibName (a as Double, b as Double, c as Double, d as Double, tx as Double, ty as Double) as CGAffineTransform
		    return CGAffineTransformMake (a, b, c, d, tx, ty)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMakeRotation(angle as double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMakeRotation lib CoreGraphicsLibName (angle as single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeRotation(angle).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeRotation lib CoreGraphicsLibName (angle as double) as CGAffineTransform
		    return CGAffineTransformMakeRotation (angle)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMakeScale(scaleX as double, scaleY as Double = 0) As CGAffineTransform
		  if scaleY = 0 then scaleY = scaleX // scale proportionally if only one value is supplied
		  #if target32bit
		    Declare function CGAffineTransformMakeScale lib CoreGraphicsLibName (scaleX as single, ScaleY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeScale(ScaleX, ScaleY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeScale lib CoreGraphicsLibName (scaleX as Double, ScaleY as Double) as CGAffineTransform
		    return CGAffineTransformMakeScale(ScaleX, ScaleY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMakeTranslation(DeltaX as double, DeltaY as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMakeTranslation lib CoreGraphicsLibName (DeltaX as single, DeltaY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeTranslation(DeltaX, DeltaY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeTranslation lib CoreGraphicsLibName (DeltaX as Double, DeltaY as Double) as CGAffineTransform
		    return CGAffineTransformMakeTranslation(DeltaX, DeltaY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformRotate(T As CGAffineTransform, angle as double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformRotate lib CoreGraphicsLibName (T As CGAffineTransform32Bit, angle as single) as CGAffineTransform32Bit
		    return CGAffineTransformRotate (T.toCGAffineTransform32Bit, angle).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformRotate lib CoreGraphicsLibName (T As CGAffineTransform, angle as double) as CGAffineTransform
		    return CGAffineTransformRotate (T, angle)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformScale(T as CGAffineTransform, scaleX as double, scaleY as Double = 0) As CGAffineTransform
		  if scaleY = 0 then scaleY = scaleX // scale proportionally if only one value is supplied
		  #if target32bit
		    Declare function CGAffineTransformScale lib CoreGraphicsLibName (T as CGAffineTransform32Bit, scaleX as single, ScaleY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformScale (t.toCGAffineTransform32Bit, ScaleX, ScaleY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformScale lib CoreGraphicsLibName (T as CGAffineTransform, scaleX as Double, ScaleY as Double) as CGAffineTransform
		    return CGAffineTransformScale (T, ScaleX, ScaleY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformTranslate(T as CGAffineTransform, DeltaX as double, DeltaY as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformTranslate lib CoreGraphicsLibName (T as CGAffineTransform32bit, DeltaX as single, DeltaY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformTranslate (t.toCGAffineTransform32Bit, DeltaX, DeltaY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformTranslate lib CoreGraphicsLibName (T as CGAffineTransform, DeltaX as Double, DeltaY as Double) as CGAffineTransform
		    return CGAffineTransformTranslate (T, DeltaX, DeltaY)
		  #endif
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGAffineTransformIdentity
			End Get
		#tag EndGetter
		ioslibCGAffineTransformIdentity As CGAffineTransform
	#tag EndComputedProperty


	#tag Constant, Name = CoreGraphicsLibName, Type = Text, Dynamic = False, Default = \"CoreGraphics.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreGraphicsPath, Type = Text, Dynamic = False, Default = \"com.apple.CoreGraphics", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreImage, Type = Text, Dynamic = False, Default = \"QuartzCore.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreImagePath, Type = Text, Dynamic = False, Default = \"com.apple.CoreImage", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CGAffineTransform, Flags = &h0
		a as double
		  b as double
		  c as double
		  d as double
		  tx as double
		ty as double
	#tag EndStructure

	#tag Structure, Name = CGAffineTransform32Bit, Flags = &h0
		a as single
		  b as Single
		  c as Single
		  d as Single
		  tx as Single
		ty as Single
	#tag EndStructure


	#tag Enum, Name = CGBlendMode, Type = UInt32, Flags = &h0
		Normal
		  Multiply
		  Screen
		  Overlay
		  Darken
		  Lighten
		  ColorDodge
		  ColorBurn
		  SoftLight
		  HardLight
		  Difference
		  Exclusion
		  Hue
		  Saturation
		  Color
		  Luminosity
		  Clear
		  Copy
		  SourceIn
		  SourceOut
		  SourceAtop
		  DestinationOver
		  DestinationIn
		  DestinationOut
		  DestinationAtop
		  ModeXOR
		  PlusDarker
		PlusLighter
	#tag EndEnum

	#tag Enum, Name = CGColorRenderingIntent, Type = UInt32, Flags = &h0
		Default
		  AbsoluteColorimetric
		  RelativeColorimetric
		  Perceptual
		Saturation
	#tag EndEnum

	#tag Enum, Name = CGInterpolationQuality, Flags = &h0
		Default = 0
		  None = 1
		  Low = 2
		  Medium = 4
		High = 3
	#tag EndEnum

	#tag Enum, Name = CGLineCap, Type = UInt32, Flags = &h0
		Butt
		  Round
		Square
	#tag EndEnum

	#tag Enum, Name = CGLineJoin, Type = UInt32, Flags = &h0
		Miter
		  Round
		Bevel
	#tag EndEnum

	#tag Enum, Name = CGPathDrawingMode, Flags = &h0
		Fill
		  EvenOddFill
		  Stroke
		  FillStroke
		EvenOddFillStroke
	#tag EndEnum

	#tag Enum, Name = CGTextDrawingMode, Type = UInt32, Flags = &h0
		Fill
		  Stroke
		  FillStroke
		  Invisible
		  FillClip
		  StrokeClip
		  FillStrokeClip
		Clip
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
