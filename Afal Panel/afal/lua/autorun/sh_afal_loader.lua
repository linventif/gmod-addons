if SERVER then

    AddCSLuaFile("afal/client/cl_afal.lua")
    include("afal/server/sv_afal.lua")

elseif CLIENT then

    include("afal/client/cl_afal.lua")
    

end