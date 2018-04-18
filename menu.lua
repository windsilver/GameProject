local composer = require( "composer" )
local scene = composer.newScene()

local centerX = display.contentCenterX 
local centerY = display.contentCenterY

local menu = display.newImage("Menu.png") --背景圖
  menu.width = centerX*2
  menu.height = centerY*2

local start = display.newImage("Start.png",centerX,centerY-centerY/5) --開始按鍵
  start.width = centerX/2
  start.height = centerY/3

function start:touch(event)
	if event.phase == "began" then --如果點擊                            
            composer.gotoScene("level_1",{effect = "fade",time = 500})
            start:removeEventListener("touch",start) --start刪除點擊
    end
end








-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view
    menu.x = centerX --背景圖X
    menu.y = centerY --背景圖Y
    sceneGroup:insert(menu) --menu匯入場景
    sceneGroup:insert(start) --start匯入場景
end

function scene:show( event )
    local sceneGroup = self.view
    start:addEventListener("touch", start ) --start加入點擊
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
