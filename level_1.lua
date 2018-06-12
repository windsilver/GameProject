local composer = require( "composer" )
local scene = composer.newScene()

--local centerX = display.contentCenterX*2
--local centerY = display.contentCenterY*2

local bg = display.newImage("Lv1/BG.png") --背景圖
  bg.x = centerX*1.5 --  (-640)(/-2)(第三段) (640)(/2)(第二段) (1920)(*1.5)(第一段)
  bg.y = centerY/2
  bg.width = centerX*3
  bg.height = centerY
  bg.alpha = 0

local _GameOver = display.newImage("Lv1/GameOver.jpg")
	_GameOver.x = centerX/2
	_GameOver.y = centerY/2
	_GameOver.alpha = 0

local DialogueBox = display.newImage("Lv1/DialogueBox.png")
DialogueBox.x = centerX/2
DialogueBox.y = centerY/1.15
DialogueBox.alpha = 0

local CG1 = display.newImage("Lv1/CG1.jpg")
CG1.x = centerX/2
CG1.y = centerY/2
CG1.alpha = 1

local CG2 = display.newImage("Lv1/CG2.jpg")
CG2.x = centerX/2
CG2.y = centerY/2
CG2.alpha = 0

local Durian = display.newImage("Lv1/durian.png")
Durian.x = centerX/1.45
Durian.y = centerY/10
Durian.xScale = .05
Durian.yScale = .05
Durian.alpha = 0

local music1 = audio.loadStream("Lv1/Music1.mp3")
local walking = audio.loadStream("Lv1/Walking.mp3")
local music2 = audio.loadStream("Lv1/Music2.mp3")

local Text_options = 
{ 
	text = "",
	x = centerX/2,
	y = centerY/1.15,
	width = 1100,
	height = 100
}
local Dialogue_text = display.newText(Text_options)
Dialogue_text:setFillColor(0,0,0)

local elf_idle_sheetInfo = require("Chara.Elf_Idle")
  local elf_idle_sheet = graphics.newImageSheet( "Chara/Elf_Idle.png", elf_idle_sheetInfo:getSheet() )
  local elf_idle_Data = 
    {
      name = "Elf_Idle",
      frames = {1,2,3,4,5,6,5,4,3,2},
      time = 1000,
    }
    elf_idle= display.newSprite(elf_idle_sheet, elf_idle_Data )
    elf_idle.x = centerX/10
    elf_idle.y = centerY/2.1
    elf_idle.xScale = .2
    elf_idle.yScale = .2
    elf_idle.alpha = 0
    elf_idle:play()

local elf_move_sheetInfo = require("Chara.Elf_Move")
  local elf_move_sheet = graphics.newImageSheet( "Chara/Elf_Move.png", elf_move_sheetInfo:getSheet() )
  local elf_move_Data = 
    {
      name = "Elf_Move",
      frames = {1,2,3,4,5,6,5,4,3,2},
      time = 1000,
    }
    elf_move= display.newSprite(elf_move_sheet, elf_move_Data )
    elf_move.x = centerX/10
    elf_move.y = centerY/2.1
    elf_move.xScale = .2
    elf_move.yScale = .2
    elf_move.alpha = 0
    elf_move:play()

local snake_idle_sheetInfo = require("Chara.Snake_Idle")
  local snake_idle_sheet = graphics.newImageSheet( "Chara/Snake_Idle.png", snake_idle_sheetInfo:getSheet() )
  local snake_idle_Data = 
    {
      name = "Snake_Idle",
      frames = {1,2,3,4,3,2},
      time = 1000,
    }
    snake_idle= display.newSprite(snake_idle_sheet, snake_idle_Data )
    snake_idle.x = centerX/1.575
    snake_idle.y = centerY/2.9
    snake_idle.xScale = 0.8
    snake_idle.yScale = 0.8
    snake_idle.alpha = 0
    snake_idle:play()

 local snake_atk_sheetInfo = require("Chara.Snake_Atk")
  local snake_atk_sheet = graphics.newImageSheet( "Chara/Snake_Atk.png", snake_atk_sheetInfo:getSheet() )
  local snake_atk_Data = 
    {
      name = "Snake_Atk",
      start = 1,
      count = 20,
      time = 1000,
      loopCount = 1,
    }
    snake_atk= display.newSprite(snake_atk_sheet, snake_atk_Data )
    snake_atk.x = centerX/1.45
    snake_atk.y = centerY/2.9
    snake_atk.xScale = 0.8
    snake_atk.yScale = 0.8
    snake_atk.alpha = 0

 local snake_hit_sheetInfo = require("Chara.Snake_Hit")
  local snake_hit_sheet = graphics.newImageSheet( "Chara/Snake_Hit.png", snake_hit_sheetInfo:getSheet() )
  local snake_hit_Data = 
    {
      name = "Snake_Hit",
      start = 1,
      count = 6,
      time = 500,
      loopCount = 1,
    }
    snake_hit= display.newSprite(snake_hit_sheet, snake_hit_Data )
    snake_hit.x = centerX/1.575
    snake_hit.y = centerY/2.9
    snake_hit.xScale = 0.8
    snake_hit.yScale = 0.8
    snake_hit.alpha = 0

