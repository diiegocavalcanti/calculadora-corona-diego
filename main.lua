-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local numerosEntrada, tamEntrada
local widget = require("widget")
local entradas ={}
local alert

centroX = (display.actualContentWidth/2)
centroY = (display.actualContentHeight/2)

tableColuna = (display.actualContentWidth/4)
tableLinha = (display.actualContentHeight/7)

local myRectangle = display.newRect( centroX, tableLinha/2, display.actualContentWidth, tableLinha*2 )
myRectangle.strokeWidth = 0
myRectangle:setFillColor( 0.8, 0.8, 0.8 )

local function onComplete( event )
    if ( event.action == "clicked" ) then
        local i = event.index
        if ( i == 1 ) then
            -- Do nothing; dialog will simply dismiss
        elseif ( i == 2 ) then
            -- Open URL if "Learn More" (second button) was clicked
            --system.openURL( "http://www.coronalabs.com" )
        end
    end
end

local function onObjectTouchAC( event )

    if ( event.phase == "began" ) then    	
    	numerosEntrada.text="0"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end

local function onObjectTouchDEL( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text:sub(0,-2) 		
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end

local function onObjectTouchMAIS( event )

    if ( event.phase == "began" ) then
    	entradas[1]=numerosEntrada.text
    	entradas[2]="+"
		numerosEntrada.text=numerosEntrada.text.."+"
		tamEntrada = #numerosEntrada.text
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchMENOS( event )

    if ( event.phase == "began" ) then
    	entradas[1]=numerosEntrada.text
    	entradas[2]="-"
		numerosEntrada.text=numerosEntrada.text.."-"
		tamEntrada = #numerosEntrada.text
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchVEZES( event )

    if ( event.phase == "began" ) then
    	entradas[1]=numerosEntrada.text
    	entradas[2]="x"
		numerosEntrada.text=numerosEntrada.text.."x"
		tamEntrada = #numerosEntrada.text
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchDIVIDIDO( event )

    if ( event.phase == "began" ) then
    	entradas[1]=numerosEntrada.text
    	entradas[2]="/"
		numerosEntrada.text=numerosEntrada.text.."/"
		tamEntrada = #numerosEntrada.text
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchPORCENTO( event )

    if ( event.phase == "began" ) then
    	entradas[1]=numerosEntrada.text
    	entradas[3]="100"
    	resultado = entradas[1] / entradas[3]
		numerosEntrada.text=""..resultado
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchPONTO( event )

    if ( event.phase == "began" ) then    	
		numerosEntrada.text=numerosEntrada.text.."."
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchREFRESH( event )
    if ( event.action == "clicked" ) then
        local i = event.index
        if ( i == 1 ) then
            numerosEntrada.text="0"
            alert:removeSelf()
			print("entrou")
        end
    end
end

local function onObjectTouchIGUAL( event )

	local valor2, resultado
    if ( event.phase == "began" ) then
    	if(tamEntrada == nil) then
    		--alert = native.showAlert( "Error", "Sintaxe incorreta!", { "OK" }, onObjectTouchREFRESH)
    	else
    		entradas[3] = numerosEntrada.text:sub(tamEntrada+1,-1)
		end

		if(entradas[2]=="+") then
			resultado = entradas[1] + entradas[3]
			numerosEntrada.text=""..resultado
		elseif (entradas[2]=="-")then
			resultado = entradas[1] - entradas[3]
			numerosEntrada.text=""..resultado
		elseif (entradas[2]=="x")then
			resultado = entradas[1] * entradas[3]
			numerosEntrada.text=""..resultado
		elseif (entradas[2]=="/")then
			resultado = entradas[1] / entradas[3]
			numerosEntrada.text=""..resultado
		end

    elseif ( event.phase == "ended" ) then
    end
	
    return true
end

local function onObjectTouchSETE( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."7"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchOITO( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."8"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchNOVE( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."9"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end

local function onObjectTouchQUATRO( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."4"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchCINCO( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."5"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchSEIS( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."6"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end

local function onObjectTouchUM( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."1"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchDOIS( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."2"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchTRES( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."3"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end
local function onObjectTouchZERO( event )

    if ( event.phase == "began" ) then
		numerosEntrada.text=numerosEntrada.text.."0"
    elseif ( event.phase == "ended" ) then
    end
	
    return true
end


numerosEntrada = native.newTextField( centroX, tableLinha, display.actualContentWidth, tableLinha )
numerosEntrada.strokeWidth=0
numerosEntrada.inputType = "number"
numerosEntrada.hasBackground = false



local btn1 = widget.newButton({
	label="AC",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna/2, y=tableLinha*2,
	onEvent = onObjectTouchAC,
	id = "btn1"
})

local btn2 = widget.newButton({
	label="DEL",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*1.5, y=tableLinha*2,
	onEvent = onObjectTouchDEL,
	id="btn2"
})

local btn3 = widget.newButton({
	label="%",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*2.5, y=tableLinha*2,
	onEvent = onObjectTouchPORCENTO,
	id="btn3"
})

local btn4 = widget.newButton({
	label="/",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*3.5, y=tableLinha*2,
	onEvent = onObjectTouchDIVIDIDO,
	id="btn4"
})

local btn5 = widget.newButton({
	label="7",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna/2, y=tableLinha*3,
	onEvent = onObjectTouchSETE,
	id = "btn5"
})

local btn6 = widget.newButton({
	label="8",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*1.5, y=tableLinha*3,
	onEvent = onObjectTouchOITO,
	id = "btn6"
})

local btn7 = widget.newButton({
	label="9",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*2.5, y=tableLinha*3,
	onEvent = onObjectTouchNOVE,
	id = "btn7"
})

local btn8 = widget.newButton({
	label="X",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*3.5, y=tableLinha*3,
	onEvent = onObjectTouchVEZES,
	id = "btn8"

})

local btn9 = widget.newButton({
	label="4",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna/2, y=tableLinha*4,
	onEvent = onObjectTouchQUATRO,
	id = "btn9"
})

local btn10 = widget.newButton({
	label="5",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*1.5, y=tableLinha*4,
	onEvent = onObjectTouchCINCO,
	id = "btn10"
})

local btn11 = widget.newButton({
	label="6",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*2.5, y=tableLinha*4,
	onEvent = onObjectTouchSEIS,
	id = "btn5"
})

local btn12 = widget.newButton({
	label="-",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*3.5, y=tableLinha*4,
	onEvent = onObjectTouchMENOS,
	id = "btn12"
})

local btn13 = widget.newButton({
	label="1",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna/2, y=tableLinha*5,
	onEvent = onObjectTouchUM,
	id = "btn13"
})

local btn14 = widget.newButton({
	label="2",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*1.5, y=tableLinha*5,
	onEvent = onObjectTouchDOIS,
	id = "btn14"
})

local btn15 = widget.newButton({
	label="3",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*2.5, y=tableLinha*5,
	onEvent = onObjectTouchTRES,
	id = "btn15"
})

local btn16 = widget.newButton({
	label="+",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*3.5, y=tableLinha*5,
	onEvent = onObjectTouchMAIS,
	id="btn16"
})

local btn17 = widget.newButton({
	label="0",
	shape="rect",
	width = tableColuna+tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna, y=tableLinha*6,
	onEvent = onObjectTouchZERO,
	id = "btn17"
})

local btn18 = widget.newButton({
	label=".",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 1, 1, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	x=tableColuna*2.5, y=tableLinha*6,
	onEvent = onObjectTouchPONTO,
	id = "btn18"
})

local btn19 = widget.newButton({
	label="=",
	shape="rect",
	width = tableColuna,
	height = tableLinha,
	strokeWidth = 1,
	strokeColor = { default={ 0.8, 0.8, 0.8 }, over={ 0.4, 0.1, 0.2 } },
	fillColor = { default={ 0.3, 0.7, 1, 1}, over={ 0.2, 0.8, 1, 1 } },
	labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } },
	x=tableColuna*3.5, y=tableLinha*6,
	onEvent = onObjectTouchIGUAL,
	id="btn19"
})



