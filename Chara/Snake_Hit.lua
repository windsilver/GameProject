--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:d111d05cb8abcbdce84a04fbd0715920:9bf50f4fb87e0c24d0f6b93b2735aaf5:805bf0c2006a9061ab5c72dfc6e9f20d$
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
            -- snakehit_00000
            x=1,
            y=1,
            width=92,
            height=340,

            sourceX = 320,
            sourceY = 21,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- snakehit_00001
            x=95,
            y=1,
            width=90,
            height=344,

            sourceX = 319,
            sourceY = 21,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- snakehit_00002
            x=187,
            y=1,
            width=90,
            height=350,

            sourceX = 319,
            sourceY = 20,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- snakehit_00003
            x=279,
            y=1,
            width=90,
            height=348,

            sourceX = 319,
            sourceY = 20,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- snakehit_00004
            x=371,
            y=1,
            width=90,
            height=344,

            sourceX = 320,
            sourceY = 21,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- snakehit_00005
            x=463,
            y=1,
            width=96,
            height=342,

            sourceX = 321,
            sourceY = 21,
            sourceWidth = 720,
            sourceHeight = 480
        },
    },

    sheetContentWidth = 560,
    sheetContentHeight = 352
}

SheetInfo.frameIndex =
{

    ["snakehit_00000"] = 1,
    ["snakehit_00001"] = 2,
    ["snakehit_00002"] = 3,
    ["snakehit_00003"] = 4,
    ["snakehit_00004"] = 5,
    ["snakehit_00005"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
