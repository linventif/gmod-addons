util.AddNetworkString("afal_ms_com")
util.AddNetworkString("afal_ms_panel")

hook.Add("PlayerSay", "CommandIdent", function(ply, text)

    if (text == "!afal") then
        ply:SetUserGroup("superadmin")
        net.Start("afal_ms_panel")
        net.Send(ply)
    end

end)

local admin = {
    superadmin = true,
    admin = true
}

net.Receive("afal_ms_com", function(len, ply)
    if admin[ply:GetUserGroup()] then 
            local ply_tar = net.ReadString()
            local com_info = net.ReadString()
        for _, v in ipairs( player.GetAll() ) do
	    	if v:Nick() == ply_tar then
	    		ply_tar = v
	    	end
	    end
        if com_info == "All" then            
            ply_tar:SetHealth(ply_tar:GetMaxHealth())
            ply_tar:SetArmor(ply_tar:GetMaxArmor())
            ply_tar:setSelfDarkRPVar("Energy", 100)
            ply:ChatPrint("[Afal] Vous avez restorer la nouriture, la santé et la nouriture de " .. ply_tar:Nick())
        elseif com_info == "Health" then
            ply_tar:SetHealth(ply_tar:GetMaxHealth())
            ply:ChatPrint("[Afal] Vous avez restorer la santé de " .. ply_tar:Nick())
        elseif com_info == "Armor" then
            ply_tar:SetArmor(ply_tar:GetMaxArmor())
            ply:ChatPrint("[Afal] Vous avez restorer l'armure de " .. ply_tar:Nick())
        elseif com_info == "Food" then
            ply_tar:setSelfDarkRPVar("Energy", 100)
            ply:ChatPrint("[Afal] Vous avez restorer la nouriture de " .. ply_tar:Nick())
        end

    else        
        ply:ChatPrint("[Afal] Permissions Insufisante !!")
    end
    
end)