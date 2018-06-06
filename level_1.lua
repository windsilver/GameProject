local composer = require( "composer" )
local scene = composer.newScene()

--local centerX = display.contentCenterX*2
--local centerY = display.contentCenterY*2

local bg = display.newImage("Lv1/Bg.png") --背景圖
  bg.x = centerX*1.5 --  (-640)(/-2)(第三段) (640)(/2)(第二段) (1920)(*1.5)(第一段)
  bg.y = centerY/2
  bg.width = centerX*3
  bg.height = centerY



  





local function girlwalk(event)
	girl_walk.x = girl_walk.x+1
	--print(girl_walk.frames)
	if girl_walk.x < 200 then
	timer.performWithDelay( 10, girlwalk)
	else
		girl_idle.alpha=1
		girl_walk.alpha=0
		girl_idle.x = girl_walk.x

    end
end





-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view
    sceneGroup:insert(bg)
    infor = 0
end

function scene:show( event )
	local sceneGroup = self.view

	infor = infor +1--開場條件Ｘ４

	if infor == 4 then
	sceneGroup:insert(girl_walk)
	sceneGroup:insert(girl_idle)
	girl_walk.x = -20
	timer.performWithDelay( 10, girlwalk)
	print(girl_walk.x)
	end
end

function scene:hide( event )
end

function scene:destroy( event )
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
