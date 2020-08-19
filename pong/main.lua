-- Pong created in Lua using the love2D engine

window_width = 1920 -- window width and height at 16:9
window_height = 1080        

function love.load() -- runs at start of the game
    love.graphics.setDefaultFilter("nearest", "nearest")
    setupScreen(window_width, window_height,{
        fullscreen = false
        vsync = true
        resizable = false
    }
end

function love.keypressed(key) -- press q to quit pong
    if key == 'q' then
        love.event.quit()
    end
end

function love.draw()
    
end 