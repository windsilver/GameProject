--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:36765e86192cffba22d4e854c3209efa:fec9fa47857f858c227174a1ad64a35b:b84d940b0c4fd3b626d96d47ba5da69f$
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
            -- Puppy0
            x=178,
            y=2,
            width=92,
            height=78,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy1
            x=2,
            y=2,
            width=86,
            height=86,

            sourceX = 10,
            sourceY = 0,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy2
            x=90,
            y=2,
            width=86,
            height=81,

            sourceX = 10,
            sourceY = 5,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy3
            x=361,
            y=2,
            width=85,
            height=78,

            sourceX = 10,
            sourceY = 8,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy4
            x=272,
            y=2,
            width=87,
            height=78,

            sourceX = 7,
            sourceY = 8,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy5
            x=542,
            y=2,
            width=90,
            height=76,

            sourceX = 6,
            sourceY = 10,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy6
            x=448,
            y=2,
            width=92,
            height=76,

            sourceX = 4,
            sourceY = 10,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy7
            x=634,
            y=2,
            width=94,
            height=74,

            sourceX = 2,
            sourceY = 2,
            sourceWidth = 96,
            sourceHeight = 90
        },
    },
    
    sheetContentWidth = 730,
    sheetContentHeight = 90
}

SheetInfo.frameIndex =
{

    ["Puppy0"] = 1,
    ["Puppy1"] = 2,
    ["Puppy2"] = 3,
    ["Puppy3"] = 4,
    ["Puppy4"] = 5,
    ["Puppy5"] = 6,
    ["Puppy6"] = 7,
    ["Puppy7"] = 8,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