local snake_stun_sheetInfo = require("Chara.Snake_Stun")
  local snake_stun_sheet = graphics.newImageSheet( "Chara/Snake_Stun.png", snake_stun_sheetInfo:getSheet() )
  local snake_stun_Data = 
    {
      name = "Snake_Stun",
      start = 1,
      count = 11,
      time = 1000,
    }
    snake_stun= display.newSprite(snake_stun_sheet, snake_stun_Data )
    snake_stun.x = centerX/1.575
    snake_stun.y = centerY/2.9
    snake_stun.xScale = 0.8
    snake_stun.yScale = 0.8
    snake_stun.alpha = 0
    snake_stun:play()












--int--
sentence = 0
B=0
--bool--
GameStart = false
Dialogue = false
GameOver = false
SnakeDown = false
BearDown = false











local function DialogueBoxUp()
	if DialogueBox.alpha<1 and sentence==0 then
		DialogueBox.alpha=DialogueBox.alpha+0.05
		DialogueBox:toFront()
		Dialogue_text:toFront()
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence==0 then
		Dialogue_text.text = "小女孩:好想念爸爸和媽媽..."
		Dialogue = true
	end
	if sentence==1 and CG1.alpha >0 then
		CG1.alpha=CG1.alpha-0.05
		DialogueBox.alpha=DialogueBox.alpha-0.05
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence==1 and CG1.alpha <=0 and CG2.alpha<1 then
		CG2.alpha=CG2.alpha+0.05
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence==1 and CG2.alpha >=1 and DialogueBox.alpha<1 then
		DialogueBox.alpha=DialogueBox.alpha+0.05
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif  sentence==1 and CG2.alpha >=1 and DialogueBox.alpha>=1 then

		Dialogue_text.text = "小女孩:恩?那是什麼?"
		Dialogue=true
	elseif sentence == 2 and CG2.alpha >0  then
		CG2.alpha=CG2.alpha-0.05
		local walk = audio.play(walking,{channel = 3,volume = 0.5,duration=2200,onComplete = walkingBool})
		timer.performWithDelay( 10, DialogueBoxUp)
		
	elseif sentence ==2 and CG2.alpha ==0  then
		
		if B <=2 then 
			B=B+1 
			timer.performWithDelay( 1000, DialogueBoxUp)
		elseif B > 1 then 
			Dialogue_text.text = "小女孩:阿——！"
			Dialogue=true
		end
	elseif sentence ==3 and bg.alpha <1 and DialogueBox.alpha>0 then
		DialogueBox.alpha=DialogueBox.alpha-0.05
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence ==3 and bg.alpha <1 and DialogueBox.alpha==0 then
		bg.alpha = bg.alpha+0.05
		audio.fadeOut({channel=2, time=500})
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence==3 and bg.alpha==1 and DialogueBox.alpha<1 then
		audio.stop({channel=2})
		elf_idle.alpha = elf_idle.alpha +0.05
		DialogueBox.alpha = DialogueBox.alpha+0.05
		Durian.alpha = Durian.alpha+0.05
		snake_idle.alpha = snake_idle.alpha+0.05
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence==3 and bg.alpha ==1 and DialogueBox.alpha==1 then
		audio.play(music2,{channel = 3,fadein=1000,volume = 0.5,loops=-1})
		Dialogue_text.text = "精靈：嘿嘿～你已經被困在這片精靈之森了～"
		Dialogue=true
	elseif sentence ==4 then
		Dialogue_text.text = "精靈：想離開這裡的話就陪我玩個遊戲吧～"
		Dialogue=true
	elseif sentence ==5 then
		Dialogue_text.text = "精靈：主題是躲貓貓～遊戲規則很簡單～我會在路上設置很多、很多～的陷阱～你只要繞過那些找到我就行了～"
		Dialogue=true
	elseif sentence ==6 then
		Dialogue_text.text = "精靈：⋯當然，這片森林也居住著些稍微有點危險的野獸⋯"
		Dialogue=true
	elseif sentence ==7 then
		Dialogue_text.text = "精靈：但那不重要！我們直接開始遊戲吧～！"
		Dialogue=true
	elseif sentence ==8 and elf_move.x<centerX  then
		if elf_move.alpha<1 then
		elf_idle.alpha =0
		elf_move.alpha =1
		end
		elf_move.x=elf_move.x+5
		if girl_walk.x < 190 then
		girl_walk.x = girl_walk.x+1
		else
		girl_idle.alpha=1
		girl_walk.alpha=0
		girl_idle.x = girl_walk.x
		end
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence==8 and elf_move.x>=centerX then
		elf_move.alpha=0
		Dialogue_text.text = "小女孩：嗚⋯怎麼辦⋯"
		Dialogue=true
	elseif sentence==9 and bear_fly.x<400 then
		bear_fly.x=bear_fly.x+5
		if bear_fly.x==200 then
			girl_surprised.x = girl_idle.x
			girl_idle.alpha=0
			girl_surprised.alpha=1
			girl_surprised:play()
		end
		timer.performWithDelay( 10, DialogueBoxUp)
	elseif sentence==9 and bear_fly.x>=400 then
		Dialogue_text.text = "熊娃娃:不用擔心，我會把你安全送回家的!"
		Dialogue=true
	elseif sentence==10 then
		girl_idle.alpha=1
		girl_surprised.alpha=0
		Dialogue_text.text = "小女孩:熊娃娃居然會說話!而且還會飛!"
		Dialogue=true
	elseif sentence==11 then
		Dialogue_text.text = "熊娃娃:似乎是因為這片精靈之森的某種力量，所以我才..."
		Dialogue=true
	elseif sentence==12 then
		Dialogue_text.text = "熊娃娃:先不講這個。離開這裡要緊，跟緊我。"
		Dialogue=true
	elseif sentence==13 then
		Dialogue_text.text = "請點擊畫面上的危險事物來讓小女孩安全通過"
		Dialogue=true
	elseif sentence==14 then
		DialogueBox.alpha = 0
		girl_idle.alpha=0
		girl_walk.alpha=1
		girl_GO()
		GameStart = true
	end

