local thingBag = {
	"2d",
	"cat",
}

for _, name in ipairs(thingBag) do
	local thing = require("things." .. name)
	thing.name = name
	fkge.componentSystem(thing)
end