local c = {
	x = 0,
	y = 0,
	w = 8,
	h = 8,
}

function c:system()
	local s = self.s or 1
	lg.push()
	lg.translate(self.x, self.y)
	lg.scale(s, s)
	lg.rotate(self.r or 0)
	lg.translate(-self.w/2, -self.h/2)
	self:draw()
	lg.pop()
end

function c:draw()
end

return c