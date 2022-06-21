local weapon_trigger = {
    weapon_357 = true,
    weapon_crowbar = true,
    gmod_tool = true
}

hook.Add( "PlayerSwitchWeapon", "WeaponSwitchExample", function( ply, oldWeapon, newWeapon )
    if weapon_trigger[newWeapon:GetClass()] then
        RunConsoleCommand("say", "/me sort un.e " .. newWeapon:GetClass())
    end
end) 