LIN_Color_Modif = {}

LIN_Color_Modif.BackGroundColor = Color(24, 24, 24)
LIN_Color_Modif.BorderColor = Color(255, 255, 255, 230)

LIN_Color_Modif.CategoryFont = "Trebuchet24"
LIN_Color_Modif.CategoryColorText = Color(255, 255, 255, 255)

LIN_Color_Modif.DisableBorder = false
LIN_Color_Modif.AddBonusLine = false

LIN_Color_Modif.Commands = { 
    ["!cm"] = true,
    ["!color_modif"] = true,
    ["!colors_modif"] = true
}


--      LCM.ButtonCat3But1Name = "Normal"
--      LCM.ButtonCat3But1Function = function()
--          local color_mode = {
--              -- Default
--              ["$pp_colour_addr"]         = 0,
--              ["$pp_colour_addg"]         = 0,
--              ["$pp_colour_addb"]         = 0,
--              ["$pp_colour_brightness"]   = 0,
--              ["$pp_colour_contrast"]     = 1,
--              ["$pp_colour_colour"]       = 1,
--              ["$pp_colour_mulr"]         = 0,
--              ["$pp_colour_mulg"]         = 0,
--              ["$pp_colour_mulb"]         = 0
--          }
--          hook.Add("RenderScreenspaceEffects", "BetterColors", function()
--              DrawColorModify(color_mode)
--          end)
--      end
--      
--      LCM.ButtonCat3But2Name = "Booster"
--      LCM.ButtonCat3But2Function = function()	
--          local color_mode = {
--              -- Default
--      	    ["$pp_colour_addr"]         = 0,
--      		["$pp_colour_addg"]         = 0,
--      		["$pp_colour_addb"]         = 0,
--      		["$pp_colour_brightness"]   = 0,
--      		["$pp_colour_contrast"]     = 1,
--      		["$pp_colour_colour"]       = 1.5,
--      		["$pp_colour_mulr"]         = 0,
--      		["$pp_colour_mulg"]         = 0,
--      		["$pp_colour_mulb"]         = 0
--          }
--          hook.Add("RenderScreenspaceEffects", "BetterColors", function()
--              DrawColorModify(color_mode)
--          end)		
--      end
--      
--      LCM.ButtonCat3But3Name = "WTF"
--      LCM.ButtonCat3But3Function = function()	
--          local color_mode = {
--              -- Default
--      		["$pp_colour_addr"]         = 0,
--      		["$pp_colour_addg"]         = 0,
--      		["$pp_colour_addb"]         = 0,
--      		["$pp_colour_brightness"]   = 0,
--      		["$pp_colour_contrast"]     = 1,
--      		["$pp_colour_colour"]       = 2.5,
--      		["$pp_colour_mulr"]         = 0,
--      		["$pp_colour_mulg"]         = 0,
--      		["$pp_colour_mulb"]         = 0
--          }
--          hook.Add("RenderScreenspaceEffects", "BetterColors", function()
--              DrawColorModify(color_mode)
--          end)
--      end