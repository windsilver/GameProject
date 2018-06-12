--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:fcf0977157c2015c2d427795ebe2b1bd:5efadcdaba6d918a6691947d9756d5a0:8e2685f422ac5a64e1d59cc70232cda2$
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
            -- snakeatk_00000
            x=1,
            y=1,
            width=90,
            height=358,

            sourceX = 407,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00001
            x=93,
            y=1,
            width=92,
            height=362,

            sourceX = 418,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00002
            x=187,
            y=1,
            width=90,
            height=362,

            sourceX = 432,
            sourceY = 151,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00003
            x=279,
            y=1,
            width=98,
            height=364,

            sourceX = 441,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00004
            x=379,
            y=1,
            width=102,
            height=368,

            sourceX = 451,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00005
            x=483,
            y=1,
            width=146,
            height=370,

            sourceX = 457,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00006
            x=631,
            y=1,
            width=208,
            height=376,

            sourceX = 458,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00007
            x=1,
            y=379,
            width=302,
            height=382,

            sourceX = 457,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00008
            x=305,
            y=379,
            width=320,
            height=332,

            sourceX = 457,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00009
            x=627,
            y=379,
            width=308,
            height=320,

            sourceX = 457,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00010
            x=1,
            y=763,
            width=282,
            height=330,

            sourceX = 458,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00011
            x=285,
            y=763,
            width=294,
            height=330,

            sourceX = 458,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00012
            x=581,
            y=763,
            width=288,
            height=338,

            sourceX = 458,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00013
            x=1,
            y=1103,
            width=290,
            height=348,

            sourceX = 458,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00014
            x=293,
            y=1103,
            width=308,
            height=338,

            sourceX = 458,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00015
            x=603,
            y=1103,
            width=294,
            height=336,

            sourceX = 458,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00016
            x=1,
            y=1453,
            width=276,
            height=362,

            sourceX = 458,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00017
            x=279,
            y=1453,
            width=240,
            height=386,

            sourceX = 458,
            sourceY = 151,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00018
            x=521,
            y=1453,
            width=228,
            height=396,

            sourceX = 458,
            sourceY = 153,
            sourceWidth = 1080,
            sourceHeight = 720
        },
        {
            -- snakeatk_00019
            x=751,
            y=1453,
            width=228,
            height=398,

            sourceX = 458,
            sourceY = 152,
            sourceWidth = 1080,
            sourceHeight = 720
        },
    },

    sheetContentWidth = 980,
    sheetContentHeight = 1852
}

SheetInfo.frameIndex =
{

    ["snakeatk_00000"] = 1,
    ["snakeatk_00001"] = 2,
    ["snakeatk_00002"] = 3,
    ["snakeatk_00003"] = 4,
    ["snakeatk_00004"] = 5,
    ["snakeatk_00005"] = 6,
    ["snakeatk_00006"] = 7,
    ["snakeatk_00007"] = 8,
    ["snakeatk_00008"] = 9,
    ["snakeatk_00009"] = 10,
    ["snakeatk_00010"] = 11,
    ["snakeatk_00011"] = 12,
    ["snakeatk_00012"] = 13,
    ["snakeatk_00013"] = 14,
    ["snakeatk_00014"] = 15,
    ["snakeatk_00015"] = 16,
    ["snakeatk_00016"] = 17,
    ["snakeatk_00017"] = 18,
    ["snakeatk_00018"] = 19,
    ["snakeatk_00019"] = 20,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
