local composer = require( "composer" )
local scene = composer.newScene()

local centerX = display.contentCenterX 
local centerY = display.contentCenterY

local bg = display.newImage("BG.png") --背景圖
  bg.width = centerX*2
  bg.height = centerY*2









-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view
    bg.x = centerX
    bg.y = centerY
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
