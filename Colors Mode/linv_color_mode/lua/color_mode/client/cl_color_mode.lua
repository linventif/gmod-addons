local ply = LocalPlayer()
local button_y = 0
local slider_y = {}
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

if !file.Exists("linventif", "data") then
    file.CreateDir("linventif")
    file.Write("linventif/linv_color_mode.json", "")

elseif !file.Exists("linventif/linv_color_mode.json", "DATA") then
    file.Write("linventif/linv_color_mode.json", "")

elseif file.Size("linventif/linv_color_mode.json", "DATA") != 0 then
    Color_Mode.Color = util.JSONToTable( file.Read("linventif/linv_color_mode.json", "DATA"))
    hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
        DrawColorModify(Color_Mode.Color)
    end)
end

if Color_Mode.Config.Button_on_Top then 
    button_y = 45
    slider_y = {
        [1] = 80,
        [2] = 160,
        [3] = 240
    }
else 
    button_y = Color_Mode.Config.Size.y-65
    slider_y = {
        [1] = 15,
        [2] = 95,
        [3] = 175
    }
end

net.Receive("open_color_mode_not_admin", function()
    notification.AddLegacy(Color_Mode.Language.Not_Admin, 1, 3)
end)

net.Receive("open_color_mode", function()
    local Main_Frame = vgui.Create("DFrame")
    Main_Frame:SetSize(Color_Mode.Config.Size.x, Color_Mode.Config.Size.y)
    Main_Frame:Center()
    Main_Frame:SetTitle("Color Mode by Linventif | v" .. Color_Mode.Config.Version)
    Main_Frame:MakePopup()
    Main_Frame:SetDraggable(true)
    Main_Frame:ShowCloseButton(false)
    Main_Frame.Paint = function(s, w, h)
        draw.RoundedBox(8, 0, 0, w, h, Color_Mode.Config.BackGroundColor)
        draw.RoundedBox(0, 0, 0, w, 23, Color_Mode.Config.ButtonColor)
    end

    local Button_Close = vgui.Create("DButton", Main_Frame)
    Button_Close:SetText("")
    Button_Close:SetPos(Color_Mode.Config.Size.x-25, 0)
    Button_Close:SetSize(25, 25)
    Button_Close:SetIcon("icon16/cross.png")
    Button_Close.DoClick = function()
    	Main_Frame:Close()
    end
    Button_Close.Paint = function(s, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 0))
    end

    local Button_Admin = vgui.Create("DButton", Main_Frame)
    Button_Admin:SetText("")
    Button_Admin:SetPos(Color_Mode.Config.Size.x-50, 0)
    Button_Admin:SetSize(25, 25)
    Button_Admin:SetIcon("icon16/wrench.png")
    Button_Admin.DoClick = function()
        RunConsoleCommand("say", "!cm_admin")
        Main_Frame:Close()
    end
    Button_Admin.Paint = function(s, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 0))
    end

    local Num_Slider_1 = vgui.Create("DNumSlider", Main_Frame)
    Num_Slider_1:SetPos(50, slider_y[1])
    Num_Slider_1:SetSize(300, 100)
    Num_Slider_1:SetText(Color_Mode.Language.Addr)
    Num_Slider_1:SetValue(Color_Mode.Color["$pp_colour_addr"])
    Num_Slider_1:SetMin(0)
    Num_Slider_1:SetMax(1)
    Num_Slider_1:SetDecimals(2)
    Num_Slider_1.OnValueChanged = function(self, value)
        Color_Mode.Color["$pp_colour_addr"] = math.Round(value, 2)
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end
    
    local Num_Slider_2 = vgui.Create("DNumSlider", Main_Frame)
    Num_Slider_2:SetPos(50, slider_y[2])			
    Num_Slider_2:SetSize(300, 100)		
    Num_Slider_2:SetText(Color_Mode.Language.Addg)
    Num_Slider_2:SetValue(Color_Mode.Color["$pp_colour_addg"])
    Num_Slider_2:SetMin(0)
    Num_Slider_2:SetMax(1)
    Num_Slider_2:SetDecimals(2)
    Num_Slider_2.OnValueChanged = function(self, value)
        Color_Mode.Color["$pp_colour_addg"] = math.Round(value, 2)
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end
 
    local Num_Slider_3 = vgui.Create("DNumSlider", Main_Frame)
    Num_Slider_3:SetPos(50, slider_y[3])			
    Num_Slider_3:SetSize(300, 100)		
    Num_Slider_3:SetText(Color_Mode.Language.Addb)
    Num_Slider_3:SetValue(Color_Mode.Color["$pp_colour_addb"])
    Num_Slider_3:SetMin(0)				
    Num_Slider_3:SetMax(1)				
    Num_Slider_3:SetDecimals(2)			

    Num_Slider_3.OnValueChanged = function(self, value)
        Color_Mode.Color["$pp_colour_addb"] = math.Round(value, 2)
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end
 
    local Num_Slider_4 = vgui.Create("DNumSlider", Main_Frame)
    Num_Slider_4:SetPos(422, slider_y[1])
    Num_Slider_4:SetSize(300, 100)
    Num_Slider_4:SetText(Color_Mode.Language.Brightness)
    Num_Slider_4:SetValue(Color_Mode.Color["$pp_colour_brightness"])
    Num_Slider_4:SetMin(0)
    Num_Slider_4:SetMax(1)
    Num_Slider_4:SetDecimals(2)
    Num_Slider_4.OnValueChanged = function(self, value)
        Color_Mode.Color["$pp_colour_brightness"] = math.Round( value, 2)
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end
 
    local Num_Slider_5 = vgui.Create("DNumSlider", Main_Frame)
    Num_Slider_5:SetPos(422, slider_y[2])			
    Num_Slider_5:SetSize(300, 100)		
    Num_Slider_5:SetText(Color_Mode.Language.Contrast)
    Num_Slider_5:SetValue(Color_Mode.Color["$pp_colour_contrast"])
    Num_Slider_5:SetMin(0)
    Num_Slider_5:SetMax(1)
    Num_Slider_5:SetDecimals(2)
    Num_Slider_5.OnValueChanged = function(self, value)
        Color_Mode.Color["$pp_colour_contrast"] = math.Round(value, 2)
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end
 
    local Num_Slider_6 = vgui.Create("DNumSlider", Main_Frame)
    Num_Slider_6:SetPos(422, slider_y[3])			
    Num_Slider_6:SetSize(300, 100)		
    Num_Slider_6:SetText(Color_Mode.Language.Color)
    Num_Slider_6:SetValue(Color_Mode.Color["$pp_colour_colour"])
    Num_Slider_6:SetMin(0)				
    Num_Slider_6:SetMax(4)				
    Num_Slider_6:SetDecimals(2)
    Num_Slider_6.OnValueChanged = function(self, value)
        Color_Mode.Color["$pp_colour_colour"] = math.Round(value, 2)
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end

    local Button_1 = vgui.Create("DButton", Main_Frame) 
    Button_1:SetText(Color_Mode.Language.Mode_Reset)
    Button_1:SetPos(48, button_y)
    Button_1:SetSize(120, 40)
    Button_1:SetColor(Color(255,255,255))
    Button_1.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end
    Button_1.DoClick = function()
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
        Num_Slider_1:SetValue(Color_Mode.Color["$pp_colour_addr"])
        Num_Slider_2:SetValue(Color_Mode.Color["$pp_colour_addg"])
        Num_Slider_3:SetValue(Color_Mode.Color["$pp_colour_addb"])
        Num_Slider_4:SetValue(Color_Mode.Color["$pp_colour_brightness"])
        Num_Slider_5:SetValue(Color_Mode.Color["$pp_colour_contrast"])
        Num_Slider_6:SetValue(Color_Mode.Color["$pp_colour_colour"])
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end

    local Button_2 = vgui.Create("DButton", Main_Frame) 
    Button_2:SetText(Color_Mode.Language.Mode_Boost)	
    Button_2:SetPos(225, button_y)	
    Button_2:SetSize(120, 40)        
    Button_2:SetColor(Color(255,255,255))            
    Button_2.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end
    Button_2.DoClick = function()
        Color_Mode.Color = {
            ['$pp_colour_addr']         = 0.01,
            ["$pp_colour_addg"]         = 0,
            ['$pp_colour_addb']         = 0.01,
            ['$pp_colour_brightness']   = 0.01,
            ['$pp_colour_contrast']     = 1.05,
            ['$pp_colour_colour']       = 1.70,
            ["$pp_colour_mulr"]         = 0,
            ["$pp_colour_mulg"]         = 0,
            ["$pp_colour_mulb"]         = 0
        }
        Num_Slider_1:SetValue(Color_Mode.Color["$pp_colour_addr"])
        Num_Slider_2:SetValue(Color_Mode.Color["$pp_colour_addg"])
        Num_Slider_3:SetValue(Color_Mode.Color["$pp_colour_addb"])
        Num_Slider_4:SetValue(Color_Mode.Color["$pp_colour_brightness"])
        Num_Slider_5:SetValue(Color_Mode.Color["$pp_colour_contrast"])
        Num_Slider_6:SetValue(Color_Mode.Color["$pp_colour_colour"])
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end

    local Button_3 = vgui.Create("DButton", Main_Frame)
    Button_3:SetText(Color_Mode.Language.Custom_Mode_Load)
    Button_3:SetPos(405, button_y)
    Button_3:SetSize(120, 40)
    Button_3:SetColor(Color(255,255,255))
    Button_3.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end
    Button_3.DoClick = function()
        if file.Size("linventif/linv_color_mode.json", "DATA") != 0 then
            Color_Mode.Color = util.JSONToTable( file.Read("linventif/linv_color_mode.json", "DATA"))
            Num_Slider_1:SetValue(Color_Mode.Color["$pp_colour_addr"])
            Num_Slider_2:SetValue(Color_Mode.Color["$pp_colour_addg"])
            Num_Slider_3:SetValue(Color_Mode.Color["$pp_colour_addb"])
            Num_Slider_4:SetValue(Color_Mode.Color["$pp_colour_brightness"])
            Num_Slider_5:SetValue(Color_Mode.Color["$pp_colour_contrast"])
            Num_Slider_6:SetValue(Color_Mode.Color["$pp_colour_colour"])
            hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
                DrawColorModify(Color_Mode.Color)
            end)
            notification.AddLegacy(Color_Mode.Language.All_Load, 0, 3)
        else 
            notification.AddLegacy(Color_Mode.Language.No_Config, 1, 3)
        end
    end

    local Button_4 = vgui.Create("DButton", Main_Frame)
    Button_4:SetText(Color_Mode.Language.Custom_Mode_Save)
    Button_4:SetPos(Color_Mode.Config.Size.x-168, button_y)	
    Button_4:SetSize(120, 40)
    Button_4:SetColor(Color(255,255,255))
    Button_4.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end
    Button_4.DoClick = function()
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Color))
        notification.AddLegacy(Color_Mode.Language.Config_Save, 0, 3)        
    end
end)