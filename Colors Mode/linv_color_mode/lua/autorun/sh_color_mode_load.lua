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
    
    if !file.Exists("linventif", "data") then
        file.CreateDir("linventif")
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Config))
    elseif !file.Exists("linventif/linv_color_mode.json", "DATA") then
        file.Write("linventif/linv_color_mode.json", util.TableToJSON(Color_Mode.Config))
    else
        Color_Mode.Config = util.JSONToTable(file.Read("linventif/linv_color_mode.json", "DATA"))
        print("| OK | data/linventif/linv_color_mode.json")
    end
    
    AddCSLuaFile(folder .. "/language/" .. Color_Mode.Config.Language .. ".lua")
    print(Color_Mode.Config.Language)

    --for k, v in ipairs(file.Find(folder .. "/language/*.lua", "LUA")) do
	--	AddCSLuaFile(folder .. "/language/" .. v)
    --    print("| OK | addons/" .. addon_name .. "lua/" .. folder .. "/language/" .. v)
	--end

	for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
		AddCSLuaFile(folder .. "/client/" .. v)
        print("| OK | addons/" .. addon_name .. "lua/" .. folder .. "/client/" .. v)
	end

	for k, v in ipairs(file.Find(folder .. "/server/*.lua", "LUA")) do
		include(folder .. "/server/" .. v)
        print("| OK | addons/" .. addon_name .. "lua/" .. folder .. "/server/" .. v)
	end
else
    print(Color_Mode.Config.Language)
    --  net.Receive("color_mode_ply_load", function()
    --      PrintTable(Color_Mode.Config)
    --      
    --      Color_Mode.Config = net.ReadTable()
    --      Color_Mode.Admin_Config = Color_Mode.Config
    --      
    --      print(folder .. "/language/" .. Color_Mode.Config.Language .. ".lua")
    --  end)

    include(folder .. "/language/" .. Color_Mode.Config.Language .. ".lua")

    for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
        include(folder .. "/client/" .. v)
        print(folder .. "/client/" .. v)
    end
end

print(" ")
print(" ")