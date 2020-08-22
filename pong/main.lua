-- Pong created in Lua using the love2D engine

-- window_width = 1920 -- window width and height at 16:9
-- window_height = 1080        

function love.load() -- runs at start of the game
    paddlespeed1 = 200
    paddlespeed2 = 200   

    paddle1y = 30
    paddle2y = 500
end

function love.keypressed(key) -- press escape to quit pong
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update(dt)
        if love.keyboard.isDown("w") then
        if paddle1y > 10 then
            paddle1y = paddle1y - paddlespeed1 * dt
        end
    elseif love.keyboard.isDown('s') then 
        if paddle1y < 520 then
            paddle1y = paddle1y + paddlespeed1 * dt  
        end 
    end

    if love.keyboard.isDown("up") then 
end

function love.draw()
    love.graphics.circle('fill', 800/2, 600/2, 7, 7) --Ball
    love.graphics.rectangle('fill', 35, paddle1y, 10, 70) --Paddle
    love.graphics.rectangle('fill', 755, paddle2y, 10, 70) --Paddle
end 
