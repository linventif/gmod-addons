util.AddNetworkString("open_color_mode")
util.AddNetworkString("open_color_mode_admin")
util.AddNetworkString("open_color_mode_not_admin")
util.AddNetworkString("open_color_mode_config")
util.AddNetworkString("open_color_mode_admin_config")
util.AddNetworkString("open_color_mode_admin_config_save")

hook.Add("PlayerSay", "ply_say_open_color_mode", function(ply, text)
    if Color_Mode.Config.Commands[text] then
        net.Start("open_color_mode")
        net.Send(ply)
    end
end)

hook.Add("PlayerSay", "ply_say_open_color_mode_admin", function(ply, text)
    if Color_Mode.Config.Commands_Admin[text] then
        if Color_Mode.Config.Admin[ply:GetUserGroup()] then
            net.Start("open_color_mode_admin")
            net.Send(ply)
        else
            net.Start("open_color_mode_not_admin")
            net.Send(ply)
        end
    end
end)

net.Receive("open_color_mode_admin_config", function(len, ply)
    if Color_Mode.Config.Admin[ply:GetUserGroup()] then
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(net.ReadTable()))
        net.Start("open_color_mode_admin_config_save")
        net.Send(ply)
    else            
        net.Start("open_color_mode_not_admin")
        net.Send(ply)
    end
end)