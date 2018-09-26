
-- Abstract: Hello World
-- Version: 2.0
-- Sample code is MIT licensed; see https://www.coronalabs.com/links/code/license
---------------------------------------------------------------------------------------

local world = display.newImageRect( "world.png", 150, 150 )
world.x = display.contentCenterX
world.y = display.contentCenterY /2

local world2 = display.newImageRect( "world.png", 150, 150 )
world2.x = display.contentCenterX
world2.y = display.contentCenterY *1.5


r = 1
g = 0
b = 0
_Font = 40
_FontUp = false
_FontDown = true


local msgText = display.newText( "Hello, World!", world.x, world.y*2, native.systemFont, _Font )
msgText:setFillColor( r, g, b )





function ColorTest()
	if     r >= 1 and g < 1 and b <= 0 then
		g=g+0.01
		msgText:setFillColor( r, g, b )
	elseif r > 0 and g >= 1 then
		r=r-0.01
		msgText:setFillColor( r, g, b )
	elseif g >= 1 and b < 1 then
		b=b+0.01
		msgText:setFillColor( r, g, b )
	elseif g > 0 and b >= 1 then
		g=g-0.01
		msgText:setFillColor( r, g, b )
	elseif b >= 1 and r < 1 then
		r=r+0.01
		msgText:setFillColor( r, g, b )
	elseif b > 0 and r >= 1 then
		b=b-0.01
		msgText:setFillColor( r, g, b )
	end
	timer.performWithDelay( 10, ColorTest)

	if _Font>=40 then
		_FontUp = false
		_FontDown = true
	elseif _Font <=30 then
		_FontDown = false
		_FontUp = true
	end

	if _FontUp  then
		_Font = _Font+0.2
		msgText.size = _Font
	elseif _FontDown then
		_Font = _Font-0.2
		msgText.size = _Font
	end


end
timer.performWithDelay( 10, ColorTest)