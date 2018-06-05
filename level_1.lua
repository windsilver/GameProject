local composer = require( "composer" )
local scene = composer.newScene()

local centerX = display.contentCenterX*2
local centerY = display.contentCenterY*2

local bg = display.newImage("Lv1/Bg.png") --背景圖
  bg.x = centerX*1.5 --  (-640)(/-2)(第三段) (640)(/2)(第二段) (1920)(*1.5)(第一段)
  bg.y = centerY/2
  girlgirl()
  












-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view
    sceneGroup:insert(bg)
end

function scene:show( event )
	
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
