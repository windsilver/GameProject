--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:3d6cee067d753bc4a610e86fcf7b9ef4:ff18b09ad5d466fa6fbb447530f223b7:1ac899ee3b88beef6287faa056816eaf$
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
            -- SnakeIdle_00
            x=1,
            y=1,
            width=88,
            height=346,

            sourceX = 317,
            sourceY = 34,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- SnakeIdle_01
            x=1,
            y=349,
            width=88,
            height=348,

            sourceX = 317,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- SnakeIdle_02
            x=1,
            y=699,
            width=88,
            height=348,

            sourceX = 318,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- SnakeIdle_03
            x=1,
            y=1049,
            width=88,
            height=344,

            sourceX = 317,
            sourceY = 34,
            sourceWidth = 720,
            sourceHeight = 480
        },
    },

    sheetContentWidth = 90,
    sheetContentHeight = 1394
}

SheetInfo.frameIndex =
{

    ["SnakeIdle_00"] = 1,
    ["SnakeIdle_01"] = 2,
    ["SnakeIdle_02"] = 3,
    ["SnakeIdle_03"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
