--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:6300327ef99ab245e6ac455aa87b2be0:2cc163dcc34595ec3fdc2723c3228a1f:20f4f6db0202dca47bd3e47be1651884$
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
            -- 1
            x=2,
            y=2,
            width=241,
            height=249,

            sourceX = 29,
            sourceY = 22,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 10
            x=245,
            y=2,
            width=249,
            height=253,

            sourceX = 13,
            sourceY = 21,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 2
            x=245,
            y=2,
            width=249,
            height=253,

            sourceX = 24,
            sourceY = 11,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 3
            x=496,
            y=2,
            width=255,
            height=256,

            sourceX = 13,
            sourceY = 15,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 4
            x=753,
            y=2,
            width=261,
            height=257,

            sourceX = 9,
            sourceY = 14,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 5
            x=1016,
            y=2,
            width=266,
            height=257,

            sourceX = 5,
            sourceY = 17,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 6
            x=1284,
            y=2,
            width=270,
            height=256,

            sourceX = 3,
            sourceY = 12,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 7
            x=1016,
            y=2,
            width=266,
            height=257,

            sourceX = 10,
            sourceY = 11,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 8
            x=753,
            y=2,
            width=261,
            height=257,

            sourceX = 6,
            sourceY = 20,
            sourceWidth = 400,
            sourceHeight = 500
        },
        {
            -- 9
            x=496,
            y=2,
            width=255,
            height=256,

            sourceX = 9,
            sourceY = 16,
            sourceWidth = 400,
            sourceHeight = 500
        },
    },
    
    sheetContentWidth = 1556,
    sheetContentHeight = 261
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["7"] = 7,
    ["8"] = 8,
    ["9"] = 9,
    ["10"] = 10,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
