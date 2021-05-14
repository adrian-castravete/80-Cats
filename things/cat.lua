local c = {
	parents = "2d",
}

local img = lg.newImage("assets/cat.png")
function c:draw()
	lg.draw(img, 0, 0)
end

return c