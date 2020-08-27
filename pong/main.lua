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
    require "paddle3"
    require "score"

    b = Ball(400, 300, 8,8)
    p1 = Paddle1(35, 30, 10, 70)
    p2 = Paddle2(755, 500, 10, 70)
    p3 = Paddle3(755, 500, 10, 70)
    s = Score(280, 50, 5, 5)

    gameState = "start" -- Start screen game state
end

function love.keypressed(key) -- press escape to quit pong
    if key == 'escape' then
        love.event.quit()
    end

    if key == "enter" or key == "return" then -- switch to player vs player mode
        if gameState == "start" then
            gameState = "player"
        end
    end

    if key == "backspace" or key == "delete" then -- switch to play against the computer
        if gameState == "start" then
            gameState = "computer"
        end
    end
end

function love.update(dt) 
    if gameState == "player" or "computer" then
        p1:update(dt) -- Paddle 1 movement
        b:update(dt) -- ball movement
        b:collision(p1) -- ball deflection from paddle
        s:keep(b) -- keeps score
    end

    if b.x <= 0 or b.x >= 800 then
        b.x = 400
        b.y = 300
    end
    
    s:keep(b) -- keeps score
    if gameState == "player" then
        p2:update(dt) -- Paddle 2 movement
        b:collision(p2)
    end

    if gameState == "computer" then 
        p3:update(dt) -- Computer paddle movement
        b:collision(p3)
    end
    
end

function love.draw()
    if gameState == "start" then
        love.graphics.print("PONG", 250, 85, nil, 8, 8)
        love.graphics.print("Press enter or return for 2 Player Mode", 160, 250, nil, 2, 2)
        love.graphics.print("Press backspace or delete to play against the computer", 70, 300, nil, 2, 2)
    end

    if gameState == "player" then
        b:draw()
        p1:draw()
        p2:draw()
        s:draw()
    end

    if gameState == "computer" then
        b:draw()
        p1:draw()
        p3:draw()
        s:draw()
    end
end 
