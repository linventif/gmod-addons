--hook.Add("OnUndo", "Props_Number_Undo", function(ply)
--    net.Start( "props_player_undo" )
--    net.SendToServer()
--end) 
  
CML = CML or {}
CML.BorderColor = Color(255, 255, 255, 230)
CML.InColor = Color(255, 255, 255, 230)

net.Receive( "ply_say_commandes", function()

    local CMM = vgui.Create("DFrame") 
--    CMM:SetSize(1080, 720) 
    CMM:SetSize(1080, 620) 
    CMM:Center() 
    CMM:SetTitle("Commands Menu by Linventif | v0.1")
    CMM:MakePopup()
    CMM:GetBackgroundBlur(true) 
    CMM.Paint = function(s, w, h)

        draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 230))

        draw.RoundedBox(2, 0, 0, 2, 22, CML.BorderColor)
        draw.RoundedBox(2, 0, 0, 23, 2, CML.BorderColor)        

--      draw.RoundedBox(2, 0, 697, 2, 22, CML.BorderColor)
--      draw.RoundedBox(2, 0, 718, 23, 2, CML.BorderColor)
        draw.RoundedBox(2, 0, 597, 2, 22, CML.BorderColor)
        draw.RoundedBox(2, 0, 618, 23, 2, CML.BorderColor)

        draw.RoundedBox(2, 1078, 0, 2, 22, CML.BorderColor)
        draw.RoundedBox(2, 1057, 0, 23, 2, CML.BorderColor)        

--      draw.RoundedBox(2, 1078, 697, 2, 22, CML.BorderColor)
--      draw.RoundedBox(2, 1057, 718, 23, 2, CML.BorderColor)
        draw.RoundedBox(2, 1078, 597, 2, 22, CML.BorderColor)
        draw.RoundedBox(2, 1057, 618, 23, 2, CML.BorderColor)

        draw.SimpleText( "Commandes Informations", "Trebuchet24", 185, 60, color_white, TEXT_ALIGN_CENTER )
        draw.SimpleText( "Commandes Addons", "Trebuchet24", 540, 60, color_white, TEXT_ALIGN_CENTER )
        draw.SimpleText( "Commandes Debug", "Trebuchet24", 895, 60, color_white, TEXT_ALIGN_CENTER )

        draw.SimpleText( "Commandes Informations", "Trebuchet24", 185, 350, color_white, TEXT_ALIGN_CENTER )
        draw.SimpleText( "Commandes Addons", "Trebuchet24", 540, 350, color_white, TEXT_ALIGN_CENTER )
        draw.SimpleText( "Commandes Debug", "Trebuchet24", 895, 350, color_white, TEXT_ALIGN_CENTER )
        

        --draw.SimpleText(text, font="DermaDefault", x=0, y=0, color=Color(255,255,255,255), xAlign=TEXT_ALIGN_LEFT, yAlign=TEXT_ALIGN_TOP)
    end

--[[ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]]--

    local Button_19 = vgui.Create( "DButton", CMM )
    Button_19:SetText( "Discord" )					
    Button_19:SetPos( 40, 120 )					
    Button_19:SetSize( 125, 60 )		
    Button_19:SetTextColor( color_white )
    Button_19.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_19.DoClick = function()			
    	gui.OpenURL("https://discord.gg/EkVPk9y")		
    end


    local Button_20 = vgui.Create( "DButton", CMM )
    Button_20:SetText( "Workshop" )					
    Button_20:SetPos( 40, 220 )					
    Button_20:SetSize( 125, 60 )		
    Button_20:SetTextColor( color_white )
    Button_20.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_20.DoClick = function()			
    	gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=2397004463")			
    end


--    local Button_21 = vgui.Create( "DButton", CMM )
--    Button_21:SetText( "" )					
--    Button_21:SetPos( 40, 320 )					
--    Button_21:SetSize( 125, 60 )		
--    Button_21:SetTextColor( color_white )
--    Button_21.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_21.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end


    local Button_22 = vgui.Create( "DButton", CMM )
    Button_22:SetText( "" )					
    Button_22:SetPos( 40, 420 )					
    Button_22:SetSize( 125, 60 )		
    Button_22:SetTextColor( color_white )
    Button_22.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_22.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


    local Button_23 = vgui.Create( "DButton", CMM )
    Button_23:SetText( "" )					
    Button_23:SetPos( 40, 520 )					
    Button_23:SetSize( 125, 60 )		
    Button_23:SetTextColor( color_white )
    Button_23.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_23.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_24 = vgui.Create( "DButton", CMM )
--    Button_24:SetText( "" )					
--    Button_24:SetPos( 40, 620 )					
--    Button_24:SetSize( 125, 60 )		
--    Button_24:SetTextColor( color_white )
--    Button_24.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_24.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end

