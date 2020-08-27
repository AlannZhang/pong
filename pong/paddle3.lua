Paddle3 = Object:extend() 

function Paddle3:new(x, y, width, height) -- paddle parameters
    self.speed = 400
    self.x = x
    self.y = y
    self.speed = 400
    self.width = width
    self.height = height
end

function Paddle3:update(dt) 
    self.y = self.y + self.speed * dt
end

function Paddle3:follow(ball)
    if ball.y > 0 then
        self.y = ball.y - self.height
    end
end

function Paddle3:draw() -- paddle shape
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end