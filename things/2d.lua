local c = {
	x = 0,
	y = 0,
	w = 8,
	h = 8,
	r = 0,
	s = 1,
	q = lg.newQuad(0, 0, 8, 8, 8, 8)
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
	if not self.img then return end
	
	lg.draw(self.img, self.q, 0, 0)
end

function c:tset(name)
	local path = "assets/" .. name .. ".png"
	self.img = lg.newImage(path)
	self.imgW, self.imgH = self.img:getDimensions()
	self.q = lg.newQuad(0, 0, 8, 8, self.imgW, self.imgH)
end

function c:tile(cx, cy)
	self.q:setViewport(cx*8, cy*8, 8, 8, self.imgW, self.imgH)
end


return c