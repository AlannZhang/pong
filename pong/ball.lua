Ball = Object:extend()

function Ball:new(x, y, width, height) -- Ball parameters
    self.speed = 100
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end

function Ball:update(dt)

end

function Ball:draw() -- Ball shape
    love.graphics.circle('fill', self.x, self.y, self.width, self.height) 
end