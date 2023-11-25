local scene={}

scene.enter()

widgetList={
    WIDGET.new{type='inputBox',x=140,y=10,w=200,h=200}
}

scene.widgetList=TABLE.combine(widgetList,DEFAULT_WIDGETLIST)
return scene