--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:d4834b2134619fa807a81a9632448893:62cc55492af80517f3f1d0f6b35b74d2:572680790cacc6ef4a94462e6c5fdd2e$
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
            -- Girl_1
            x=2,
            y=2,
            width=258,
            height=646,

            sourceX = 455,
            sourceY = 37,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_2
            x=262,
            y=2,
            width=254,
            height=648,

            sourceX = 453,
            sourceY = 36,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_3
            x=518,
            y=2,
            width=251,
            height=648,

            sourceX = 451,
            sourceY = 35,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_4
            x=771,
            y=2,
            width=246,
            height=647,

            sourceX = 450,
            sourceY = 34,
            sourceWidth = 1280,
            sourceHeight = 720
        },
        {
            -- Girl_5
            x=1019,
            y=2,
            width=242,
            height=645,

            sourceX = 449,
            sourceY = 33,
            sourceWidth = 1280,
            sourceHeight = 720
        },
    },
    
    sheetContentWidth = 1263,
    sheetContentHeight = 652
}

SheetInfo.frameIndex =
{

    ["Girl_1"] = 1,
    ["Girl_2"] = 2,
    ["Girl_3"] = 3,
    ["Girl_4"] = 4,
    ["Girl_5"] = 5,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
