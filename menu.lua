local composer = require( "composer" )
local scene = composer.newScene()
display.setStatusBar( display.HiddenStatusBar ) --隱藏上列

local centerX = display.contentCenterX 
local centerY = display.contentCenterY
--image--
 local menu = display.newImage("Menu.png") --背景圖
  menu.width = centerX*2
  menu.height = centerY*2

 local start = display.newImage("Start.png",centerX/2,centerY+centerY/4) --開始按鍵
  start.width = centerX/2
  start.height = centerY/3

 local exit = display.newImage("Exit.png",centerX/2,centerY+centerY/1.8)
  exit.width = centerX/3.5
  exit.height = centerY/3

 local title = display.newImage("Title.png",centerX,centerY-centerY/2)
  title.width = centerX*1.8
  title.height = centerY/2.2 

--music--
 local music = audio.loadStream("Menu.mp3")
  audio.setVolume(.5 ,{channel=1})

--touch--
 function start:touch(event)
	if event.phase == "began" then --如果點擊                            
            composer.gotoScene("level_1",{effect = "fade",time = 500})
            start:removeEventListener("touch",start) --start刪除點擊
            exit:removeEventListener("touch",exit)
    end
 end

 function exit:touch(event)
  if event.phase == "began" then
    os.exit()
  end
 end




  while (title.y<=200) do
    title.y=title.y+1
    print(title.y)
    break
  end




-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view
    menu.x = centerX --背景圖X
    menu.y = centerY --背景圖Y
    sceneGroup:insert(menu) --menu匯入場景
    sceneGroup:insert(start) --start匯入場景
    sceneGroup:insert(exit) --exit匯入場景
    sceneGroup:insert(title) --title匯入場景
end

function scene:show( event )
    local sceneGroup = self.view
    start:addEventListener("touch", start ) --start加入點擊
    exit:addEventListener("touch", exit )
    audio.play(music,{channel=1,loop=1})
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
