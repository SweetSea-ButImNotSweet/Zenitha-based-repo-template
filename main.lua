-------------------------[ MODULE]-------------------------
require('Zenitha')
STRING.install()
SCR.setSize(SCREEN_W,SCREEN_H)
Zenitha.setDebugInfo{ -- This list is reversed :')
    {'Made by SweetSea, run under Zenitha and love2d',function()return''end},
    {'',function()return''end},
    {'Cache',gcinfo},
    {'FPS',love.timer.getFPS},
    {'',function()return''end},
    {'Time',function()return STRING.time_simp(love.timer.getTime())end}
}
-------------------------[/MODULE]-------------------------

-------------------------[ LOVE2D]-------------------------
love.keyboard.setTextInput(false)
love.mouse.setVisible(false)
-------------------------[/LOVE2D]-------------------------

-------------------------[ GLOBAL VARIABLES - NEED INITIALIZING FIRST]-------------------------
-- This is the list of default widgets that should be appear in demo
DEFAULT_WIDGETLIST_IN_DEMO_SCENE={
    {type='button',name='demoA_key',x=70,y= 40, w=120,h=60,text='A'   ,pos={0,0},code=function()SCN.go('demoA')end},
    {type='button',name='demoB_key',x=70,y=110, w=120,h=60,text='B'   ,pos={0,0},code=function()SCN.go('demoB')end},
    {type='button',name='demoC_key',x=70,y=180, w=120,h=60,text='C'   ,pos={0,0},code=function()SCN.go('demoC')end},
    {type='button',name='demoD_key',x=70,y=250, w=120,h=60,text='D'   ,pos={0,0},code=function()SCN.go('demoD')end},
    {type='button',name='demoE_key',x=70,y=320, w=120,h=60,text='E'   ,pos={0,0},code=function()SCN.go('demoE')end},

    {type='button',name='menu_key' ,x=70,y=-60, w=120,h=60,text='MENU',pos={0,1},code=function()SCN.go('main' )end},
}
-------------------------[/GLOBAL VARIABLES - NEED INITIALIZING FIRST]-------------------------

-------------------------[ ZENITHA]-------------------------
--[[
    This is for reference, although you can edit this part more
]]

---------------[[ WIDGET]]---------------
WIDGET.setDefaultOption{
    base        ={cornerR=0,lineWidth=3},
    button      ={cornerR=0,},
    button_fill ={cornerR=0,},
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
    en='assets/lang/lang_en.lua'
    -- Add more here
}
LANG.setDefault('en')
---------------[[/LANG]]---------------
-------------------------[/ZENITHA]-------------------------



-------------------------[OTHER STUFF - STARTS FROM HERE TO END OF FILE]-------------------------