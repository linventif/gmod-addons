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

local addon_name = "color_mode"
Color_Mode = Color_Mode or {}

AddCSLuaFile(addon_name .. "/sh_config.lua")
include(addon_name .. "/sh_config.lua")

if SERVER then
    print("| OK | addons/" .. addon_name .. "/lua/autorun/" .. addon_name .. "_load.lua")
    print("| OK | addons/" .. addon_name .. "/lua/" .. addon_name .. "/sh_config.lua")
    
    if !file.Exists("linventif", "data") then
        file.CreateDir("linventif")
        file.Write("linventif/color_mode.json", util.TableToJSON(Color_Mode.Config))
    elseif !file.Exists("linventif/color_mode.json", "DATA") then
        file.Write("linventif/color_mode.json", util.TableToJSON(Color_Mode.Config))
    else
        Color_Mode.Config = util.JSONToTable(file.Read("linventif/color_mode.json", "DATA"))
        print("| OK | data/linventif/color_mode.json")
    end

    for k, v in ipairs(file.Find(addon_name .. "/language/*.lua", "LUA")) do
		AddCSLuaFile(addon_name .. "/language/" .. v)
        print("| OK | addons/" .. addon_name .. "/lua/" .. addon_name .. "/language/" .. v)
	end

	for k, v in ipairs(file.Find(addon_name .. "/client/*.lua", "LUA")) do
		AddCSLuaFile(addon_name .. "/client/" .. v)
        print("| OK | addons/" .. addon_name .. "/lua/" .. addon_name .. "/client/" .. v)
	end

	for k, v in ipairs(file.Find(addon_name .. "/server/*.lua", "LUA")) do
		include(addon_name .. "/server/" .. v)
        print("| OK | addons/" .. addon_name .. "/lua/" .. addon_name .. "/server/" .. v)
	end
    print(" ")
    print(" ")
else
    for k, v in ipairs(file.Find(addon_name .. "/client/*.lua", "LUA")) do
        include(addon_name .. "/client/" .. v)
    end
end