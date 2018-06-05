--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:a66df4ba44c9f93be348043a1b1c9956:0df260365766533cffb77af2518c0942:e17032715022b1a6a36021721d46cfef$
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
            -- scared_00
            x=2,
            y=2,
            width=242,
            height=645,

            sourceX = 449,
            sourceY = 33,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- scared_01
            x=246,
            y=2,
            width=285,
            height=652,

            sourceX = 451,
            sourceY = 31,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- scared_02
            x=533,
            y=2,
            width=289,
            height=654,

            sourceX = 447,
            sourceY = 30,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- scared_03
            x=824,
            y=2,
            width=292,
            height=654,

            sourceX = 444,
            sourceY = 29,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- scared_04
            x=1118,
            y=2,
            width=231,
            height=654,

            sourceX = 444,
            sourceY = 29,
            sourceWidth = 1280,
            sourceHeight = 720
        },
    },
    
    sheetContentWidth = 1351,
    sheetContentHeight = 658
}

SheetInfo.frameIndex =
{

    ["scared_00"] = 1,
    ["scared_01"] = 2,
    ["scared_02"] = 3,
    ["scared_03"] = 4,
    ["scared_04"] = 5,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
