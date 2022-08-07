local button_y = 0
local slider_y = {}

if !file.Exists("linventif", "data") then
    file.CreateDir("linventif")
    if Color_Mode.Config.Default_Mode != "boost" then 
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Color_Default))
    else
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Color_Boost))
    end
elseif !file.Exists("linventif/linv_color_mode.json", "DATA") then
    if Color_Mode.Config.Default_Mode != "boost" then 
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Color_Default))
    else
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Color_Boost))
    end
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
local ply_load = false
net.Receive("color_mode_ply_load", function() ply_load = true end)

Color_Mode.Color = util.JSONToTable(file.Read("linventif/linv_color_mode.json", "DATA"))
hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
    DrawColorModify(Color_Mode.Color)
end)

local function Color_Mode_Open()
    local ply = LocalPlayer()
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

    if Color_Mode.Config.Admin[ply:GetUserGroup()] then
        local Button_Admin = vgui.Create("DButton", Main_Frame)
        Button_Admin:SetText("")
        Button_Admin:SetPos(Color_Mode.Config.Size.x-50, 0)
        Button_Admin:SetSize(25, 25)
        Button_Admin:SetIcon("icon16/wrench.png")
        Button_Admin.DoClick = function()
            RunConsoleCommand("color_mode_open_admin")
            Main_Frame:Close()
        end
        Button_Admin.Paint = function(s, w, h)
            draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 0))
        end
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
        Num_Slider_1:SetValue(Color_Mode.Color_Default["$pp_colour_addr"])
        Num_Slider_2:SetValue(Color_Mode.Color_Default["$pp_colour_addg"])
        Num_Slider_3:SetValue(Color_Mode.Color_Default["$pp_colour_addb"])
        Num_Slider_4:SetValue(Color_Mode.Color_Default["$pp_colour_brightness"])
        Num_Slider_5:SetValue(Color_Mode.Color_Default["$pp_colour_contrast"])
        Num_Slider_6:SetValue(Color_Mode.Color_Default["$pp_colour_colour"])
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color_Default)
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
        Num_Slider_1:SetValue(Color_Mode.Color_Boost["$pp_colour_addr"])
        Num_Slider_2:SetValue(Color_Mode.Color_Boost["$pp_colour_addg"])
        Num_Slider_3:SetValue(Color_Mode.Color_Boost["$pp_colour_addb"])
        Num_Slider_4:SetValue(Color_Mode.Color_Boost["$pp_colour_brightness"])
        Num_Slider_5:SetValue(Color_Mode.Color_Boost["$pp_colour_contrast"])
        Num_Slider_6:SetValue(Color_Mode.Color_Boost["$pp_colour_colour"])
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color_Boost)
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
    
    if Color_Mode.Color == Color_Mode.Color_Default and Color_Mode.Config.Default_Mode == "boost" then
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color_Boost)
        end)
    elseif Color_Mode.Color == Color_Mode.Color_Default and Color_Mode.Config.Default_Mode == "normal" then
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color_Default)
        end)
    else
        hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
            DrawColorModify(Color_Mode.Color)
        end)
    end
    Num_Slider_1:SetValue(Color_Mode.Color["$pp_colour_addr"])
    Num_Slider_2:SetValue(Color_Mode.Color["$pp_colour_addg"])
    Num_Slider_3:SetValue(Color_Mode.Color["$pp_colour_addb"])
    Num_Slider_4:SetValue(Color_Mode.Color["$pp_colour_brightness"])
    Num_Slider_5:SetValue(Color_Mode.Color["$pp_colour_contrast"])
    Num_Slider_6:SetValue(Color_Mode.Color["$pp_colour_colour"])
end

