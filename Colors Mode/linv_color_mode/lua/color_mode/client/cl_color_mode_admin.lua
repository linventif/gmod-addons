local ply = LocalPlayer()

net.Receive("open_color_mode_not_admin", function()
    notification.AddLegacy(Color_Mode.Language.Config_Save, 1, 3)
end)

Color_Mode_Data = Color_Mode.Config

net.Receive("open_color_mode_admin", function()
    local Main_Frame = vgui.Create("DFrame")
    Main_Frame:SetSize(Color_Mode.Config.Size.x, Color_Mode.Config.Size.y)
    Main_Frame:Center()
    Main_Frame:SetTitle("Color Mode by Linventif | v" .. Color_Mode.Config.Version .. " | Administration Menu")
    Main_Frame:MakePopup()
    Main_Frame:SetDraggable(true)
    Main_Frame:ShowCloseButton(false)
    Main_Frame.Paint = function(s, w, h)
        draw.RoundedBox(8, 0, 0, w, h, Color_Mode.Config.BackGroundColor)
        draw.RoundedBox(0, 0, 0, w, 23, Color_Mode.Config.ButtonColor)
    --    draw.SimpleText(Color_Mode.Language.Admin_Message, "Trebuchet24", w/2, h-40, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
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
        RunConsoleCommand("say", "!cm")
        Main_Frame:Close()
    end
    Button_Admin.Paint = function(s, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 0))
    end

    local ComboBox_Language = vgui.Create("DComboBox", Main_Frame)
    ComboBox_Language:SetPos(20, 43)
    ComboBox_Language:SetSize(100, 30)
    ComboBox_Language:SetColor(Color(255,255,255))
    ComboBox_Language:SetValue("Language")
    ComboBox_Language:AddChoice("French")
    ComboBox_Language:AddChoice("English")
    ComboBox_Language.OnSelect = function(self, index, value)
        Color_Mode_Data.Language = value
    end
    ComboBox_Language.Paint = function(s, w, h)
        draw.RoundedBox(4, 0, 0, w, h, Color_Mode.Config.ButtonColor)
    end

    local ComboBox_Theme = vgui.Create("DComboBox", Main_Frame)
    ComboBox_Theme:SetPos(20, 43)
    ComboBox_Theme:SetSize(100, 30)
    ComboBox_Theme:SetColor(Color(255,255,255))
    ComboBox_Theme:SetValue("Language")
    ComboBox_Theme:AddChoice("French")
    ComboBox_Theme:AddChoice("English")
    ComboBox_Theme.OnSelect = function(self, index, value)
        Color_Mode_Data.Language = string.lower( value )
    end
    ComboBox_Theme.Paint = function(s, w, h)
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
        net.Start("open_color_mode_admin_config")
        net.WriteTable(Color_Mode_Data)
        net.SendToServer()
        notification.AddLegacy(Color_Mode.Language.Custom_Config_Save, 0, 3)
    end
end)