--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:59e59c2715866beb8539556abc82c7f6:c462a639da89100d74b0036ac2cd6780:24b8544b3f3be98f4c7489d397607985$
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
            -- skanestun_00000
            x=1,
            y=1,
            width=86,
            height=346,

            sourceX = 318,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00001
            x=89,
            y=1,
            width=92,
            height=354,

            sourceX = 313,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00002
            x=183,
            y=1,
            width=96,
            height=368,

            sourceX = 309,
            sourceY = 32,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00003
            x=281,
            y=1,
            width=94,
            height=380,

            sourceX = 310,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00004
            x=377,
            y=1,
            width=86,
            height=388,

            sourceX = 316,
            sourceY = 34,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00005
            x=465,
            y=1,
            width=78,
            height=388,

            sourceX = 322,
            sourceY = 34,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00006
            x=545,
            y=1,
            width=88,
            height=382,

            sourceX = 329,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00007
            x=635,
            y=1,
            width=98,
            height=368,

            sourceX = 333,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00008
            x=735,
            y=1,
            width=102,
            height=352,

            sourceX = 330,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00009
            x=839,
            y=1,
            width=96,
            height=344,

            sourceX = 324,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
        {
            -- skanestun_00010
            x=937,
            y=1,
            width=86,
            height=346,

            sourceX = 318,
            sourceY = 33,
            sourceWidth = 720,
            sourceHeight = 480
        },
    },

    sheetContentWidth = 1024,
    sheetContentHeight = 390
}

SheetInfo.frameIndex =
{

    ["skanestun_00000"] = 1,
    ["skanestun_00001"] = 2,
    ["skanestun_00002"] = 3,
    ["skanestun_00003"] = 4,
    ["skanestun_00004"] = 5,
    ["skanestun_00005"] = 6,
    ["skanestun_00006"] = 7,
    ["skanestun_00007"] = 8,
    ["skanestun_00008"] = 9,
    ["skanestun_00009"] = 10,
    ["skanestun_00010"] = 11,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