--[[ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]]--

    local Button_1 = vgui.Create( "DButton", CMM )
    Button_1:SetText( "Forum" )					
    Button_1:SetPos( 205, 120 )					
    Button_1:SetSize( 125, 60 )		
    Button_1:SetTextColor( color_white )
    Button_1.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_1.DoClick = function()			
    	gui.OpenURL("https://linventif.fr/forum")		
    end


    local Button_2 = vgui.Create( "DButton", CMM )
    Button_2:SetText( "Boutique" )					
    Button_2:SetPos( 205, 220 )					
    Button_2:SetSize( 125, 60 )		
    Button_2:SetTextColor( color_white )
    Button_2.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_2.DoClick = function()		
    	gui.OpenURL("https://linventif.fr")			
    end


--    local Button_3 = vgui.Create( "DButton", CMM )
--    Button_3:SetText( "" )					
--    Button_3:SetPos( 205, 320 )					
--    Button_3:SetSize( 125, 60 )		
--    Button_3:SetTextColor( color_white )
--    Button_3.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_3.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end


    local Button_4 = vgui.Create( "DButton", CMM )
    Button_4:SetText( "" )					
    Button_4:SetPos( 205, 420 )					
    Button_4:SetSize( 125, 60 )		
    Button_4:SetTextColor( color_white )
    Button_4.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_4.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


    local Button_5 = vgui.Create( "DButton", CMM )
    Button_5:SetText( "" )					
    Button_5:SetPos( 205, 520 )					
    Button_5:SetSize( 125, 60 )		
    Button_5:SetTextColor( color_white )
    Button_5.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_5.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_6 = vgui.Create( "DButton", CMM )
--    Button_6:SetText( "" )					
--    Button_6:SetPos( 205, 620 )					
--    Button_6:SetSize( 125, 60 )		
--    Button_6:SetTextColor( color_white )
--    Button_6.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_6.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end

--[[ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]]--

    local Button_7 = vgui.Create( "DButton", CMM )
    Button_7:SetText( "Unbox" )					
    Button_7:SetPos( 395, 120 )					
    Button_7:SetSize( 125, 60 )		
    Button_7:SetTextColor( color_white )
    Button_7.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_7.DoClick = function()			
    	RunConsoleCommand( "say", "!unbox" )			
    end


    local Button_8 = vgui.Create( "DButton", CMM )
    Button_8:SetText( "" )					
    Button_8:SetPos( 395, 220 )					
    Button_8:SetSize( 125, 60 )		
    Button_8:SetTextColor( color_white )
    Button_8.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_8.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_9 = vgui.Create( "DButton", CMM )
--    Button_9:SetText( "" )					
--    Button_9:SetPos( 395, 320 )					
--    Button_9:SetSize( 125, 60 )		
--    Button_9:SetTextColor( color_white )
--    Button_9.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_9.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end


    local Button_10 = vgui.Create( "DButton", CMM )
    Button_10:SetText( "" )					
    Button_10:SetPos( 395, 420 )					
    Button_10:SetSize( 125, 60 )		
    Button_10:SetTextColor( color_white )
    Button_10.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_10.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


    local Button_11 = vgui.Create( "DButton", CMM )
    Button_11:SetText( "" )					
    Button_11:SetPos( 395, 520 )					
    Button_11:SetSize( 125, 60 )		
    Button_11:SetTextColor( color_white )
    Button_11.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_11.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_12 = vgui.Create( "DButton", CMM )
--    Button_12:SetText( "" )					
--    Button_12:SetPos( 395, 620 )					
--    Button_12:SetSize( 125, 60 )		
--    Button_12:SetTextColor( color_white )
--    Button_12.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_12.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end

--[[ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]]--

    local Button_13 = vgui.Create( "DButton", CMM )
    Button_13:SetText( "Points" )					
    Button_13:SetPos( 560, 120 )					
    Button_13:SetSize( 125, 60 )		
    Button_13:SetTextColor( color_white )
    Button_13.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_13.DoClick = function()			
    	RunConsoleCommand( "say", "!points" )			
    end


    local Button_14 = vgui.Create( "DButton", CMM )
    Button_14:SetText( "" )					
    Button_14:SetPos( 560, 220 )					
    Button_14:SetSize( 125, 60 )		
    Button_14:SetTextColor( color_white )
    Button_14.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_14.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_15 = vgui.Create( "DButton", CMM )
--    Button_15:SetText( "" )					
--    Button_15:SetPos( 560, 320 )					
--    Button_15:SetSize( 125, 60 )		
--    Button_15:SetTextColor( color_white )
--    Button_15.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_15.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end


    local Button_16 = vgui.Create( "DButton", CMM )
    Button_16:SetText( "" )					
    Button_16:SetPos( 560, 420 )					
    Button_16:SetSize( 125, 60 )		
    Button_16:SetTextColor( color_white )
    Button_16.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_16.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


    local Button_17 = vgui.Create( "DButton", CMM )
    Button_17:SetText( "" )					
    Button_17:SetPos( 560, 520 )					
    Button_17:SetSize( 125, 60 )		
    Button_17:SetTextColor( color_white )
    Button_17.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_17.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_18 = vgui.Create( "DButton", CMM )
