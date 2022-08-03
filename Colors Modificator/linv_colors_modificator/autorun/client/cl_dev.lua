local color_mode = {
    ["$pp_colour_addr"]         = 0,
    ["$pp_colour_addg"]         = 0,
    ["$pp_colour_addb"]         = 0,
    ["$pp_colour_brightness"]   = 0,
    ["$pp_colour_contrast"]     = 1,
    ["$pp_colour_colour"]       = 1
}

net.Receive( "open_colors_menu", function()
    local Main_Frame = vgui.Create("DFrame")
    Main_Frame:SetSize(1080, 720)  
    Main_Frame:Center() 
    Main_Frame:SetTitle("")
    Main_Frame:MakePopup()
    Main_Frame:SetDraggable(false)
    Main_Frame:ShowCloseButton(false)

    Main_Frame.Paint = function(s, w, h)
        draw.RoundedBox(8, 0, 0, w, h, LIN_Color_Modif.BackGroundColor)
    end

    local DermaButton = vgui.Create( "DButton", Main_Frame ) // Create the button and parent it to the frame
    DermaButton:SetText("aa")	
    DermaButton:SetPos(1080-50, 0)	
    DermaButton:SetSize(50, 30)	        
--    DermaButton:SetImage( "https://i.imgur.com/5Wo0uWj.png" )
    DermaButton.DoClick = function()		
    	Main_Frame:Close()
    end 

--  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    local Num_Slider_1 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_1:SetPos( 50, 50 )			
    Num_Slider_1:SetSize( 300, 100 )		
    Num_Slider_1:SetText( "Add Red" )
    Num_Slider_1:SetValue( 0 )
    Num_Slider_1:SetMin( 0 )				
    Num_Slider_1:SetMax( 1 )				
    Num_Slider_1:SetDecimals( 2 )

    Num_Slider_1.OnValueChanged = function( self, value )
        color_mode["$pp_colour_addr"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(color_mode)
        end)        
    end

    local Num_Slider_2 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_2:SetPos( 50, 150 )			
    Num_Slider_2:SetSize( 300, 100 )		
    Num_Slider_2:SetText( "Add Green" )
    Num_Slider_2:SetValue( 0 )
    Num_Slider_2:SetMin( 0 )				
    Num_Slider_2:SetMax( 1 )				
    Num_Slider_2:SetDecimals( 2 )			

    Num_Slider_2.OnValueChanged = function( self, value )
        color_mode["$pp_colour_addg"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(color_mode)
        end)        
    end
 
    local Num_Slider_3 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_3:SetPos( 50, 250 )			
    Num_Slider_3:SetSize( 300, 100 )		
    Num_Slider_3:SetText( "Add Blue" )
    Num_Slider_3:SetValue( 0 )
    Num_Slider_3:SetMin( 0 )				
    Num_Slider_3:SetMax( 1 )				
    Num_Slider_3:SetDecimals( 2 )			

    Num_Slider_3.OnValueChanged = function( self, value )
        color_mode["$pp_colour_addb"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(color_mode)
        end)        
    end
 
    local Num_Slider_4 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_4:SetPos( 550, 50 )			
    Num_Slider_4:SetSize( 300, 100 )		
    Num_Slider_4:SetText( "Brightness" )
    Num_Slider_4:SetMin( 0 )				
    Num_Slider_4:SetMax( 4 )				
    Num_Slider_4:SetDecimals( 2 )			

    Num_Slider_4.OnValueChanged = function( self, value )
        colour_brightness = math.Round( value, 2 )
    end
 
    local Num_Slider_5 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_5:SetPos( 550, 150 )			
    Num_Slider_5:SetSize( 300, 100 )		
    Num_Slider_5:SetText( "Contrast" )
    Num_Slider_5:SetMin( 0 )				
    Num_Slider_5:SetMax( 4 )				
    Num_Slider_5:SetDecimals( 2 )			

    Num_Slider_5.OnValueChanged = function( self, value )
        colour_contrast = math.Round( value, 2 )
    end
 
    local Num_Slider_6 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_6:SetPos( 550, 250 )			
    Num_Slider_6:SetSize( 300, 100 )		
    Num_Slider_6:SetText( "Color" )
    Num_Slider_6:SetMin( 0 )				
    Num_Slider_6:SetMax( 4 )				
    Num_Slider_6:SetDecimals( 2 )			

    Num_Slider_6.OnValueChanged = function( self, value )
        colour_colour = math.Round( value, 2 )
    end

    color_mode = {
        ["$pp_colour_addr"]         = colour_addr,
        ["$pp_colour_addg"]         = colour_addg,
        ["$pp_colour_addb"]         = colour_addb,
        ["$pp_colour_brightness"]   = colour_brightness,
        ["$pp_colour_contrast"]     = colour_contrast,
        ["$pp_colour_colour"]       = colour_colour
    }

    local Button_2 = vgui.Create( "DButton", Main_Frame ) // Create the button and parent it to the frame
    Button_2:SetText("aa")	
    Button_2:SetPos((1080/2)-50, 720-50)	
    Button_2:SetSize(50, 30)	  

    Button_2.DoClick = function()	
        
        
        print()		
        print()	
        PrintTable(color_mode)	
        print()		
        print()	

        
    end

--  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

end)

print("OK")