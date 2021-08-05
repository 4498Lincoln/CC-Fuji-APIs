-- Emulate the newline created by print()
local function emPrint(tex, monit)
    local term = monit or term
    term.write(tex)
    local oX, oY = term.getCursorPos()
    local sX, sY = term.getSize()
    if sY == oY then
       term.scroll(1)
       term.setCursorPos(1, oY)
    else
       term.setCursorPos(1, oY + 1) 
    end
end

-- Offset the cursor
function cursorOffset(x, y, monit)
    local term = monit or term
    local oX, oY = term.getCursorPos()
    term.setCursorPos(oX + x, oY + y)
end

-- Set cursor X and set cursor Y independently
function setCursorX(x, monit)
    local term = monit or term
    local oX, oY = term.getCursorPos()
    term.setCursorPos(x, oY)
end

function setCursorY(y, monit)
    local term = monit or term
    local oX, oY = term.getCursorPos()
    term.setCursorPos(oX, y)
end

-- Quick replacement for term.blit()
function blit(tex, color, pri, monit)
    local term = monit or term
    local oldColor = term.getBackgroundColor()
    term.setBackgroundColor(color)
    if pri then
        term.write(tex)
	term.setBackgroundColor(oldColor)
	print("")
    else
        term.write(tex)
    end
    term.setBackgroundColor(oldColor)
end

-- Quick replacement for text coloring
function tlit(tex, color, pri, monit)
    local term = monit or term
    local oldColor = term.getTextColor()
    term.setTextColor(color)
    if pri then
        term.write(tex)
	print("")
    else
        term.write(tex)
    end
    term.setTextColor(oldColor)
end