end


function girl_GO()
	if GameOver == false then
		girl_walk.x = girl_walk.x+1
		bear_fly.x = bear_fly.x+1
		timer.performWithDelay( 10,girl_GO)
	end
		if SnakeDown == false and bear_fly.x == 800 then
		snake_idle.alpha = 0
		snake_atk.alpha = 1
		snake_atk:play()
		bear_fly.alpha = 0
		girl_walk.alpha = 0
		girl_surprised.x = girl_walk.x
		girl_surprised.alpha = 1
		girl_surprised:play()
		GameOver= true
		timer.performWithDelay( 1500, Gameover)
	end
	if girl_walk.x>centerX then
		DialogueBox.alpha = 1
		Dialogue_text.text = "To Be continued"
	end
end







function DialogueBox:touch(event)
	if event.phase == "began" and Dialogue == true then --如果點擊                            
           Dialogue_text.text=""
           sentence=sentence+1
           timer.performWithDelay( 10, DialogueBoxUp)
           Dialogue = false
    end
    if event.phase == "began" and GameStart == true then
    	os.exit()
    end
 end

function Durian:touch(event)
	if event.phase == "began" and GameStart == true  and GameOver == false then --如果點擊                     
		DurianDown()
		B=0
    end
 end
function DurianDown()
	if Durian.y < 350 then
		
		Durian.y=Durian.y+2
		timer.performWithDelay( 10,DurianDown)
	elseif B<5 then
		Durian.alpha = 0
		snake_idle.alpha = 0
		snake_hit.alpha = 1
		snake_hit:play()
		B=B+1
		timer.performWithDelay( 600,DurianDown)
	elseif B ==5 then
		snake_hit.alpha = 0
		snake_stun.alpha = 1
		SnakeDown = true
	end
end



function Gameover()
	if _GameOver.alpha<1 then
	_GameOver:toFront()
	audio.fadeOut({channel=3, time=500})
	_GameOver.alpha = _GameOver.alpha+0.005
	timer.performWithDelay( 10,Gameover)
	end
end


function _GameOver:touch(event)
	if event.phase == "began" and _GameOver.alpha==1 and GameOver == true then --如果點擊                     
		os.exit()
    end
 end




-----------------------------------------
function scene:create( event )
    local sceneGroup = self.view    
    sceneGroup:insert(bg)
    sceneGroup:insert(CG1)
    sceneGroup:insert(CG2)
    sceneGroup:insert(DialogueBox)
    sceneGroup:insert(Dialogue_text)
    sceneGroup:insert(elf_move)
    sceneGroup:insert(elf_idle)
    sceneGroup:insert(snake_idle)
    sceneGroup:insert(snake_atk)
    sceneGroup:insert(snake_stun)
    sceneGroup:insert(snake_hit)
    sceneGroup:insert(Durian)
    sceneGroup:insert(_GameOver)
    infor = 0
end

function scene:show( event )
	local sceneGroup = self.view
	DialogueBox:addEventListener("touch", DialogueBox ) 
	Durian:addEventListener("touch",Durian)
	_GameOver:addEventListener("touch",_GameOver)
	infor = infor +1--開場條件Ｘ４

	
	if infor == 4 then
	sceneGroup:insert(girl_walk)
	sceneGroup:insert(girl_idle)
	sceneGroup:insert(girl_surprised)
	sceneGroup:insert(bear_fly)
	bear_fly.x = -80
	girl_walk.x = -40
	timer.performWithDelay( 10, DialogueBoxUp)
	audio.stop({channel=1})
	audio.play(music1,{channel = 2,fadein=500,volume = 0.5,loops=-1})


	print(girl_walk.x)
	end
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
