Ball = Object:extend()

function Ball:new(x, y, width, height) -- Ball parameters
    self.speedX = math.random(2) == 1 and -200 or 200
    self.speedY = math.random(2) == 1 and -300 or 300
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end

function Ball:update(dt)
    self.y = self.y + self.speedY * dt
    self.x = self.x + self.speedX * dt

    if self.y <= 0 then -- bounces down when ball touches upper screen
        self.y = 0
        self.speedY = -self.speedY
    elseif self.y + self.height >= 600 then -- bounces up when ball touches bottom screen
        self.y = 600 - self.height
        self.speedY = -self.speedY
    end

end

function Ball:collision(pad) -- bounces back when hits paddle
    if self.x < pad.x + pad.width 
        and self.x + self.width > pad.x 
        and self.y < pad.y + pad.height 
        and self.y + self.height > pad.y then
        self.speedX = -self.speedX
    end
end

function Ball:draw() -- Ball shape
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height) 
end
