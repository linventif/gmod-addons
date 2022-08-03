util.AddNetworkString( "open_colors_menu" )

hook.Add( "PlayerSay", "ply_chat_open_colors_menu", function( ply, text )
    if LIN_Color_Modif.Commands[text] then
        net.Start( "open_colors_menu" )
        net.Send(ply)
    end
end)