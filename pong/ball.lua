Ball = Object:extend()

function Ball:new(x, y, width, height) -- Ball parameters
    self.speedX = math.random(2) == 1 and -100 or 100
    self.speedY = math.random(2) == 1 and -300 or 300
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end

function Ball:update(dt)
    self.y = self.y + self.speedY * dt
    self.x = self.x + self.speedX * dt

    if self.y <= 0 then
        self.y = 0
        self.speedY = -self.speedY
    elseif self.y + self.height >= 600 then
        self.y = 600 - self.height
        self.speedY = -self.speedY
    end

end

function Ball:draw() -- Ball shape
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height) 
end
