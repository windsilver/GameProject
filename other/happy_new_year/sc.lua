local composer = require( "composer" )

local scene = composer.newScene()

local centerX = display.contentCenterX --相對X
local centerY = display.contentCenterY --相對Y
local scbg = display.newImage("scbg.png")  --背景圖,X,Y
 scbg.width = centerX
 scbg.height = centerY*2

local touch = display.newImage( "touch.png", centerX, centerY)
touch.width = centerX/2
 touch.height = centerY/4
 touch.name = "touch1"
 touch.alpha = 0



function onTouch(event)
        if event.phase == "began" then

            if event.target.name == "touch1" then
              touch.alpha = 0
              touch:removeEventListener("touch1",onTouch)
              
            end 
        end
    end


local sheetInfo = require("dog")
local dog = graphics.newImageSheet( "dog.png", sheetInfo:getSheet() )
local dogData = 
 {
  name="dogsc",
  sheet=dog,
  start=sheetInfo:getFrameIndex("Puppy1"),
  count=8,
  time=300,
  loopCount=0
 }

local dogA = {}
  --1
  dogA[1]=display.newSprite( dog,dogData )
  dogA[1].x =display.contentWidth
  dogA[1].y =20
  --2
  dogA[2]=display.newSprite( dog,dogData )
  dogA[2].x =display.contentWidth
  dogA[2].y =60
  --3
  dogA[3]=display.newSprite( dog,dogData )
  dogA[3].x =display.contentWidth
  dogA[3].y =100
  --4
  dogA[4]=display.newSprite( dog,dogData )
  dogA[4].x =display.contentWidth
  dogA[4].y =140
  --5
  dogA[5]=display.newSprite( dog,dogData )
  dogA[5].x =display.contentWidth
  dogA[5].y =180
  --6
  dogA[6]=display.newSprite( dog,dogData )
  dogA[6].x =display.contentWidth
  dogA[6].y =220
  --7
  dogA[7]=display.newSprite( dog,dogData )
  dogA[7].x =display.contentWidth
  dogA[7].y =260
  --8
  dogA[8]=display.newSprite( dog,dogData )
  dogA[8].x =display.contentWidth
  dogA[8].y =300

local dogB
  dogB=display.newSprite( dog,dogData )
  dogB.x =display.contentWidth
  dogB.y =280
  dogB:play()
  dogB.xScale =.6
  dogB.yScale =.6
aa = true
function run( event )
    if dogB.x >  display.contentWidth/2 then
        dogB.x = dogB.x - 3
    end
    if  dogB.x ==  (display.contentWidth/2) and aa== true then
        touch.alpha = 1
        aa = false
    end
    if dogB.x <= (display.contentWidth/2) and touch.alpha == 0 then
        
        dogB.x = dogB.x - 3
    end
    if dogB.x <= 100 then
        Runtime:removeEventListener( "enterFrame", run )
        composer.gotoScene("menu",{effect = "slideLeft",time = 2000})

    end

end


-----------------------------------------------------------
  



function scene:create( event )
    Runtime:addEventListener( "enterFrame", run )
    local sceneGroup = self.view
    scbg.x =centerX
    scbg.y =centerY
    sceneGroup:insert(scbg)
    sceneGroup:insert(touch)
    sceneGroup:insert(dogB)
    local i
       for i = 1, #dogA, 1 do
       sceneGroup:insert(dogA[i])
       dogA[i]:play()
       dogA[i].xScale =.6
       dogA[i].yScale =.6
    end

end

function scene:show( event )
    local sceneGroup = self.view
     touch:addEventListener( "touch", onTouch )
   end

function scene:hide( event )
    local sceneGroup = self.view
    
   end

function scene:destroy( event )
    local sceneGroup = self.view
    composer.removeScene("sc")
    
 end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
