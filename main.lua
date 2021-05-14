fkge = require("fkge")
lg = love.graphics
require("things")

fkge.scene("game", function ()
	fkge.entity("cat").attr {
		x = 120,
		y = 80,
	}
	for j=0, 1 do
		for i=0, 1 do
			fkge.entity("cat").attr {
				x = i*240, 
				y = j*160,
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