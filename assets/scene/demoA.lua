local scene={}

function scene.enter()
end

widgetList={
    WIDGET.new{type='inputBox',x=140,y=10,w=850,h=590}
}

scene.widgetList=TABLE.combine(widgetList,DEFAULT_WIDGETLIST_IN_DEMO_SCENE)
return scene