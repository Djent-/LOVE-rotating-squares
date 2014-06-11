square = {}
squares = {}

function love.load()
	love.graphics.setBackgroundColor(255,255,255)
	love.graphics.setColor(0,0,0)
end

function love.update(dt)
	if #squares == 0 then return end
	for x = 1, #squares do
		squares[x].angle = squares[x].angle + math.pi/60
	end
end

function love.draw()
	if #squares == 0 then return end
	for x = 1, #squares do
		love.graphics.rectangle(squares[x].x,squares[x].y, squares[x].w,
			squares[x].h)
	end
end

function love.mousereleased(x,y)
	table.insert(squares, square:new(x,y))
end

function square:new(x,y)
	local self = {}
	self.x = x
	self.y = y
	self.w = 20
	self.h = 20
	self.angle = 0
	return self
end
