local scene={}

function scene.enter()
    scene.widgetList.inputBox:setText("")
end

widgetList={
    {type='inputBox',name='inputBox',x=330,y=10,w=660,h=590,text=LANG'demoA_inputBox'}
}

scene.widgetList=TABLE.combine(widgetList,DEFAULT_WIDGETLIST_IN_DEMO_SCENE)
return scene