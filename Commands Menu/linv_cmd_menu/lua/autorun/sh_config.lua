--[[

Category and Button Position

    1               2               3
1       2       1       2       1       2
3       4       3       4       3       4

    4               5               6
1       2       1       2       1       2
3       4       3       4       3       4
5       6       5       6       5       6       This is a bonus line

--]]


LCM = {}

LCM.BackGroundColor = Color(0, 0, 0, 230)
LCM.BorderColor = Color(255, 255, 255, 230)

LCM.CategoryFont = "Trebuchet24"
LCM.CategoryColorText = Color(255, 255, 255, 255)

LCM.DisableBorder = false
LCM.AddBonusLine = false

LCM.Commands = { 
    ["!cmd"] = true,
    ["!commands"] = true,
    ["!commandes"] = true
}


LCM.CategoryName1 = "Informations"

LCM.ButtonCat1But1Name = "Discord"
LCM.ButtonCat1But1Function = function()	
    gui.OpenURL( "https://discord.gg/EkVPk9y" )
end

LCM.ButtonCat1But2Name = "Workshop"
LCM.ButtonCat1But2Function = function()			
    gui.OpenURL( "https://steamcommunity.com/sharedfiles/filedetails/?id=2397004463" )
end

LCM.ButtonCat1But3Name = "Forum"
LCM.ButtonCat1But3Function = function()			
    gui.OpenURL( "https://linventif.fr/forum" )
end

LCM.ButtonCat1But4Name = "Boutique"
LCM.ButtonCat1But4Function = function()			
    gui.OpenURL( "https://linventif.fr" )	
end


LCM.CategoryName2 = "Addons"

LCM.ButtonCat2But1Name = "Unbox"
LCM.ButtonCat2But1Function = function()			
    RunConsoleCommand( "say", "!unbox" )	
end

LCM.ButtonCat2But2Name = "Points"
LCM.ButtonCat2But2Function = function()				
    RunConsoleCommand( "say", "!points" )
end

LCM.ButtonCat2But3Name = "3e Personne"
LCM.ButtonCat2But3Function = function()		
    RunConsoleCommand( "thirdperson_menu" )
end

LCM.ButtonCat2But4Name = "Body Group"
LCM.ButtonCat2But4Function = function()			
    RunConsoleCommand( "bodyman_openmenu" )	
end


LCM.CategoryName3 = "Debugs"

LCM.ButtonCat3But1Name = "Stop Sound"
LCM.ButtonCat3But1Function = function()			
    RunConsoleCommand( "stopsound" )
end

LCM.ButtonCat3But2Name = "Débloquage"
LCM.ButtonCat3But2Function = function()		
    RunConsoleCommand( "say", "!unstuck" )		
end

LCM.ButtonCat3But3Name = "FPS⠀Boost"
LCM.ButtonCat3But3Function = function()			
    RunConsoleCommand( "say", "!fps" )
end

LCM.ButtonCat3But4Name = ""
LCM.ButtonCat3But4Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end


LCM.CategoryName4 = "Aides"

LCM.ButtonCat4But1Name = "Appeler Un Staff"
LCM.ButtonCat4But1Function = function()		
    RunConsoleCommand( "say", "!ticket" )
end

LCM.ButtonCat4But2Name = "Wiki"
LCM.ButtonCat4But2Function = function()			
    gui.OpenURL( "https://linventif.fr/forums/boards/7" )
end

LCM.ButtonCat4But3Name = ""
LCM.ButtonCat4But3Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat4But4Name = ""
LCM.ButtonCat4But4Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

-- The bonus line must be activated --

LCM.ButtonCat4But5Name = ""
LCM.ButtonCat4But5Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat4But6Name = ""
LCM.ButtonCat4But6Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end


LCM.CategoryName5 = "Nom"

LCM.ButtonCat5But1Name = "1"
LCM.ButtonCat5But1Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat5But2Name = "2"
LCM.ButtonCat5But2Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat5But3Name = ""
LCM.ButtonCat5But3Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat5But4Name = ""
LCM.ButtonCat5But4Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

-- The bonus line must be activated --

LCM.ButtonCat5But5Name = ""
LCM.ButtonCat5But5Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat5But6Name = ""
LCM.ButtonCat5But6Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end


LCM.CategoryName6 = "Nom"

LCM.ButtonCat6But1Name = "1"
LCM.ButtonCat6But1Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat6But2Name = "2"
LCM.ButtonCat6But2Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat6But3Name = "3"
LCM.ButtonCat6But3Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat6But4Name = "4"
LCM.ButtonCat6But4Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

-- The bonus line must be activated --

LCM.ButtonCat6But5Name = "5"
LCM.ButtonCat6But5Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end

LCM.ButtonCat6But6Name = "6"
LCM.ButtonCat6But6Function = function()			
--  RunConsoleCommand( "say", "Made by Linventif with ❤" )		
--  gui.OpenURL("https://linventif.org")
end