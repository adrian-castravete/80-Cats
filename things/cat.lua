 local c = {
	parents = "2d",
}

function c:init()
	self:tset("cat")
	self.t = math.random()
	self.tv = math.random() + 1
	self.rv = math.random()
end

function c:system(msg, dt)
	self.s = math.sin(self.t) + 2
	self.r = self.r + self.rv * dt
	self.t = self.t + self.tv * dt
end

return c