local function Color_Mode_Open_Admin()
    PrintTable(Color_Mode.Config)
    local Main_Frame = vgui.Create("DFrame")
    Main_Frame:SetSize(Color_Mode.Config.Size.x, Color_Mode.Config.Size.y)
    Main_Frame:Center()
    Main_Frame:SetTitle("Color Mode by Linventif | v" .. Color_Mode.Config.Version .. " | Administration")
    Main_Frame:MakePopup()
    Main_Frame:SetDraggable(true)
    Main_Frame:ShowCloseButton(false)
    Main_Frame.Paint = function(s, w, h)
        draw.RoundedBox(8, 0, 0, w, h, Color_Mode.Config.BackGroundColor)
        draw.RoundedBox(0, 0, 0, w, 23, Color_Mode.Config.ButtonColor)
        draw.SimpleText(Color_Mode.Language.Language, "Trebuchet18", 130, 50.5, Color(255,255,255,255))   
        draw.SimpleText(Color_Mode.Language.Default_Mode, "Trebuchet18", 130, 100.5, Color(255,255,255,255))
        draw.SimpleText(Color_Mode.Language.Button_Top, "Trebuchet18", 130, 150.5, Color(255,255,255,255))
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
    Button_Admin:SetIcon("icon16/arrow_rotate_anticlockwise.png")
    Button_Admin.DoClick = function()
        RunConsoleCommand("color_mode_open")
        Main_Frame:Close()
    end
    Button_Admin.Paint = function(s, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 0))
    end

    local ComboBox_Language = vgui.Create("DComboBox", Main_Frame)
    ComboBox_Language:SetPos(20, 43)
    ComboBox_Language:SetSize(100, 30)
    ComboBox_Language:SetColor(Color(255,255,255))
    ComboBox_Language:SetValue(Color_Mode.Config.Language)
    ComboBox_Language:AddChoice("French")
    ComboBox_Language:AddChoice("English")
    ComboBox_Language.OnSelect = function(self, index, value)
        Color_Mode.Admin_Config.Language = string.lower( value )
    end
    ComboBox_Language.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)        
    end

    local ComboBox_Default_Mode = vgui.Create("DComboBox", Main_Frame)
    ComboBox_Default_Mode:SetPos(20, 93)
    ComboBox_Default_Mode:SetSize(100, 30)
    ComboBox_Default_Mode:SetColor(Color(255,255,255))
    ComboBox_Default_Mode:SetValue(Color_Mode.Config.Default_Mode)
    ComboBox_Default_Mode:AddChoice("Normal")
    ComboBox_Default_Mode:AddChoice("Boost")
    ComboBox_Default_Mode.OnSelect = function(self, index, value)
        Color_Mode.Admin_Config.Default_Mode = string.lower( value )
    end
    ComboBox_Default_Mode.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end

    local ComboBox_Button_Top = vgui.Create("DComboBox", Main_Frame)
    ComboBox_Button_Top:SetPos(20, 143)
    ComboBox_Button_Top:SetSize(100, 30)
    ComboBox_Button_Top:SetColor(Color(255,255,255))
    if Color_Mode.Config.Button_on_Top then ComboBox_Button_Top:SetValue("true") else ComboBox_Button_Top:SetValue("false") end
    ComboBox_Button_Top:AddChoice("True")
    ComboBox_Button_Top:AddChoice("False")
    ComboBox_Button_Top.OnSelect = function(self, index, value)
        if value != "True" then Color_Mode.Admin_Config.Button_on_Top = false else Color_Mode.Admin_Config.Button_on_Top = true end
    end
    ComboBox_Button_Top.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end

    local Button_4 = vgui.Create("DButton", Main_Frame)
    Button_4:SetText(Color_Mode.Language.Custom_Mode_Save)
    Button_4:SetPos(Color_Mode.Config.Size.x-168, Color_Mode.Config.Size.y-65)	
    Button_4:SetSize(120, 40)
    Button_4:SetColor(Color(255,255,255))
    Button_4.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end
    Button_4.DoClick = function()
        Main_Frame:Close()
        net.Start("color_mode_save_config")
        net.WriteTable(Color_Mode.Admin_Config)
        net.SendToServer()
        notification.AddLegacy(Color_Mode.Language.Config_Save_Admin, 0, 6)
    end
end

net.Receive("color_mode_open_admin", function(_, ply)
    if Color_Mode.Config.Admin[LocalPlayer():GetUserGroup()] then
        Color_Mode_Open_Admin()
    else
        notification.AddLegacy(Color_Mode.Language.Not_Admin, 1, 3)
    end
end)
net.Receive("color_mode_open", Color_Mode_Open)

concommand.Add("color_mode_open_admin", function(ply, cmd, args)
    if Color_Mode.Config.Admin[LocalPlayer():GetUserGroup()] then
        Color_Mode_Open_Admin()
    else
        notification.AddLegacy(Color_Mode.Language.Not_Admin, 1, 3)
    end
end)
concommand.Add("color_mode_open", Color_Mode_Open)


net.Receive("color_mode_ply_load", function()
    PrintTable(Color_Mode.Config)
    
    Color_Mode.Config = net.ReadTable()
    Color_Mode.Admin_Config = Color_Mode.Config
    include(folder .. "/language/" .. Color_Mode.Config.Language .. ".lua")
    print(folder .. "/language/" .. Color_Mode.Config.Language .. ".lua")
end)