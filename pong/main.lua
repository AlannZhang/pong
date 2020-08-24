--[[ 
    Pong created in Lua using the love2D engine.
    Can be played with 2 players, using w and s for player 1
    and the up and down arrow keys for arrow 2. You can also play
    by yourself with the computer. The library used is called classic,
    allowing for classes in Lua. 
]]

function love.load() 
    Object = require "classic"
    require "ball"
    require "paddle1"
    require "paddle2"

    b = Ball(400, 300, 7,7)
    p1 = Paddle1(35, 30, 10, 70)
    p2 = Paddle2(755, 500, 10, 70)

    player1score = 0
    playerscore = 0
end

function love.keypressed(key) -- press escape to quit pong
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update(dt)
    p1:update(dt) -- Paddle 1 movement
    p2:update(dt) -- Paddle 2 movement
end

function love.draw()
    b:draw()
    p1:draw()
    p2:draw()
end 
