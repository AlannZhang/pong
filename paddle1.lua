Paddle1 = Object:extend()

function Paddle1:new(x, y, width, height)
    self.speed = 250
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end

function Paddle1:update(dt)
    if love.keyboard.isDown("w") then -- player 1 controls
        if self.y > 10 then
            self.y = self.y - self.speed * dt
        end
    elseif love.keyboard.isDown('s') then 
        if self.y < 520 then
            self.y = self.y + self.speed * dt  
        end 
    end
end

function Paddle1:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end