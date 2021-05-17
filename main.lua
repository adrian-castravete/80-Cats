fkge = require("fkge")
lg = love.graphics
lg.setDefaultFilter("nearest", "nearest")
require("things")

fkge.scene("game", function ()
	for j=0,	4 do
		for i=0, 6 do
			fkge.entity("cat").attr {
				x = i*40, 
				y = j*40,
			}
		end
	end
end)

fkge.game{
	width = 240,
	height = 160,
	background = {1/3, 2/3, 1},
}

fkge.scene("game")