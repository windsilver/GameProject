--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:df8cc98e770c8788dea23fdec7186f3b:bb60c72c9b9a9f01a442b9950547ce63:6c92180662d5ec06b375b1f245a937c2$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- Girl_Idle1
            x=2,
            y=2,
            width=236,
            height=650,

            sourceX = 446,
            sourceY = 28,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_Idle2
            x=240,
            y=2,
            width=235,
            height=651,

            sourceX = 445,
            sourceY = 27,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_Idle3
            x=477,
            y=2,
            width=235,
            height=651,

            sourceX = 443,
            sourceY = 27,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_Idle4
            x=714,
            y=2,
            width=235,
            height=652,

            sourceX = 441,
            sourceY = 26,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_Idle5
            x=951,
            y=2,
            width=234,
            height=652,

            sourceX = 440,
            sourceY = 26,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_Idle6
            x=1187,
            y=2,
            width=234,
            height=653,

            sourceX = 438,
            sourceY = 25,
            sourceWidth = 1280,
            sourceHeight = 720
        },
    },
    
    sheetContentWidth = 1423,
    sheetContentHeight = 657
}

SheetInfo.frameIndex =
{

    ["Girl_Idle1"] = 1,
    ["Girl_Idle2"] = 2,
    ["Girl_Idle3"] = 3,
    ["Girl_Idle4"] = 4,
    ["Girl_Idle5"] = 5,
    ["Girl_Idle6"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
