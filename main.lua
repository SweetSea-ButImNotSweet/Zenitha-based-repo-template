-------------------------[ MODULE]-------------------------
require('Zenitha')
STRING.install()
SCR.setSize(SCREEN_W,SCREEN_H)
Zenitha.setDebugInfo{ -- This list is reversed :')
    {'Made by SweetSea, run under Zenitha and love2d',function() return '' end},
    {'',function() return '' end},
    {'Cache',gcinfo},
    {'FPS',love.timer.getFPS},
    {'',function() return '' end},
    {'Time',function() return STRING.time_simp(love.timer.getTime()) end}
}
-------------------------[/MODULE]-------------------------

-------------------------[ LOVE2D]-------------------------
love.keyboard.setTextInput(false)
love.mouse.setVisible(false)
-------------------------[/LOVE2D]-------------------------

-------------------------[ ZENITHA]-------------------------
--[[
    This is for reference, although you can edit this part more
]]

---------------[[ WIDGET]]---------------
-- WIDGET._prototype.base.lineWidth=3
-- WIDGET._prototype.base.cornerR  =0

WIDGET.setDefaultOption{
    base={
        lineWidth=3,
        cornerR  =0
    },
    button={cornerR=0}
}
---------------[[/WIDGET]]---------------

---------------[[ SCENE]]---------------
local scenePath='assets/scene'
for _,f in next,love.filesystem.getDirectoryItems(scenePath) do
    if FILE.isSafe(scenePath..'/'..f) then
        local sceneName=f:sub(1,-5)
        SCN.add(sceneName,require(scenePath..'/'..sceneName))
    end
end
Zenitha.setFirstScene('main')
---------------[[/SCENE]]---------------

---------------[[ FONT]]---------------
-- FONT.load{
--     main='path/to/font.ttf'
--     -- Add more here
-- }
-- FONT.setDefaultFont('main')
---------------[[/FONT]]---------------

---------------[[ LANG]]---------------
LANG.add{
    en='assets/lang/en.lua'
    -- Add more here
}
LANG.setDefault('en')
---------------[[/LANG]]---------------

-------------------------[/ZENITHA]-------------------------



-------------------------[OTHER STUFF - STARTS FROM HERE TO END OF FILE]-------------------------

-- This is the list of default widgets that should be appear in demo
DEFAULT_WIDGETLIST_IN_DEMO_SCENE={
    {type='button',name='demo_menu',x=70,y=40, w=120,h=60,text='MENU'},
    {type='button',name='demo_a',   x=70,y=110,w=120,h=60,text='A'},
}