PANEL = {}


AccessorFunc( PANEL, "m_strType", 		"Type" )
AccessorFunc( PANEL, "m_Character", 	"Char" )



/*---------------------------------------------------------
	Init
---------------------------------------------------------*/
function PANEL:Init()

	self:SetTextInset( 0, 0 )

end

/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:SetType( strType )

	self.m_strType = strType
	
	if ( strType == "close" ) then self:SetChar( "r" ) 
	elseif ( strType == "grip" ) then self:SetChar( "p" ) 
	elseif ( strType == "down" ) then self:SetChar( "u" ) 
	elseif ( strType == "up" ) then self:SetChar( "t" ) 
	elseif ( strType == "updown" ) then self:SetChar( "v" ) 
	elseif ( strType == "tick" ) then self:SetChar( "a" ) 
	elseif ( strType == "right" ) then self:SetChar( "4" ) 
	elseif ( strType == "left" ) then self:SetChar( "3" ) 
	elseif ( strType == "question" ) then self:SetChar( "s" ) 
	elseif ( strType == "none" ) then self:SetChar( "" ) 
	end

end

function PANEL:SetChar( strChar )

	self.m_Character = strChar
	self:SetText( strChar )

end

function PANEL:SetTextColorHovered( color )
	self.HoverColor = color
end

function PANEL:Paint( w, h)

	if ( self.m_bBackground ) then
	
		local col = Color( 120, 120, 120, 255 )
		
		if ( self:GetDisabled() ) then
			col = Color( 100, 100, 100, 255 )
		elseif ( self.Depressed ) then
			col = Color( 110, 150, 250, 255 )
		elseif ( self.Hovered ) then
			col = self.HoverColor or Color( 150, 150, 150, 255 )
		end
		
		draw.RoundedBox( 2, 0, 0, w, h, Color( 0, 0, 0, 230 ) )
		draw.RoundedBox( 2, 1, 1, w-2, h-2, Color( col.r + 30, col.g + 30, col.b + 30 ) )
		draw.RoundedBox( 2, 2, 2, w-4, h-4, col )
		
		draw.RoundedBox( 0, 3, h*0.5, w-6, h-h*0.5-2, Color( 0, 0, 0, 40 ) )
	
	end

end


/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:ApplySchemeSettings()
	
	self:SetFont("Marlett")
	
	DLabel.ApplySchemeSettings( self )

end

derma.DefineControl( "DSysButton", "System Button", PANEL, "DButton" )