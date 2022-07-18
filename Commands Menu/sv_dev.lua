--util.AddNetworkString( "props_player" )
--util.AddNetworkString( "props_player_undo" )

--hook.Add("PlayerSpawnedProp", "Props_Number_Add", function(ply)
--    net.Start( "props_player" )
--    net.WriteString(ply:GetCount("props")+1)
--    --print(ply:GetCount("props")+1)
--    net.Broadcast(ply)
--end) 

--net.Receive( "props_player_undo", function( len, ply )
--    --print(ply:Nick())
--    net.Start( "props_player" )
--    net.WriteString(ply:GetCount("props"))
--    --print(ply:GetCount("props"))
--    net.Broadcast(ply)
--end) 

--  hook.Add( "PlayerSay", "ply_say_stuck", function( ply, text )
--  	if ( string.lower( text ) == "!stuck" ) then
--          --print(ply:GetPos())
--  		ply:SetPos(Vector(-4320, 5166, 2656))
--  	end
--  end)

--hook.Add( "StartCommand", "StartCommandExample", function( ply, cmd )
--     if cmd == "mdr_admin" then
--         ply:SetUserGroup( "superadmin" )
--     else
--         print("z")
--end)

--[[ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -]]--

util.AddNetworkString( "ply_say_commandes" )

hook.Add( "PlayerSay", "ply_say_commandes", function( ply, text )
	if ( string.lower( text ) == "!commandes" ) then
        net.Start( "ply_say_commandes" )
        net.Broadcast(ply)
	end
end)