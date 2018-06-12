local composer = require( "composer" )
local scene = composer.newScene()
display.setStatusBar( display.HiddenStatusBar ) --隱藏上列

 centerX = display.contentCenterX*2
 centerY = display.contentCenterY*2
--image--

 local menu = display.newImage("Menu/Menu.png",centerX/2,centerY/2) --背景圖
  menu.width = centerX
  menu.height = centerY

 local start = display.newImage("Menu/Start.png",centerX/4,centerY/1.6) --開始按鍵
  start.width = centerX/4
  start.height = centerY/6
  start.alpha = 0
 local exit = display.newImage("Menu/Exit.png",centerX/4,centerY/1.2)
  exit.width = centerX/7
  exit.height = centerY/6
  exit.alpha = 0

 local title = display.newImage("Menu/Title.png",centerX/2,centerY/4)
  title.width = centerX/1.1
  title.height = centerY/4
  title.alpha = 0

--girl_walk--
 local girl_walk_sheetInfo = require("Chara.Girl_Walk")
 local girl_walk_sheet = graphics.newImageSheet( "Chara/Girl_Walk.png", girl_walk_sheetInfo:getSheet() )
  girl_walk_Data = 
    {
      name = "Girl_Walk",
      frames = {1,2,3,4,5,4,3,2},
      time = 1500,
    }
    girl_walk= display.newSprite(girl_walk_sheet, girl_walk_Data )
    girl_walk.x = centerX/1.6
    girl_walk.y = centerY/1.4
    girl_walk.xScale = .5
    girl_walk.yScale = .5
    girl_walk.alpha = 0
    girl_walk:play()

--girl_idle--
  local girl_idle_sheetInfo = require("Chara.Girl_Idle")
  local girl_idle_sheet = graphics.newImageSheet( "Chara/Girl_Idle.png", girl_idle_sheetInfo:getSheet() )
  local girl_idle_Data = 
    {
      name = "Girl_Idle",
      frames = {1,2,3,4,5,6,5,4,3,2},
      time = 1500,
    }
    girl_idle= display.newSprite(girl_idle_sheet, girl_idle_Data )
    girl_idle.x = centerX/1.9
    girl_idle.y = centerY/1.4
    girl_idle.xScale = .5
    girl_idle.yScale = .5
    girl_idle.alpha = 0
    girl_idle:play()

--girl_surprised--
 local girl_surprised_sheetInfo = require("Chara.Girl_Surprised")
 local girl_surprised_sheet = graphics.newImageSheet( "Chara/Girl_Surprised.png", girl_surprised_sheetInfo:getSheet() )
 local girl_surprised_Data = 
    {
      name = "Girl_Surprised",
      frames = {1,2,3,4,5},
      time = 500,
      loopCount = 1--重複一次
    }
    girl_surprised = display.newSprite(girl_surprised_sheet, girl_surprised_Data )
    girl_surprised.x = centerX/2.4
    girl_surprised.y = centerY/1.4
    girl_surprised.xScale = .5
    girl_surprised.yScale = .5
    girl_surprised.alpha = 0
    girl_surprised:play()

--bear--
 local bear_sheetInfo = require("Chara.Bear_Fly")
 local bear_fly_sheet = graphics.newImageSheet( "Chara/Bear_Fly.png", bear_sheetInfo:getSheet() )
 local bear_fly_Data = 
    {
      name = "Bear_Fly",
      frames = {1,2,3,4,5,6,5,4,3,2},
      time = 1500,
    }
    bear_fly= display.newSprite(bear_fly_sheet, bear_fly_Data )
    bear_fly.x = centerX/1.2
    bear_fly.y = centerY/1.8
    bear_fly.xScale = -.5
    bear_fly.yScale = .5
    bear_fly.alpha = 0
    bear_fly:play()

--music--
 local music = audio.loadStream("Menu/Menu.mp3")
  audio.setVolume(.5 ,{channel=1})

 local click = audio.loadStream("Menu/Click.mp3")
 audio.setVolume(.5 ,{channel=1})

--touch--
 function start:touch(event)
	if event.phase == "began" and titlemove == true then --如果點擊                            
            composer.gotoScene("level_1",{effect = "fade",time = 1000})
            start:removeEventListener("touch",start) --start刪除點擊
            exit:removeEventListener("touch",exit)
            audio.play(click)
            audio.fadeOut({channel=1, time=500})
            girlwalk = true
            titleDown()
    end
 end

 function exit:touch(event)
  if event.phase == "began" and titlemove == true then
    os.exit()
  end
 end

titlemove = false

function titleDown(event)
  if title.y<=centerY/3.5 then
    title.y=title.y+0.1
    if title.alpha<1 then
      title.alpha=title.alpha+0.005
    end
    else if start.alpha<1 then
      start.alpha = start.alpha+0.01
      exit.alpha = exit.alpha+0.01
      girl_walk.alpha = girl_walk.alpha +0.01
      bear_fly.alpha = bear_fly.alpha+0.01
    end
  end
  if start.alpha == 1 then
    titlemove = true
  end


  if(titlemove==false) then
  timer.performWithDelay( 10, titleDown)
  end

  if girlwalk == true then
    girl_walk.x = girl_walk.x +1
    bear_fly.x = bear_fly.x +1
    timer.performWithDelay( 10, titleDown)
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
    sceneGroup:insert(bear_fly)--小熊飛行匯入場景
    --sceneGroup:insert(girl_idle)--小女孩待機匯入場景    
    --sceneGroup:insert(girl_surprised)--小女孩驚嚇匯入場景
end

function scene:show( event )
    local sceneGroup = self.view
    start:addEventListener("touch", start ) --start加入點擊
    exit:addEventListener("touch", exit )
    audio.play(music,{channel=1,loops=-1,volume = 0.5,fadein=500})
    titleDown()
end

function scene:hide( event )
  girlwalk = false
end

function scene:destroy( event )
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
