local composer = require( "composer" )
local scene = composer.newScene()

local centerX = display.contentCenterX*2
local centerY = display.contentCenterY*2

local bg = display.newImage("Lv1/Bg.png",centerX/2,centerY/2) --背景圖
  bg.width = centerX*3
  bg.height = centerY
  print(bg.width)
  print(bg.height)
  --位置待修












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
