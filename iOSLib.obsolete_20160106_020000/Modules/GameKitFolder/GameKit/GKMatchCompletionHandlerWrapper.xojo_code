#tag Class
Private Class GKMatchCompletionHandlerWrapper
	#tag Method, Flags = &h0
		Sub Constructor(compHandler as GKMatchCompletionHandler)
		  completionHandler = compHandler
		  
		  Save(self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  completionHandler = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub handler(match as Ptr, err as ptr)
		  
		  if match <> nil Then
		    if err<>nil then
		      completionHandler.Invoke(new GKMatch(match), new Foundation.NSError(err))
		    else
		      completionHandler.Invoke(new GKMatch(match), nil)
		    end if
		  else
		    if err <> nil then
		      completionHandler.Invoke(nil, new Foundation.NSError(err))
		    else
		      completionHandler.Invoke(nil,nil)
		    end if
		  end if
		  
		  Remove(self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub Remove(wrapper as GameKit.GKMatchCompletionHandlerWrapper)
		  compHandlers.Remove compHandlers.IndexOf(wrapper)
		  
		  wrapper = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub Save(wrapper as GameKit.GKMatchCompletionHandlerWrapper)
		  compHandlers.Append wrapper
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared compHandlers() As GameKit.GKMatchCompletionHandlerWrapper
	#tag EndProperty

	#tag Property, Flags = &h21
		Private completionHandler As GKMatchCompletionHandler
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
