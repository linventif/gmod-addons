print(" ")
print(" ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" -                                                         - ")
print(" -                       Color Mode                        - ")
print(" -                                                         - ")
print(" -                   Create by Linventif                   - ")
print(" -        Join my discord : https://dsc.gg/linventif       - ")
print(" -         Watch my website : https://linventif.org        - ")
print(" -                                                         - ")
print(" -         Avec le soutient de Garry's Mod France          - ")
print(" -  Rejoigniez le discord : https://discord.gg/6n5SEJAhGp  - ")
print(" -                                                         - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" ") 
print(" ")
 
local folder = "color_mode"

Color_Mode = Color_Mode or {}

AddCSLuaFile(folder .. "/sh_config.lua")
include(folder .. "/sh_config.lua")
print("| OK | " .. folder .. "/sh_config.lua")

if !Color_Mode.Config.Language then return end
 
if SERVER then
	if !file.Exists(folder .. "/lang/" .. Color_Mode.Config.Language .. ".lua", "LUA") then return end
	Color_Mode.Lang = include(folder .. "/lang/" .. Color_Mode.Config.Language .. ".lua")

	for k, v in ipairs(file.Find(folder .. "/lang/*.lua", "LUA")) do
		AddCSLuaFile(folder .. "/lang/" .. v)
        print("| OK | " .. folder .. "/lang/" .. v)
	end

	for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
		AddCSLuaFile(folder .. "/client/" .. v)
        print("| OK | " .. folder .. "/client/" .. v)
	end

	for k, v in ipairs(file.Find(folder .. "/server/*.lua", "LUA")) do
		include(folder .. "/server/" .. v)
        print("| OK | " .. folder .. "/server/" .. v)
	end
else
	local function loadLanguage(lang, checkDefault)
		if file.Exists(folder .. "/lang/" .. lang .. ".lua", "LUA") then
			Color_Mode.Lang = include(folder .. "/lang/" .. lang .. ".lua")
			Color_Mode.Config.Language = lang
		else
			if !checkDefault then return end
			loadLanguage(Color_Mode.Config.Language)
		end
	end
    
    local function load()
		if !file.Exists( "linventif", "data" ) then 
            file.CreateDir("linventif") 
            file.Write( "linventif/linv_color_mode.json", "")
        elseif !file.Exists( "linventif/linv_color_mode.json", "data" ) then 
            file.Write( "linventif/linv_color_mode.json", "")
        elseif file.Size("linventif/linv_color_mode.json", "DATA") != 0 then
            Color_Mode.Color = util.JSONToTable( file.Read("linventif/linv_color_mode.json", "DATA")  ) 
            hook.Add("RenderScreenspaceEffects", "RefreshColors", function()
                DrawColorModify(Color_Mode.Color)
            end)
        end   

		for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
			if v == "cl_hud_util.lua" then continue end
			include(folder .. "/client/" .. v)
		end
	end
end

print("| OK | sh_color_mode_load.lua")
print(" ")
print(" ")