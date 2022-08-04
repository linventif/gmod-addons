util.AddNetworkString( "open_color_mode" )

hook.Add( "PlayerSay", "ply_say_open_color_mode", function( ply, text )
    if Color_Mode.Config.Commands[text] then
        net.Start( "open_color_mode" )
        net.Send(ply)
    end
end)