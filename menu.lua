local composer = require( "composer" )
local scene = composer.newScene()
display.setStatusBar( display.HiddenStatusBar ) --隱藏上列

local centerX = display.contentCenterX*2
local centerY = display.contentCenterY*2
--image--

 local menu = display.newImage("Menu/Menu.png",centerX/2,centerY/2) --背景圖
  menu.width = centerX
  menu.height = centerY
  print(menu.x)
  print(menu.width)
  print(menu.height)

 local start = display.newImage("Menu/Start.png",centerX/4,centerY/1.6) --開始按鍵
  start.width = centerX/4
  start.height = centerY/6
  start.alpha = 0
 local exit = display.newImage("Menu/Exit.png",centerX/4,centerY/1.2)
  exit.width = centerX/7
  exit.height = centerY/6
  exit.alpha = 0

 local title = display.newImage("Menu/Title.png",centerX/2,centerY/4)
  title.width = centerX/1.2
  title.height = centerY/4
  title.alpha = 0

--girl--
local girl_sheetInfo = require("Girl_Walk")
local girl_walk_sheet = graphics.newImageSheet( "Chara/Girl_Walk.png", girl_sheetInfo:getSheet() )

 local girl_walk_Data = 
    {
      name = "Girl_Walk",
      sheet = girl,
      frames = {1,2,4,6,8,7,5,3},
      time = 1500,
    }
 local girl_walk= display.newSprite(girl_walk_sheet, girl_walk_Data )
    girl_walk.x = centerX/1.6
    girl_walk.y = centerY/1.4
    girl_walk.xScale = .5
    girl_walk.yScale = .5
    girl_walk:play()


--music--
 local music = audio.loadStream("menu/Menu.mp3")
  audio.setVolume(.5 ,{channel=1})

 local click = audio.loadStream("menu/Click.mp3")
 audio.setVolume(.5 ,{channel=1})
--touch--
 function start:touch(event)
	if event.phase == "began" then --如果點擊                            
            composer.gotoScene("level_1",{effect = "fade",time = 1000})
            start:removeEventListener("touch",start) --start刪除點擊
            exit:removeEventListener("touch",exit)
            audio.play(click)
            audio.fadeOut({channel=1, time=500})
    end
 end

 function exit:touch(event)
  if event.phase == "began" then
    os.exit()
  end
 end

titlemove = false

local function test(event)
  if title.y<=centerY/3.5 then
    title.y=title.y+0.1
    --print(title.y)
    if title.alpha<1 then
      title.alpha=title.alpha+0.005
    end
    else
      titlemove = true
      start.alpha = 1
      exit.alpha = 1
  end
  if(titlemove==false) then
  timer.performWithDelay( 10, test)
  end
 end







-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view

    sceneGroup:insert(menu) --menu匯入場景
    sceneGroup:insert(start) --start匯入場景
    sceneGroup:insert(exit) --exit匯入場景
    sceneGroup:insert(title) --title匯入場景
    sceneGroup:insert(girl_walk)--小女孩走路匯入場景
end

function scene:show( event )
    local sceneGroup = self.view
    start:addEventListener("touch", start ) --start加入點擊
    exit:addEventListener("touch", exit )
    audio.play(music,{channel=1,loop=1})
    test()
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
