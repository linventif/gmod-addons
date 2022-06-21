local ply = LocalPlayer()

net.Receive("afal_ms_panel", function(len, ply)

	local frame = vgui.Create("DFrame")
	frame:SetSize(600,250)
	frame:Center()
	frame:SetVisible(true)
	frame:MakePopup()

	local Joueurs_ComboBox = vgui.Create( "DComboBox", frame )
	Joueurs_ComboBox:SetPos(150, 125)
	Joueurs_ComboBox:SetSize(100, 20)
	Joueurs_ComboBox:SetValue("Joueur")

	for _, v in ipairs( player.GetAll() ) do
		Joueurs_ComboBox:AddChoice( v:Nick() )
	end

	Joueurs_ComboBox.OnSelect = function( self, index, value )
		ply_tar = value
	end

	local afal_all_button = vgui.Create("DButton", frame)
	afal_all_button:SetText("All")
	afal_all_button:SetPos(450, 50)
	afal_all_button.DoClick = function()
		net.Start("afal_ms_com")
		net.WriteString(ply_tar)
		net.WriteString("All")
		net.SendToServer()
	end

	local afal_health_button = vgui.Create("DButton", frame)
	afal_health_button:SetText("Health")
	afal_health_button:SetPos(450, 100)
	afal_health_button.DoClick = function()
		net.Start("afal_ms_com")
		net.WriteString(ply_tar)
		net.WriteString("Health")
		net.SendToServer()
	end

	local afal_armor_button = vgui.Create("DButton", frame)
	afal_armor_button:SetText("Armor")
	afal_armor_button:SetPos(450, 150)
	afal_armor_button.DoClick = function()
		net.Start("afal_ms_com")
		net.WriteString(ply_tar)
		net.WriteString("Armor")
		net.SendToServer()
	end

	local afal_food_button = vgui.Create("DButton", frame)
	afal_food_button:SetText("Food")
	afal_food_button:SetPos(450, 200)
	afal_food_button.DoClick = function()
		net.Start("afal_ms_com")
		net.WriteString(ply_tar)
		net.WriteString("Food")
		net.SendToServer()
	end

end)