print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" - - - - - - - Linventif Commands Menu v1  - - - - - - - - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" - - - - - - - - - Create by Linventif - - - - - - - - - - ")
print(" - - - - Join my discord : https://dsc.gg/linventif  - - - ")
print(" - - - -  Watch my website : https://linventif.org - - - - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")

net.Receive( "open_commands_menu", function()
    local LCMFRAME = vgui.Create("DFrame")
    if LCM.AddBonusLine == true then
        LCMFRAME:SetSize(1080, 720) 
    else 
        LCMFRAME:SetSize(1080, 620) 
    end
    LCMFRAME:Center() 
    LCMFRAME:SetTitle("Commands Menu by Linventif | v1")
    LCMFRAME:MakePopup()
    LCMFRAME:GetBackgroundBlur(true) 
    LCMFRAME.Paint = function(s, w, h)
        draw.RoundedBox(0, 0, 0, w, h, LCM.BackGroundColor)
        if LCM.DisableBorder == false then
            draw.RoundedBox(2, 0, 0, 2, 22, LCM.BorderColor)
            draw.RoundedBox(2, 0, 0, 23, 2, LCM.BorderColor) 
            draw.RoundedBox(2, 1078, 0, 2, 22, LCM.BorderColor)
            draw.RoundedBox(2, 1057, 0, 23, 2, LCM.BorderColor) 
            if LCM.AddBonusLine == true then
                draw.RoundedBox(2, 0, 697, 2, 22, LCM.BorderColor)
                draw.RoundedBox(2, 0, 718, 23, 2, LCM.BorderColor)            
                draw.RoundedBox(2, 1078, 697, 2, 22, LCM.BorderColor)
                draw.RoundedBox(2, 1057, 718, 23, 2, LCM.BorderColor)            
            elseif LCM.AddBonusLine == false then
                draw.RoundedBox(2, 0, 597, 2, 22, LCM.BorderColor)
                draw.RoundedBox(2, 0, 618, 23, 2, LCM.BorderColor) 
                draw.RoundedBox(2, 1078, 597, 2, 22, LCM.BorderColor)
                draw.RoundedBox(2, 1057, 618, 23, 2, LCM.BorderColor)
            end 
        end
        draw.SimpleText( LCM.CategoryName1, LCM.CategoryFont, 185, 60,  LCM.CategoryColorText, TEXT_ALIGN_CENTER )
        draw.SimpleText( LCM.CategoryName2, LCM.CategoryFont, 540, 60,  LCM.CategoryColorText, TEXT_ALIGN_CENTER )
        draw.SimpleText( LCM.CategoryName3, LCM.CategoryFont, 895, 60,  LCM.CategoryColorText, TEXT_ALIGN_CENTER )
        draw.SimpleText( LCM.CategoryName4, LCM.CategoryFont, 185, 350, LCM.CategoryColorText, TEXT_ALIGN_CENTER )
        draw.SimpleText( LCM.CategoryName5, LCM.CategoryFont, 540, 350, LCM.CategoryColorText, TEXT_ALIGN_CENTER )
        draw.SimpleText( LCM.CategoryName6, LCM.CategoryFont, 895, 350, LCM.CategoryColorText, TEXT_ALIGN_CENTER )    
    end

    local y = {120, 220, 320, 420, 520, 620}
    local x = {40, 205, 395, 560, 750, 915}

    local ButtonCat1But1 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat1But1:SetText( LCM.ButtonCat1But1Name )	
    ButtonCat1But1:SetPos( x[1], y[1] )
    ButtonCat1But1:SetSize( 125, 60 )
    ButtonCat1But1:SetTextColor( LCM.CategoryColorText )
    ButtonCat1But1.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat1But1.DoClick = LCM.ButtonCat1But1Function

    local ButtonCat1But2 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat1But2:SetText( LCM.ButtonCat1But2Name )				
    ButtonCat1But2:SetPos( x[2], y[1] )
    ButtonCat1But2:SetSize( 125, 60 )
    ButtonCat1But2:SetTextColor( LCM.CategoryColorText )
    ButtonCat1But2.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat1But2.DoClick = LCM.ButtonCat1But2Function

    local ButtonCat1But3 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat1But3:SetText( LCM.ButtonCat1But3Name )		
    ButtonCat1But3:SetPos( x[1], y[2] )
    ButtonCat1But3:SetSize( 125, 60 )
    ButtonCat1But3:SetTextColor( LCM.CategoryColorText )
    ButtonCat1But3.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat1But3.DoClick = LCM.ButtonCat3But3Function

    local ButtonCat1But4 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat1But4:SetText( LCM.ButtonCat1But4Name )	
    ButtonCat1But4:SetPos( x[2], y[2] )
    ButtonCat1But4:SetSize( 125, 60 )
    ButtonCat1But4:SetTextColor( LCM.CategoryColorText )
    ButtonCat1But4.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat1But4.DoClick = LCM.ButtonCat4But4Function
    
    local ButtonCat2But1 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat2But1:SetText( LCM.ButtonCat2But1Name )	
    ButtonCat2But1:SetPos( x[3], y[1] )
    ButtonCat2But1:SetSize( 125, 60 )
    ButtonCat2But1:SetTextColor( LCM.CategoryColorText )
    ButtonCat2But1.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat2But1.DoClick = LCM.ButtonCat2But1Function

    local ButtonCat2But2 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat2But2:SetText( LCM.ButtonCat2But2Name )				
    ButtonCat2But2:SetPos( x[4], y[1] )
    ButtonCat2But2:SetSize( 125, 60 )
    ButtonCat2But2:SetTextColor( LCM.CategoryColorText )
    ButtonCat2But2.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat2But2.DoClick = LCM.ButtonCat2But2Function

    local ButtonCat2But3 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat2But3:SetText( LCM.ButtonCat2But3Name )		
    ButtonCat2But3:SetPos( x[3], y[2] )
    ButtonCat2But3:SetSize( 125, 60 )
    ButtonCat2But3:SetTextColor( LCM.CategoryColorText )
    ButtonCat2But3.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat2But3.DoClick = LCM.ButtonCat2But3Function

    local ButtonCat2But4 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat2But4:SetText( LCM.ButtonCat2But4Name )	
    ButtonCat2But4:SetPos( x[4], y[2] )
    ButtonCat2But4:SetSize( 125, 60 )
    ButtonCat2But4:SetTextColor( LCM.CategoryColorText )
    ButtonCat2But4.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat2But4.DoClick = LCM.ButtonCat2But4Function
    
    local ButtonCat3But1 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat3But1:SetText( LCM.ButtonCat3But1Name )	
    ButtonCat3But1:SetPos( x[5], y[1] )
    ButtonCat3But1:SetSize( 125, 60 )
    ButtonCat3But1:SetTextColor( LCM.CategoryColorText )
    ButtonCat3But1.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat3But1.DoClick = LCM.ButtonCat3But1Function

    local ButtonCat3But2 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat3But2:SetText( LCM.ButtonCat3But2Name )				
    ButtonCat3But2:SetPos( x[6], y[1] )
    ButtonCat3But2:SetSize( 125, 60 )
    ButtonCat3But2:SetTextColor( LCM.CategoryColorText )
    ButtonCat3But2.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat3But2.DoClick = LCM.ButtonCat3But2Function

    local ButtonCat3But3 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat3But3:SetText( LCM.ButtonCat3But3Name )		
    ButtonCat3But3:SetPos( x[5], y[2] )
    ButtonCat3But3:SetSize( 125, 60 )
    ButtonCat3But3:SetTextColor( LCM.CategoryColorText )
    ButtonCat3But3.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat3But3.DoClick = LCM.ButtonCat3But3Function

    local ButtonCat3But4 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat3But4:SetText( LCM.ButtonCat3But4Name )	
    ButtonCat3But4:SetPos( x[6], y[2] )
    ButtonCat3But4:SetSize( 125, 60 )
    ButtonCat3But4:SetTextColor( LCM.CategoryColorText )
    ButtonCat3But4.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat3But4.DoClick = LCM.ButtonCat3But4Function

    local ButtonCat4But1 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat4But1:SetText( LCM.ButtonCat4But1Name )	
    ButtonCat4But1:SetPos( x[1], y[4] )
    ButtonCat4But1:SetSize( 125, 60 )
    ButtonCat4But1:SetTextColor( LCM.CategoryColorText )
    ButtonCat4But1.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat4But1.DoClick = LCM.ButtonCat4But1Function

    local ButtonCat4But2 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat4But2:SetText( LCM.ButtonCat4But2Name )				
    ButtonCat4But2:SetPos( x[2], y[4] )
    ButtonCat4But2:SetSize( 125, 60 )
    ButtonCat4But2:SetTextColor( LCM.CategoryColorText )
    ButtonCat4But2.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat4But2.DoClick = LCM.ButtonCat4But2Function

    local ButtonCat4But3 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat4But3:SetText( LCM.ButtonCat4But3Name )		
    ButtonCat4But3:SetPos( x[1], y[5] )
    ButtonCat4But3:SetSize( 125, 60 )
    ButtonCat4But3:SetTextColor( LCM.CategoryColorText )
    ButtonCat4But3.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat4But3.DoClick = LCM.ButtonCat4But3Function

    local ButtonCat4But4 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat4But4:SetText( LCM.ButtonCat4But4Name )	
    ButtonCat4But4:SetPos( x[2], y[5] )
    ButtonCat4But4:SetSize( 125, 60 )
    ButtonCat4But4:SetTextColor( LCM.CategoryColorText )
    ButtonCat4But4.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat4But4.DoClick = LCM.ButtonCat4But4Function

    if LCM.AddBonusLine == true then
        local ButtonCat4But5 = vgui.Create( "DButton", LCMFRAME )
        ButtonCat4But5:SetText( LCM.ButtonCat4But5Name )	
        ButtonCat4But5:SetPos( x[1], y[6] )
        ButtonCat4But5:SetSize( 125, 60 )
        ButtonCat4But5:SetTextColor( LCM.CategoryColorText )
        ButtonCat4But5.Paint = function(s, w, h)
            surface.SetDrawColor(LCM.BorderColor)
            surface.DrawOutlinedRect(0, 0, 125, 60)
        end
        ButtonCat4But5.DoClick = LCM.ButtonCat4But5Function

        local ButtonCat4But6 = vgui.Create( "DButton", LCMFRAME )
        ButtonCat4But6:SetText( LCM.ButtonCat4But6Name )	
        ButtonCat4But6:SetPos( x[2], y[6] )
        ButtonCat4But6:SetSize( 125, 60 )
        ButtonCat4But6:SetTextColor( LCM.CategoryColorText )
        ButtonCat4But6.Paint = function(s, w, h)
            surface.SetDrawColor(LCM.BorderColor)
            surface.DrawOutlinedRect(0, 0, 125, 60)
        end
        ButtonCat4But6.DoClick = LCM.ButtonCat4But6Function
    end
    
    local ButtonCat5But1 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat5But1:SetText( LCM.ButtonCat5But1Name )	
    ButtonCat5But1:SetPos( x[3], y[4] )
    ButtonCat5But1:SetSize( 125, 60 )
    ButtonCat5But1:SetTextColor( LCM.CategoryColorText )
    ButtonCat5But1.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat5But1.DoClick = LCM.ButtonCat5But1Function

    local ButtonCat5But2 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat5But2:SetText( LCM.ButtonCat5But2Name )				
    ButtonCat5But2:SetPos( x[4], y[4] )
    ButtonCat5But2:SetSize( 125, 60 )
    ButtonCat5But2:SetTextColor( LCM.CategoryColorText )
    ButtonCat5But2.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat5But2.DoClick = LCM.ButtonCat5But2Function  

    local ButtonCat5But3 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat5But3:SetText( LCM.ButtonCat5But3Name )		
    ButtonCat5But3:SetPos( x[3], y[5] )
    ButtonCat5But3:SetSize( 125, 60 )
    ButtonCat5But3:SetTextColor( LCM.CategoryColorText )
    ButtonCat5But3.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat5But3.DoClick = LCM.ButtonCat5But3Function

    local ButtonCat5But4 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat5But4:SetText( LCM.ButtonCat5But4Name )	
    ButtonCat5But4:SetPos( x[4], y[5] )
    ButtonCat5But4:SetSize( 125, 60 )
    ButtonCat5But4:SetTextColor( LCM.CategoryColorText )
    ButtonCat5But4.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat5But4.DoClick = LCM.ButtonCat5But4Function  

    if LCM.AddBonusLine == true then
        local ButtonCat5But5 = vgui.Create( "DButton", LCMFRAME )
        ButtonCat5But5:SetText( LCM.ButtonCat5But5Name )	
        ButtonCat5But5:SetPos( x[3], y[6] )
        ButtonCat5But5:SetSize( 125, 60 )
        ButtonCat5But5:SetTextColor( LCM.CategoryColorText )
        ButtonCat5But5.Paint = function(s, w, h)
            surface.SetDrawColor(LCM.BorderColor)
            surface.DrawOutlinedRect(0, 0, 125, 60)
        end
        ButtonCat5But5.DoClick = LCM.ButtonCat5But5Function

        local ButtonCat5But6 = vgui.Create( "DButton", LCMFRAME )
        ButtonCat5But6:SetText( LCM.ButtonCat5But6Name )	
        ButtonCat5But6:SetPos( x[4], y[6] )
        ButtonCat5But6:SetSize( 125, 60 )
        ButtonCat5But6:SetTextColor( LCM.CategoryColorText )
        ButtonCat5But6.Paint = function(s, w, h)
            surface.SetDrawColor(LCM.BorderColor)
            surface.DrawOutlinedRect(0, 0, 125, 60)
        end
        ButtonCat5But6.DoClick = LCM.ButtonCat5But6Function
    end
    
    local ButtonCat6But1 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat6But1:SetText( LCM.ButtonCat6But1Name )	
    ButtonCat6But1:SetPos( x[5], y[4] )
    ButtonCat6But1:SetSize( 125, 60 )
    ButtonCat6But1:SetTextColor( LCM.CategoryColorText )
    ButtonCat6But1.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat6But1.DoClick = LCM.ButtonCat6But1Function

    local ButtonCat6But2 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat6But2:SetText( LCM.ButtonCat6But2Name )				
    ButtonCat6But2:SetPos( x[6], y[4] )
    ButtonCat6But2:SetSize( 125, 60 )
    ButtonCat6But2:SetTextColor( LCM.CategoryColorText )
    ButtonCat6But2.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat6But2.DoClick = LCM.ButtonCat6But2Function

    local ButtonCat6But3 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat6But3:SetText( LCM.ButtonCat6But3Name )		
    ButtonCat6But3:SetPos( x[5], y[5] )
    ButtonCat6But3:SetSize( 125, 60 )
    ButtonCat6But3:SetTextColor( LCM.CategoryColorText )
    ButtonCat6But3.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat6But3.DoClick = LCM.ButtonCat6But3Function

    local ButtonCat6But4 = vgui.Create( "DButton", LCMFRAME )
    ButtonCat6But4:SetText( LCM.ButtonCat6But4Name )	
    ButtonCat6But4:SetPos( x[6], y[5] )
    ButtonCat6But4:SetSize( 125, 60 )
    ButtonCat6But4:SetTextColor( LCM.CategoryColorText )
    ButtonCat6But4.Paint = function(s, w, h)
        surface.SetDrawColor(LCM.BorderColor)
        surface.DrawOutlinedRect(0, 0, 125, 60)
    end
    ButtonCat6But4.DoClick = LCM.ButtonCat6But4Function

    if LCM.AddBonusLine == true then
        local ButtonCat6But5 = vgui.Create( "DButton", LCMFRAME )
        ButtonCat6But5:SetText( LCM.ButtonCat6But5Name )	
        ButtonCat6But5:SetPos( x[5], y[6] )
        ButtonCat6But5:SetSize( 125, 60 )
        ButtonCat6But5:SetTextColor( LCM.CategoryColorText )
        ButtonCat6But5.Paint = function(s, w, h)
            surface.SetDrawColor(LCM.BorderColor)
            surface.DrawOutlinedRect(0, 0, 125, 60)
        end
        ButtonCat6But5.DoClick = LCM.ButtonCat6But5Function

        local ButtonCat6But6 = vgui.Create( "DButton", LCMFRAME )
        ButtonCat6But6:SetText( LCM.ButtonCat6But6Name )	
        ButtonCat6But6:SetPos( x[6], y[6] )
        ButtonCat6But6:SetSize( 125, 60 )
        ButtonCat6But6:SetTextColor( LCM.CategoryColorText )
        ButtonCat6But6.Paint = function(s, w, h)
            surface.SetDrawColor(LCM.BorderColor)
            surface.DrawOutlinedRect(0, 0, 125, 60)
        end
        ButtonCat6But6.DoClick = LCM.ButtonCat6But6Function
    end

end)