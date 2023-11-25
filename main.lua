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

-------------------------[ GLOBAL VARIABLES]-------------------------
SCENE_PATH='assets/scene'

-- This is the list of default widgets that should be appear in demo
DEFAULT_WIDGETLIST={
    {type='button',x=70,y=40, w=120,h=60,text='MENU'},
    {type='button',x=70,y=110,w=120,h=60,text='A'},
}
-------------------------[/GLOBAL VARIABLES]-------------------------

-------------------------[ LOVE2D]-------------------------
love.mouse.setVisible(false)
-------------------------[/LOVE2D]-------------------------

-------------------------[ ZENITHA]-------------------------
--[[
    This is for reference, although you can edit this part more
]]

---------------[[ WIDGET]]---------------
WIDGET._prototype.base.lineWidth=3
WIDGET._prototype.base.cornerR  =0
---------------[[/WIDGET]]---------------

---------------[[ SCENE]]---------------
for _,f in next,love.filesystem.getDirectoryItems(SCENE_PATH) do
    if FILE.isSafe(SCENE_PATH..'/'..f) then
        local sceneName=f:sub(1,-5)
        SCN.add(sceneName,require(SCENE_PATH..'/'..sceneName))
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
-- LANG.add{
--     en='assets/lang/en'
--     -- Add more here
-- }
-- LANG.setDefault('en')
---------------[[/LANG]]---------------

-------------------------[/ZENITHA]-------------------------