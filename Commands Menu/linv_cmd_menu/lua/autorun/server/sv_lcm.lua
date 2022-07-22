util.AddNetworkString( "open_commands_menu" )

hook.Add( "PlayerSay", "ply_chat_open_lcm", function( ply, text )
    if LCM.Commands[text] then
        net.Start( "open_commands_menu" )
        net.Send(ply)
    end
end)