local composer = require( "composer" )
local scene = composer.newScene()

local centerX = display.contentCenterX 
local centerY = display.contentCenterY

local menu = display.newImage("Menu.png",centerX, centerY)  --背景圖,X,Y
  menu.width = centerX*2
  menu.height = centerY*2

local start = display.newImage("Start.png",centerX,centerY-centerY/5)
  start.width = centerX/2
  start.height = centerY/3


function start:touch(event)
	if event.phase == "began" then--如果點擊               
            composer.gotoScene("level_1",{effect = "slideLeft",time = 800})
    end
end













-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view
    start:addEventListener("touch", start )
    print("menu_create")
end

function scene:show( event )
    local sceneGroup = self.view
    print("menu_show")
end

function scene:hide( event )
    local sceneGroup = self.view
    start:removeEventListener("touch",start)
    print("menu_hide")
end

function scene:destroy( event )
    local sceneGroup = self.view
    print("menu_destroy")
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene