local composer = require( "composer" )
local scene = composer.newScene()

local centerX = display.contentCenterX 
local centerY = display.contentCenterY

local bg = display.newImage("BG.png",centerX, centerY)  --背景圖,X,Y
  bg.width = centerX*2
  bg.height = centerY*2

















-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view
    print("level_create")
end

function scene:show( event )
    local sceneGroup = self.view
    print("level_show")
    composer.removeScene( "menu" )
end

function scene:hide( event )
    local sceneGroup = self.view
end

function scene:destroy( event )
    local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene