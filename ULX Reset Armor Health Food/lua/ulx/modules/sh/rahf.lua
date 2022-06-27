print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" - - - - - - - ULX Reset Armor Health Food - - - - - - - - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" - - - - - - - - - Module by Linventif - - - - - - - - - - ")
print(" - - - - Join my discord : https://dsc.gg/linventif  - - - ")
print(" - - - -  Watch my website : https://linventif.org - - - - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" - - - -  Avec le soutient de Garry's Mod France - - - - - ")
print(" - Rejoigniez le discord : https://discord.gg/6n5SEJAhGp - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")

function ulx.rahf( calling_ply, target_plys )

	for i=1, #target_plys do
		target_plys[ i ]:SetHealth(target_plys[ i ]:GetMaxHealth())
		target_plys[ i ]:SetArmor(target_plys[ i ]:GetMaxArmor())
		target_plys[ i ]:setSelfDarkRPVar("Energy", 100)
	end
	ulx.fancyLogAdmin( calling_ply, "#A has restore the food, health and armor of : #T", target_plys )
end
local rahf = ulx.command( "Linventif", "ulx rahf", ulx.rahf, "!rahf" )
rahf:addParam{ type=ULib.cmds.PlayersArg }
rahf:defaultAccess( ULib.ACCESS_ADMIN )
rahf:help( "Restore default settings" )