--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:cc3a40d008ac7d4e986f7bebb53afb8e:b1ed8f26282c446405b28f3addaa87d7:b84d940b0c4fd3b626d96d47ba5da69f$
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
            -- Puppy1
            x=2,
            y=2,
            width=86,
            height=86,

            sourceX = 0,
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

            sourceX = 0,
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

            sourceX = 1,
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

            sourceX = 2,
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

            sourceX = 0,
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

            sourceX = 0,
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

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 96,
            sourceHeight = 90
        },
        {
            -- Puppy8
            x=178,
            y=2,
            width=92,
            height=78,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 96,
            sourceHeight = 90
        },
    },
    
    sheetContentWidth = 730,
    sheetContentHeight = 90
}

SheetInfo.frameIndex =
{

    ["Puppy1"] = 1,
    ["Puppy2"] = 2,
    ["Puppy3"] = 3,
    ["Puppy4"] = 4,
    ["Puppy5"] = 5,
    ["Puppy6"] = 6,
    ["Puppy7"] = 7,
    ["Puppy8"] = 8,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
