hook.Add("PlayerDeath", "ChangeMoneyOnPlayerDeath", function(ply)
    local ply_money = ply:getDarkRPVar("money")
    if ply_money > 20000 then 
        local lose_money = ply:getDarkRPVar("money") / 2
        lose_money = math.ceil(lose_money)
        ply:setDarkRPVar("money", lose_money)
        ply:ChatPrint( "Vous êtes mort, vous avez perdu " .. lose_money .. " €" )
    elseif ply_money > 10000 and ply_money < 20000 then
        local lose_money = ply:getDarkRPVar("money") - 10000
        ply:setDarkRPVar("money", 10000)
        ply:ChatPrint( "Vous êtes mort, vous avez perdu " .. lose_money .. " €" )
    else
        ply:ChatPrint( "Vous êtes mort, mais vous n'avez pas perdu d'argent car vous êtes pauvre." )
    end
end)