--    Button_18:SetText( "" )					
--    Button_18:SetPos( 560, 620 )					
--    Button_18:SetSize( 125, 60 )		
--    Button_18:SetTextColor( color_white )
--    Button_18.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_18.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end

--[[ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]]--

    local Button_7 = vgui.Create( "DButton", CMM )
    Button_7:SetText( "Ticket" )					
    Button_7:SetPos( 750, 120 )					
    Button_7:SetSize( 125, 60 )		
    Button_7:SetTextColor( color_white )
    Button_7.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_7.DoClick = function()			
    	RunConsoleCommand( "say", "!ticket" )			
    end


    local Button_8 = vgui.Create( "DButton", CMM )
    Button_8:SetText( "" )					
    Button_8:SetPos( 750, 220 )					
    Button_8:SetSize( 125, 60 )		
    Button_8:SetTextColor( color_white )
    Button_8.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_8.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_9 = vgui.Create( "DButton", CMM )
--    Button_9:SetText( "" )					
--    Button_9:SetPos( 750, 320 )					
--    Button_9:SetSize( 125, 60 )		
--    Button_9:SetTextColor( color_white )
--    Button_9.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_9.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end


    local Button_10 = vgui.Create( "DButton", CMM )
    Button_10:SetText( "" )					
    Button_10:SetPos( 750, 420 )					
    Button_10:SetSize( 125, 60 )		
    Button_10:SetTextColor( color_white )
    Button_10.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_10.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


    local Button_11 = vgui.Create( "DButton", CMM )
    Button_11:SetText( "" )					
    Button_11:SetPos( 750, 520 )					
    Button_11:SetSize( 125, 60 )		
    Button_11:SetTextColor( color_white )
    Button_11.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_11.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


--    local Button_12 = vgui.Create( "DButton", CMM )
--    Button_12:SetText( "" )					
--    Button_12:SetPos( 750, 620 )					
--    Button_12:SetSize( 125, 60 )		
--    Button_12:SetTextColor( color_white )
--    Button_12.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_12.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end

--[[ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]]--

    local Button_13 = vgui.Create( "DButton", CMM )
    Button_13:SetText( "FPS⠀Boost" )					
    Button_13:SetPos( 915, 120 )					
    Button_13:SetSize( 125, 60 )		
    Button_13:SetTextColor( color_white )
    Button_13.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_13.DoClick = function()			
    	RunConsoleCommand( "say", "!fps" )			
    end


    local Button_14 = vgui.Create( "DButton", CMM )
    Button_14:SetText( "Stop Sound" )					
    Button_14:SetPos( 915, 220 )					
    Button_14:SetSize( 125, 60 )		
    Button_14:SetTextColor( color_white )
    Button_14.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_14.DoClick = function()			
    	RunConsoleCommand( "stopsound" )			
    end


--    local Button_15 = vgui.Create( "DButton", CMM )
--    Button_15:SetText( "" )					
--    Button_15:SetPos( 915, 320 )					
--    Button_15:SetSize( 125, 60 )		
--    Button_15:SetTextColor( color_white )
--    Button_15.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_15.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end


    local Button_16 = vgui.Create( "DButton", CMM )
    Button_16:SetText( "" )					
    Button_16:SetPos( 915, 420 )					
    Button_16:SetSize( 125, 60 )		
    Button_16:SetTextColor( color_white )
    Button_16.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_16.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" )			
    end


    local Button_17 = vgui.Create( "DButton", CMM )
    Button_17:SetText( "" )					
    Button_17:SetPos( 915, 520 )					
    Button_17:SetSize( 125, 60 )		
    Button_17:SetTextColor( color_white )
    Button_17.Paint = function(s, w, h)
        surface.SetDrawColor(Color(255, 255, 255, 255))
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end

    Button_17.DoClick = function()			
    	RunConsoleCommand( "say", "Hi" ) 			
    end


--    local Button_18 = vgui.Create( "DButton", CMM )
--    Button_18:SetText( "" )					
--    Button_18:SetPos( 915, 620 )					
--    Button_18:SetSize( 125, 60 )		
--    Button_18:SetTextColor( color_white )
--    Button_18.Paint = function(s, w, h)
--        surface.SetDrawColor(Color(255, 255, 255, 255))
--        surface.DrawOutlinedRect(0, 0, 125, 60)
--    end
--
--    Button_18.DoClick = function()			
--    	RunConsoleCommand( "say", "Hi" )			
--    end

end)