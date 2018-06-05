--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:e3217cfd6da4ccbdf981960475601366:a5042de00fc245ecf34dc5035025778e:623b63c84d1cd4ab005c92e5ca9c9fde$
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
            -- bear_0
            x=2,
            y=2,
            width=281,
            height=292,

            sourceX = 172,
            sourceY = 257,
            sourceWidth = 596,
            sourceHeight = 842
        },
        {
            -- bear_1
            x=285,
            y=2,
            width=290,
            height=296,

            sourceX = 163,
            sourceY = 248,
            sourceWidth = 596,
            sourceHeight = 842
        },
        {
            -- bear_2
            x=577,
            y=2,
            width=299,
            height=299,

            sourceX = 155,
            sourceY = 240,
            sourceWidth = 596,
            sourceHeight = 842
        },
        {
            -- bear_3
            x=878,
            y=2,
            width=305,
            height=300,

            sourceX = 148,
            sourceY = 234,
            sourceWidth = 596,
            sourceHeight = 842
        },
        {
            -- bear_4
            x=1185,
            y=2,
            width=311,
            height=301,

            sourceX = 141,
            sourceY = 228,
            sourceWidth = 596,
            sourceHeight = 842
        },
        {
            -- bear_5
            x=1498,
            y=2,
            width=316,
            height=300,

            sourceX = 135,
            sourceY = 223,
            sourceWidth = 596,
            sourceHeight = 842
        },
    },
    
    sheetContentWidth = 1816,
    sheetContentHeight = 305
}

SheetInfo.frameIndex =
{

    ["bear_0"] = 1,
    ["bear_1"] = 2,
    ["bear_2"] = 3,
    ["bear_3"] = 4,
    ["bear_4"] = 5,
    ["bear_5"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
