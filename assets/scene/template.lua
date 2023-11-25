local scene={}
scene.scrollHeight=nil -- Scene's height?
-- If you want to set it default, set nil or just don't insert this line lol

--[[
    Here is the list of all avaliable events that you can use to make a scene
    "enter",
    "leave",

    "mouseDown","mouseMove","mouseUp","mouseClick","wheelMoved",
    "touchDown","touchUp","touchMove","touchClick",
    "keyDown","keyUp",
    "gamepadDown","gamepadUp",
    "fileDropped","directoryDropped",
    "resize",
    "update","draw",
]]

function scene.enter()
end

function scene.leave()
end

scene.widgetList={
    --[[
        For now you can add widgets here just by leaving
        {type='text',x=62,y=26,...}
        Don't need to add WIDGET.new{} unless you found you need it

        There are 14 types of widget you can use for now
            text, image,
            button, button_fill, button_invis,
            checkBox, switch, selector
            slider, slider_fill, slider_progress,
            inputBox, textBox, listBox

        NOTE:
            1.  button, button_fill, button_invis,...
                are aligned in the center of the widget.
                Other widgets are aligned in the top-left corner of the widget
    ]]
}

return scene