local composer = require( "composer" )
local sheetInfo = require("dog")
local scene = composer.newScene()

local centerX = display.contentCenterX --相對X
local centerY = display.contentCenterY --相對Y
local _W = display.contentWidth
local _H = display.contentHeight


local dog = graphics.newImageSheet( "dog.png", sheetInfo:getSheet() )--狗的圖載入

display.setStatusBar( display.HiddenStatusBar ) --隱藏上列
--bg--
  local bg = display.newImage( "bg.png")  --背景圖,X,Y
 bg.width = centerX
 bg.height = centerY*2
 bg.name = "bg"

--music--
  local music = audio.loadStream("bgmusic.mp3")
      audio.setVolume(.5 ,{channel=1})

--dogDeta--
 local dog1Deta = {
 {
  name="dog1",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=300,
  loopCount=0
 }}
 local dog2Deta = {
 {
  name="dog2",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=280,
  loopCount=0
 }}
 local dog3Deta = {
 {
  name="dog3",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=260,
  loopCount=0
 }}
 local dog4Deta = {
 {
  name="dog4",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=240,
  loopCount=0
 }}
 local dog5Deta = {
 {
  name="dog5",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=220,
  loopCount=0
 }}
 local dog6Deta = {
 {
  name="dog6",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=200,
  loopCount=0
 }}
 local dog7Deta = {
 {
  name="dog7",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=180,
  loopCount=0
 }}
 local dog8Deta = {
 {
  name="dog8",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=160,
  loopCount=0
 }}

--dog--
  local baseline = 280 --基準點高度

  local dog1 = display.newSprite( dog,dog1Deta )
  dog1.x = display.contentWidth
  dog1.y = baseline
  dog1.xScale = .4
  dog1.yScale = .4
  dog1:play()

  local dog2 = display.newSprite( dog,dog2Deta )
  dog2.x = display.contentWidth+10
  dog2.y = baseline-20
  dog2.xScale = .4
  dog2.yScale = .4
  dog2:play()

  local dog3 = display.newSprite( dog,dog3Deta )
  dog3.x = display.contentWidth+30
  dog3.y = baseline+20
  dog3.xScale = .4
  dog3.yScale = .4
  dog3:play()

  local dog4 = display.newSprite( dog,dog4Deta )
  dog4.x = display.contentWidth+50
  dog4.y = baseline-40
  dog4.xScale = .4
  dog4.yScale = .4
  dog4:play()

  local dog5 = display.newSprite( dog,dog5Deta )
  dog5.x = display.contentWidth+70
  dog5.y = baseline-30
  dog5.xScale = .4
  dog5.yScale = .4
  dog5:play()

  local dog6 = display.newSprite( dog,dog6Deta )
  dog6.x = display.contentWidth+90
  dog6.y = baseline+10
  dog6.xScale = .4
  dog6.yScale = .4
  dog6:play()

  local dog7 = display.newSprite( dog,dog7Deta )
  dog7.x = display.contentWidth+110
  dog7.y = baseline-10
  dog7.xScale = .4
  dog7.yScale = .4
  dog7:play()

  local dog8 = display.newSprite( dog,dog8Deta )
  dog8.x = display.contentWidth+70
  dog8.y = baseline-50
  dog8.xScale = .4
  dog8.yScale = .4
  dog8:play()

--文字--
 local text1 = display.newImage("1.png",centerX-60, centerY-120)
 text1.width = centerX/6
 text1.height = centerY/4
 text1.alpha = 0

 local text2 = display.newImage("2.png",centerX-20, centerY-80)
 text2.width = centerX/6
 text2.height = centerY/4
 text2.alpha = 0

 local text3 = display.newImage("3.png",centerX+20, centerY-120)
 text3.width = centerX/5
 text3.height = centerY/3
 text3.alpha = 0

 local text4 = display.newImage("4.png",centerX+60, centerY-80)
 text4.width = centerX/6
 text4.height = centerY/4
 text4.alpha = 0

 local text5 = display.newImage("5.png",centerX-60, centerY-40)
 text5.width = centerX/6
 text5.height = centerY/4
 text5.alpha = 0

 local text6 = display.newImage("6.png",centerX+20, centerY+10)
 text6.width = centerX/1.6
 text6.height = centerY/3.8
 text6.alpha = 0

 local t1 = function()
    if text1.alpha< 1 then
      text1.alpha = text1.alpha+0.01
    end
    if text1.alpha< 1 and text1.alpha>= 0.03 then
      text1.alpha = text1.alpha+0.96
    end
    if text2.alpha< 1 and text1.alpha>= 1 then
     	text2.alpha = text2.alpha+0.99
    end
    if text3.alpha< 1 and text2.alpha>= 1 then
     	text3.alpha = text3.alpha+0.99
    end
    if text4.alpha< 1 and text3.alpha>= 1 then
     	text4.alpha = text4.alpha+0.99
    end
    if text5.alpha< 1 and text4.alpha>= 1 then
      text5.alpha = text5.alpha+0.99
    end
    if text6.alpha< 1 and text5.alpha>= 1 then
      text6.alpha = text6.alpha+1
      audio.play(music,{channel=1,loops=1})
    end
        
  end
  
     timer.performWithDelay(500,t1,9)
     
 local t2 = function()
   os.exit()
 end
  
   


--跑入時間設定--
  local tPrevious = system.getTimer() --獲得系統時間
  local function move(event)
	local tDelta = event.time - tPrevious  --提前執行時間
	tPrevious = event.time

	local xOffset = ( 0.2 * tDelta )  --每系統時間秒*0.2 = 移動時間

  if text6.alpha >=1 then

	dog1.x = dog1.x - xOffset*0.2 
  dog2.x = dog2.x - xOffset*0.4 
  dog3.x = dog3.x - xOffset*0.6
  dog4.x = dog4.x - xOffset*0.8
  dog5.x = dog5.x - xOffset*0.3
  dog6.x = dog6.x - xOffset*0.5
  dog7.x = dog7.x - xOffset*0.7
  dog8.x = dog8.x - xOffset*0.9
  timer.performWithDelay(24000,t2)
  end

	if (dog1.x + dog1.contentWidth) < bg.x-100 then
		dog1:translate( bg.height, 0)
	end
	if (dog2.x + dog2.contentWidth) < bg.x-100 then
    dog2:translate( bg.height, 0)
  end
  if (dog3.x + dog3.contentWidth) < bg.x-100 then
    dog3:translate( bg.height, 0)
  end
	if (dog4.x + dog4.contentWidth) < bg.x-100 then
    dog4:translate( bg.height, 0)
  end
  if (dog5.x + dog5.contentWidth) < bg.x-100 then
    dog5:translate( bg.height, 0)
  end
  if (dog6.x + dog6.contentWidth) < bg.x-100 then
    dog6:translate( bg.height, 0)
  end
  if (dog7.x + dog7.contentWidth) < bg.x-100 then
    dog7:translate( bg.height, 0)
  end
  if (dog8.x + dog8.contentWidth) < bg.x-100 then
    dog8:translate( bg.height, 0)
  end
 end


 

--載入前--
 function scene:create( event )
   local sceneGroup = self.view
    bg.x = centerX
    bg.y = centerY
    sceneGroup:insert(bg)
 end
--載入時--
 function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "did" ) then--如果載入完畢
      Runtime:addEventListener( "enterFrame", move );--開始時 執行Move
    end
 end
--削去前--
 function scene:hide( event )
    local sceneGroup = self.view
 end
--削去後--
 function scene:destroy( event )
    local sceneGroup = self.view
 end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
