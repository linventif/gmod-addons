print(" ")
print(" ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" -                                                           - ")
print(" -                        Color Mode                         - ")
print(" -                                                           - ")
print(" -                   Create by Linventif                     - ")
print(" -        Join my discord : https://dsc.gg/linventif         - ")
print(" -         Watch my website : https://linventif.org          - ")
print(" -                                                           - ")
print(" -          Avec le soutient de Garry's Mod France           - ")
print(" -   Rejoigniez le discord : https://discord.gg/6n5SEJAhGp   - ")
print(" -                                                           - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" ")
print(" ")

local addon_name = "linv_color_mode"
local folder = "color_mode"
Color_Mode = Color_Mode or {}

AddCSLuaFile(folder .. "/sh_config.lua")
include(folder .. "/sh_config.lua")

if SERVER then
    print("| OK | addons/" .. addon_name .. "lua/autorun/" .. addon_name .. "_load.lua")
    print("| OK | addons/" .. addon_name .. "lua/" .. folder .. "/sh_config.lua")

    util.AddNetworkString("color_mode_config")
    if !file.Exists("linventif", "data") then
        file.CreateDir("linventif")
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Config))
    elseif !file.Exists("linventif/linv_color_mode.json", "DATA") then
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Config))
    elseif file.Read("linventif/linv_color_mode.json", "DATA") != util.TableToJSON(Color_Mode.Config) then
        Color_Mode.Config = util.JSONToTable(file.Read("linventif/linv_color_mode.json", "DATA"))
        net.Start("color_mode_config")
            net.WriteTable(Color_Mode.Config)
        net.Broadcast()
        print("| OK | data/linventif/linv_color_mode.json")
    end

    for k, v in ipairs(file.Find(folder .. "/language/*.lua", "LUA")) do
		AddCSLuaFile(folder .. "/language/" .. v)
        print("| OK | addons/" .. addon_name .. "lua/" .. folder .. "/language/" .. v)
	end

	for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
		AddCSLuaFile(folder .. "/client/" .. v)
        print("| OK | addons/" .. addon_name .. "lua/" .. folder .. "/client/" .. v)
	end

	for k, v in ipairs(file.Find(folder .. "/server/*.lua", "LUA")) do
		include(folder .. "/server/" .. v)
        print("| OK | addons/" .. addon_name .. "lua/" .. folder .. "/server/" .. v)
	end
else
    net.Receive("color_mode_config", function()
        Color_Mode.Config = net.ReadTable()
        include(folder .. "/language/" .. Color_Mode.Config.Language .. ".lua")

        for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
            if v == "cl_hud_util.lua" then continue end
            include(folder .. "/client/" .. v)
        end
    end)    
end