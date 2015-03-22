#tag Class
Protected Class iOSLibCALayer
Inherits iOSLibresponder
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aLayer As iOSLibCALayer)
		  Declare Function initWithLayer lib UIKit selector "initWithLayer:" (id as ptr, aLayer as ptr) as Ptr
		  Super.Constructor (initWithLayer (alloc(ClassPtr), aLayer.Id))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function affineTransform lib UIKit selector "affineTransform" (id as ptr) as CGAffineTransform32Bit
			    return affineTransform(id).toCGAffineTransform
			  #elseif Target64Bit
			    DEclare Function affineTransform lib UIKit selector "affineTransform" (id as ptr) as CGAffineTransform
			    return affineTransform (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setAffineTransform lib UIKit selector "setAffineTransform:" (id as ptr, value as CGAffineTransform32Bit)
			    setAffineTransform id, value.toCGAffineTransform32Bit
			  #elseif Target64Bit
			    DEclare Sub setAffineTransform lib UIKit selector "setAffineTransform:" (id as ptr, value as CGAffineTransform)
			    setAffineTransform id, value
			  #endif
			  
			End Set
		#tag EndSetter
		AffineTransform As CGAffineTransform
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function anchorPoint lib UIKit selector "anchorPoint" (id as ptr) as NSPoint32Bit
			    return anchorPoint(id).toNSPoint
			  #elseif Target64Bit
			    DEclare Function anchorPoint lib UIKit selector "anchorPoint" (id as ptr) as NSPoint
			    return anchorPoint (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setAnchorPoint lib UIKit selector "setAnchorPoint:" (id as ptr, value as NSPoint32Bit)
			    setAnchorPoint id, value.toNSPoint32
			  #elseif Target64Bit
			    DEclare Sub setAnchorPoint lib UIKit selector "setAnchorPoint:" (id as ptr, value as NSPoint)
			    setAnchorPoint id, value
			  #endif
			  
			End Set
		#tag EndSetter
		AnchorPoint As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function anchorPointZ lib UIKit selector "anchorPointZ" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function anchorPointZ lib UIKit selector "anchorPointZ" (id as ptr) as Double
			  #endif
			  return anchorPointZ (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setAnchorPointZ lib UIKit selector "setAnchorPointZ:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setAnchorPointZ lib UIKit selector "setAnchorPointZ:" (id as ptr, value as Double)
			  #endif
			  setAnchorPointZ id, value
			  
			End Set
		#tag EndSetter
		AnchorPointZ As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function backgroundcolor lib UIKit selector "backgroundColor" (id as ptr) as ptr
			  return new iOSLibcgColor (backgroundcolor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setbackgroundcolor lib UIKit selector "setBackgroundColor:" (id as ptr, value as ptr)
			  setbackgroundcolor id, value.CFTypeRef
			End Set
		#tag EndSetter
		BackgroundColor As iOSLibCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function borderColor lib UIKit selector "borderColor" (id as ptr) as ptr
			  return new iosLibCGColor (borderColor (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setBorderColor lib UIKit selector "setBorderColor:" (id as ptr, value as ptr)
			  setBorderColor id, value.CFTypeRef
			  
			End Set
		#tag EndSetter
		BorderColor As iOSLibCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function borderWidth lib UIKit selector "borderWidth" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function borderWidth lib UIKit selector "borderWidth" (id as ptr) as Double
			  #endif
			  return borderWidth (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setBorderWidth lib UIKit selector "setBorderWidth:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setBorderWidth lib UIKit selector "setBorderWidth:" (id as ptr, value as Double)
			  #endif
			  setBorderWidth id, value
			  
			End Set
		#tag EndSetter
		BorderWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getbounds
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBounds value
			End Set
		#tag EndSetter
		Bounds As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CALayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function contents lib uikit selector "contents" (id as Ptr) as ptr
			  dim myptr as ptr = contents(id)
			  return if (myptr <> NIL, new iOSLibObject (myptr), NIL)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setcontents lib uikit selector "setContents:" (id as Ptr, value as ptr)
			  setcontents (id, value.Id)
			  
			End Set
		#tag EndSetter
		Contents As iOSLibObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    Declare Function contentsCenter lib uikit selector "contentsCenter" (id as ptr) as NSRect32Bit
			    return contentsCenter(id).toNSRect
			  #elseif Target64Bit
			    Declare Function contentsCenter lib UIKit selector "contentsCenter" (id as ptr) as NSRect
			    return contentsCenter (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setContentsCenter lib UIKit selector "setContentsCenter:" (id as ptr, value as NSRect32Bit)
			    setContentsCenter id, value.toNSRect32
			  #elseif Target64Bit
			    DEclare Sub setContentsCenter lib UIKit selector "setContentsCenter:" (id as ptr, value as nsrect)
			    setContentsCenter id, value
			  #endif
			  
			End Set
		#tag EndSetter
		ContentsCenter As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function contentsAreFlipped lib UIKit selector "contentsAreFlipped" (id as ptr) as Boolean
			  return contentsAreFlipped (id)
			  
			End Get
		#tag EndGetter
		ContentsFlipped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function contentsRect lib uikit selector "contentsRect" (id as ptr) as NSRect32Bit
			    return contentsRect(id).toNSRect
			  #elseif Target64Bit
			    DEclare Function contentsRect uikit selector "contentsRect" (id as ptr) as NSRect
			    return contentsRect (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setContentsRect lib uikit selector "setContentsRect:" (id as ptr, value as NSRect32Bit)
			    setContentsRect id, value.toNSRect32
			  #elseif Target64Bit
			    DEclare Sub setContentsRect lib uikit selector "setContentsRect:" (id as ptr, value as NSRect)
			    setContentsRect id, value
			  #endif
			  
			End Set
		#tag EndSetter
		ContentsRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function contentsScale lib UIKit selector "contentsScale" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function contentsScale lib UIKit selector "contentsScale" (id as ptr) as Double
			  #endif
			  return contentsScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setContentsScale lib UIKit selector "setContentsScale:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setContentsScale lib UIKit selector "setContentsScale:" (id as ptr, value as Double)
			  #endif
			  setContentsScale id, value
			  
			End Set
		#tag EndSetter
		ContentsScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function cornerRadius lib UIKit selector "cornerRadius" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function cornerRadius lib UIKit selector "cornerRadius" (id as ptr) as Double
			  #endif
			  return cornerRadius (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setCornerRadius lib UIKit selector "setCornerRadius:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setCornerRadius lib UIKit selector "setCornerRadius:" (id as ptr, value as Double)
			  #endif
			  setCornerRadius id, value
			  
			End Set
		#tag EndSetter
		CornerRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim myptr as ptr = getDelegate
			  return if (myptr <> NIL, new iOSLibView (myptr), NIL)
			End Get
		#tag EndGetter
		DelegateiosLibView As iosLibView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function doubleSided lib UIKit selector "isDoubleSided" (id as ptr) as Boolean
			  return doubleSided (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub doubleSided lib UIKit selector "setDoubleSided:" (id as ptr, value as boolean)
			  doubleSided id, value
			  
			End Set
		#tag EndSetter
		DoubleSided As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function drawsAsynchronously lib UIKit selector "drawsAsynchronously" (id as ptr) as Boolean
			  return drawsAsynchronously (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setDrawsAsynchronously lib UIKit selector "setDrawsAsynchronously:" (id as ptr, value as boolean)
			  setDrawsAsynchronously id, value
			End Set
		#tag EndSetter
		DrawsAsynchronously As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function allowsEdgeAntialiasing lib UIKit selector "allowsEdgeAntialiasing" (id as ptr) as Boolean
			  return allowsEdgeAntialiasing (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setAllowsEdgeAntialiasing lib UIKit selector "setAllowsEdgeAntialiasing:" (id as ptr, value as Boolean)
			  setAllowsEdgeAntialiasing id, value
			  
			End Set
		#tag EndSetter
		EdgeAntialiasing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function edgeAntialiasingMask lib UIKit selector "edgeAntialiasingMask" (id as ptr) as UInt32
			  return new ioslibCAEdgeAntialiasingMask (edgeAntialiasingMask(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setEdgeAntialiasingMask lib UIKit selector "setEdgeAntialiasingMask:" (id as ptr, value as uint32)
			  setEdgeAntialiasingMask id, value.ID
			End Set
		#tag EndSetter
		EdgeAntialiasingMask As iOSLibCAEdgeAntialiasingMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getFrame
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFrame value
			End Set
		#tag EndSetter
		Frame As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function geometryFlipped lib UIKit selector "isGeometryFlipped" (id as ptr) as Boolean
			  return geometryFlipped (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setGeometryFlipped lib UIKit selector "setGeometryFlipped:" (id as ptr, value as Boolean)
			  setGeometryFlipped id, value
			  
			End Set
		#tag EndSetter
		GeometryFlipped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function allowsGroupOpacity lib UIKit selector "allowsGroupOpacity" (id as ptr) as Boolean
			  return allowsGroupOpacity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setAllowsGroupOpacity lib UIKit selector "setAllowsGroupOpacity:" (id as ptr, value as Boolean)
			  setAllowsGroupOpacity id, value
			  
			End Set
		#tag EndSetter
		GroupOpacity As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function hidden lib UIKit selector "isHidden" (id as ptr) as Boolean
			  return hidden (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setHidden lib UIKit selector "setHidden:" (id as ptr, value as Boolean)
			  setHidden id, value
			  
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function mask lib UIKit selector "mask" (id as ptr) as ptr
			  dim myptr as ptr = mask (id)
			  return if (myptr <> NIL, new iOSLibCALayer (myptr), NIL)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setMask lib UIKit selector "setMask:" (id as ptr, value as ptr)
			  setMask id, value.Id
			End Set
		#tag EndSetter
		Mask As iOSLibCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function masksToBounds lib UIKit selector "masksToBounds" (id as ptr) as Boolean
			  return masksToBounds (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setMasksToBounds lib UIKit selector "setMasksToBounds:" (id as ptr, value as Boolean)
			  setMasksToBounds id, value
			  
			End Set
		#tag EndSetter
		MasksToBounds As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function modelLayer lib UIKit selector "modelLayer" (id as ptr) as ptr
			  dim myptr as ptr = modelLayer (id)
			  return if (myptr <> NIL, new iOSLibCALayer (myptr), NIL)
			  
			End Get
		#tag EndGetter
		ModelLayer As iOSLibCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function opacity lib UIKit selector "opacity" (id as ptr) as single
			  return opacity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setOpacity lib UIKit selector "setOpacity:" (id as ptr, value as single)
			  setopacity id, value
			  
			End Set
		#tag EndSetter
		Opacity As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getOpaque
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setOpaque (value)
			End Set
		#tag EndSetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function position lib UIKit selector "position" (id as ptr) as NSPoint32Bit
			    return position(id).toNSPoint
			  #elseif Target64Bit
			    DEclare Function position lib UIKit selector "position" (id as ptr) as NSPoint
			    return position (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setPosition lib UIKit selector "setPosition:" (id as ptr, value as NSPoint32Bit)
			    setPosition id, value.toNSPoint32
			  #elseif Target64Bit
			    DEclare Sub setPosition lib UIKit selector "setPosition:" (id as ptr, value as NSPoint)
			    setPosition id, value
			  #endif
			  
			End Set
		#tag EndSetter
		Position As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function presentationLayer lib UIKit selector "presentationLayer" (id as ptr) as ptr
			  return new iOSLibCALayer (presentationLayer (id))
			  
			End Get
		#tag EndGetter
		PresentationLayer As iOSLibCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function rasterizationScale lib UIKit selector "rasterizationScale" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function rasterizationScale lib UIKit selector "rasterizationScale" (id as ptr) as Double
			  #endif
			  return rasterizationScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setRasterizationScale lib UIKit selector "setRasterizationScale:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setRasterizationScale lib UIKit selector "setRasterizationScale:" (id as ptr, value as Double)
			  #endif
			  setRasterizationScale id, value
			  
			End Set
		#tag EndSetter
		RasterizationScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shadowColor lib UIKit selector "shadowColor" (id as ptr) as ptr
			  return new iosLibCGColor (shadowColor (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShadowColor lib UIKit selector "setShadowColor:" (id as ptr, value as ptr)
			  setShadowColor id, value.CFTypeRef
			End Set
		#tag EndSetter
		ShadowColor As iOSLibCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function shadowOffset lib UIKit selector "shadowOffset" (id as ptr) as NSSize32Bit
			    return shadowOffset(id).toNSSize
			  #elseif Target64Bit
			    DEclare Function shadowOffset lib UIKit selector "shadowOffset" (id as ptr) as NSSize
			    return shadowOffset (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setShadowOffset lib UIKit selector "setShadowOffset:" (id as ptr, value as NSSize32Bit)
			    setShadowOffset id, value.toNSSize32
			  #elseif Target64Bit
			    DEclare Sub setShadowOffset lib UIKit selector "setShadowOffset:" (id as ptr, value as NSSize)
			    setShadowOffset id, value
			  #endif
			End Set
		#tag EndSetter
		ShadowOffset As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shadowOpacity lib  UIKit selector "shadowOpacity" (id as ptr) as single
			  return shadowOpacity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShadowOpacity lib UIKit selector "setShadowOpacity:" (id as ptr, value as single)
			  setShadowOpacity id, value
			  
			End Set
		#tag EndSetter
		ShadowOpacity As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function shadowRadius lib UIKit selector "shadowRadius" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function shadowRadius lib UIKit selector "shadowRadius" (id as ptr) as Double
			  #endif
			  return shadowRadius (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setShadowRadius lib UIKit selector "setShadowRadius:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setShadowRadius lib UIKit selector "setShadowRadius:" (id as ptr, value as Double)
			  #endif
			  setShadowRadius id, value
			  
			End Set
		#tag EndSetter
		ShadowRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shouldRasterize lib UIKit selector "shouldRasterize" (id as ptr) as Boolean
			  return shouldRasterize (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShouldRasterize lib UIKit selector "setShouldRasterize:" (id as ptr, value as Boolean)
			  setShouldRasterize id, value
			End Set
		#tag EndSetter
		ShouldRasterize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function transform lib UIKit selector "transform" (id as ptr) as CATransform3D32Bit
			    return transform(id).toCATransform3D
			  #elseif Target64Bit
			    DEclare Function transform lib UIKit selector "transform" (id as ptr) as CATransform3D
			    return transform (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setTransform lib UIKit selector "setTransform:" (id as ptr, value as CATransform3D32Bit)
			    setTransform id, value.toCATransform3D32Bit
			  #elseif Target64Bit
			    DEclare Sub setTransform lib UIKit selector "setTransform:" (id as ptr, value as CATransform3D)
			    setTransform id, value
			  #endif
			  
			End Set
		#tag EndSetter
		Transform As CATransform3D
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function zPosition lib UIKit selector "zPosition" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function zPosition lib UIKit selector "zPosition" (id as ptr) as Double
			  #endif
			  return zPosition (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setZPosition lib UIKit selector "setZPosition:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setZPosition lib UIKit selector "setZPosition:" (id as ptr, value as Double)
			  #endif
			  setZPosition id, value
			  
			End Set
		#tag EndSetter
		ZPosition As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AnchorPointZ"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CornerRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleSided"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawsAsynchronously"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EdgeAntialiasing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GroupOpacity"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MasksToBounds"
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
			Name="Opacity"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RasterizationScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowOpacity"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldRasterize"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass