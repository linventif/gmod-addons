Color_Mode.Config = Color_Mode.Config or {}
Color_Mode.Config.Version = 1

Color_Mode.Config.Language = "french" -- french or english

Color_Mode.Config.Size = {
    x = 750,
    y = 340
}
 
Color_Mode.Config.BackGroundColor = Color(34, 34, 34)
Color_Mode.Config.ButtonColor = Color(60, 90, 120)

Color_Mode.Config.Button_on_Top = false

Color_Mode.Config.Commands = { 
    ["!cm"] = true,
    ["!color_mode"] = true
}

Color_Mode.Config.Commands_Admin = { 
    ["!cm_admin"] = true, -- don't remove
    ["!color_mode_admin"] = true
}

Color_Mode.Config.Admin = { 
    ["superadmin"] = true,
    ["admin"] = false
}