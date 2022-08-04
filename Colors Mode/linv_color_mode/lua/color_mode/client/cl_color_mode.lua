local ply = LocalPlayer()
local Color_Mode.Color = {
    ["$pp_colour_addr"]         = 0,
    ["$pp_colour_addg"]         = 0,
    ["$pp_colour_addb"]         = 0,
    ["$pp_colour_brightness"]   = 0,
    ["$pp_colour_contrast"]     = 1,
    ["$pp_colour_colour"]       = 1,
    ["$pp_colour_mulr"]         = 0,
    ["$pp_colour_mulg"]         = 0,
    ["$pp_colour_mulb"]         = 0 
}


 


net.Receive( "open_color_mode", function()

    local Main_Frame = vgui.Create("DFrame")
    Main_Frame:SetSize(Color_Mode.Config.Size["x"], Color_Mode.Config.Size["y"])
    Main_Frame:Center()
    Main_Frame:SetTitle("")
    Main_Frame:MakePopup()
    Main_Frame:SetDraggable(true)
    Main_Frame:ShowCloseButton(false)
    Main_Frame.Paint = function(s, w, h)
        draw.RoundedBox(8, 0, 0, w, h, Color_Mode.Config.BackGroundColor)
    end

    local Button_Close = vgui.Create( "DButton", Main_Frame )
    Button_Close:SetText("❌")
    Button_Close:SetColor(Color(255, 0, 0, 255))
    Button_Close:SetPos(Color_Mode.Config.Size["x"]-30, 0)
    Button_Close:SetSize(30, 30)
    Button_Close.DoClick = function()
    	Main_Frame:Close()
    end
    Button_Close.Paint = function(s, w, h)
        draw.RoundedBox(8, 0, 0, w, h, Color_Mode.Config.BackGroundColor)
    end

    local Num_Slider_1 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_1:SetPos( 50, 50 )			
    Num_Slider_1:SetSize( 300, 100 )		
    Num_Slider_1:SetText( "Add Red" )
    Num_Slider_1:SetValue( Color_Mode.Color["$pp_colour_addr"] )
    Num_Slider_1:SetMin( 0 )				
    Num_Slider_1:SetMax( 1 )		 		
    Num_Slider_1:SetDecimals( 2 )

    Num_Slider_1.OnValueChanged = function( self, value )
        Color_Mode.Color["$pp_colour_addr"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)        
    end

    local Num_Slider_2 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_2:SetPos( 50, 150 )			
    Num_Slider_2:SetSize( 300, 100 )		
    Num_Slider_2:SetText( "Add Green" )
    Num_Slider_2:SetValue( Color_Mode.Color["$pp_colour_addg"] )
    Num_Slider_2:SetMin( 0 )				
    Num_Slider_2:SetMax( 1 )				
    Num_Slider_2:SetDecimals( 2 )			

    Num_Slider_2.OnValueChanged = function( self, value )
        Color_Mode.Color["$pp_colour_addg"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)        
    end
 
    local Num_Slider_3 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_3:SetPos( 50, 250 )			
    Num_Slider_3:SetSize( 300, 100 )		
    Num_Slider_3:SetText( "Add Blue" )
    Num_Slider_3:SetValue( Color_Mode.Color["$pp_colour_addb"] )
    Num_Slider_3:SetMin( 0 )				
    Num_Slider_3:SetMax( 1 )				
    Num_Slider_3:SetDecimals( 2 )			

    Num_Slider_3.OnValueChanged = function( self, value )
        Color_Mode.Color["$pp_colour_addb"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)        
    end
 
    local Num_Slider_4 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_4:SetPos( 400, 50 )			
    Num_Slider_4:SetSize( 300, 100 )		
    Num_Slider_4:SetText( "Brightness" )
    Num_Slider_4:SetValue( Color_Mode.Color["$pp_colour_brightness"] )
    Num_Slider_4:SetMin( 0 )				
    Num_Slider_4:SetMax( 1 )				
    Num_Slider_4:SetDecimals( 2 )			

    Num_Slider_4.OnValueChanged = function( self, value )
        Color_Mode.Color["$pp_colour_brightness"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)        
    end
 
    local Num_Slider_5 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_5:SetPos( 400, 150 )			
    Num_Slider_5:SetSize( 300, 100 )		
    Num_Slider_5:SetText( "Contrast" )
    Num_Slider_5:SetValue( Color_Mode.Color["$pp_colour_contrast"] )
    Num_Slider_5:SetMin( 0 )				
    Num_Slider_5:SetMax( 1 )				
    Num_Slider_5:SetDecimals( 2 )			 

    Num_Slider_5.OnValueChanged = function( self, value )
        Color_Mode.Color["$pp_colour_contrast"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)        
    end
 
    local Num_Slider_6 = vgui.Create( "DNumSlider", Main_Frame )
    Num_Slider_6:SetPos( 400, 250 )			
    Num_Slider_6:SetSize( 300, 100 )		
    Num_Slider_6:SetText( "Color" )
    Num_Slider_6:SetValue( Color_Mode.Color["$pp_colour_colour"] )
    Num_Slider_6:SetMin( 0 )				
    Num_Slider_6:SetMax( 4 )				
    Num_Slider_6:SetDecimals( 2 )			

    Num_Slider_6.OnValueChanged = function( self, value )
        Color_Mode.Color["$pp_colour_colour"] = math.Round( value, 2 )
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)        
    end

    local Button_2 = vgui.Create( "DButton", Main_Frame ) 
    Button_2:SetText("Reset")	
    Button_2:SetPos((Color_Mode.Config.Size["x"]/2)-150, Color_Mode.Config.Size["y"]-50)	
    Button_2:SetSize(50, 30)
    
    Button_2.DoClick = function()
        Num_Slider_1:SetValue( Color_Mode.Color["$pp_colour_addr"] )
        Num_Slider_2:SetValue( Color_Mode.Color["$pp_colour_addg"] )
        Num_Slider_3:SetValue( Color_Mode.Color["$pp_colour_addb"] )
        Num_Slider_4:SetValue( Color_Mode.Color["$pp_colour_brightness"] )
        Num_Slider_5:SetValue( Color_Mode.Color["$pp_colour_contrast"] )
        Num_Slider_6:SetValue( Color_Mode.Color["$pp_colour_colour"] )
        Color_Mode.Color = {
            ["$pp_colour_addr"]         = 0,
            ["$pp_colour_addg"]         = 0,
            ["$pp_colour_addb"]         = 0,
            ["$pp_colour_brightness"]   = 0,
            ["$pp_colour_contrast"]     = 1,
            ["$pp_colour_colour"]       = 1,
            ["$pp_colour_mulr"]         = 0,
            ["$pp_colour_mulg"]         = 0,
            ["$pp_colour_mulb"]         = 0
        } 
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)  
    end

    local Button_3 = vgui.Create( "DButton", Main_Frame ) 
    Button_3:SetText("Mode I")	
    Button_3:SetPos((Color_Mode.Config.Size["x"]/2)-50, Color_Mode.Config.Size["y"]-50)	
    Button_3:SetSize(50, 30)
    
    Button_3.DoClick = function()
        Color_Mode.Color = {
            ["$pp_colour_addr"]         = 0,
            ["$pp_colour_addg"]         = 0,
            ["$pp_colour_addb"]         = 0,
            ["$pp_colour_brightness"]   = 0,
            ["$pp_colour_contrast"]     = 1,
            ["$pp_colour_colour"]       = 1.5,
            ["$pp_colour_mulr"]         = 0,
            ["$pp_colour_mulg"]         = 0,
            ["$pp_colour_mulb"]         = 0
        } 
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)  
    end

    local Button_3 = vgui.Create( "DButton", Main_Frame ) 
    Button_3:SetText("Mode II")
    Button_3:SetPos((Color_Mode.Config.Size["x"]/2+50), Color_Mode.Config.Size["y"]-50)
    Button_3:SetSize(50, 30)
    
    Button_3.DoClick = function()
        Color_Mode.Color = {
            ["$pp_colour_addr"]         = 0,
            ["$pp_colour_addg"]         = 0,
            ["$pp_colour_addb"]         = 0,
            ["$pp_colour_brightness"]   = 0,
            ["$pp_colour_contrast"]     = 1,
            ["$pp_colour_colour"]       = 2.5,
            ["$pp_colour_mulr"]         = 0,
            ["$pp_colour_mulg"]         = 0,
            ["$pp_colour_mulb"]         = 0
        } 
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)  
    end

    local Button_4 = vgui.Create( "DButton", Main_Frame ) 
    Button_4:SetText("Save")	
    Button_4:SetPos((Color_Mode.Config.Size["x"]/2)+150, Color_Mode.Config.Size["y"]-50)	
    Button_4:SetSize(50, 30)
    
    Button_4.DoClick = function()
        if !file.Exists( "linventif", "data" ) then 
            file.CreateDir("linventif")
        elseif !file.Exists( "linv_color_mode.json", "data/linventif" ) then 
            file.Write( "linventif/linv_color_mode.json", util.TableToJSON( Color_Mode.Color ) )
            ply:ChatPrint("[ Color Mode ] Config save")
        end

    end

    local Button_5 = vgui.Create( "DButton", Main_Frame ) 
    Button_5:SetText("Mode a")	
    Button_5:SetPos((Color_Mode.Config.Size["x"]/2)+250, Color_Mode.Config.Size["y"]-50)	
    Button_5:SetSize(50, 30)
    
    Button_5.DoClick = function()
        if file.Size("linventif/linv_color_mode.json", "DATA") != 0 then
            Color_Mode.Color = util.JSONToTable( file.Read("linventif/linv_color_mode.json", "DATA")  ) 
            hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
                DrawColorModify(Color_Mode.Color)
            end)
            ply:ChatPrint("[ Color Mode ] All configuration load")
        end
    end
end)