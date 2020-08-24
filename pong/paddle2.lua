Paddle2 = Object:extend()

function Paddle2:new(x, y, width, height) -- paddle parameters
    self.speed = 250
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end

function Paddle2:update(dt)
    if love.keyboard.isDown("up") then -- player 2 controls
        if self.y > 10 then
            self.y = self.y - self.speed * dt
        end
    elseif love.keyboard.isDown("down") then
        if self.y < 520 then
            self.y = self.y + self.speed * dt
        end
    end
end

function Paddle2:draw() -- paddle shape
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end