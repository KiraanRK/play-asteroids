local asteroids = {
    running = false;
    shouldStop = false;
}

function asteroids.run()
    print('Started asteroids');
    
    while not asteroids.shouldStop do
    end
    
    asteroids.running = false;
    print('Exited asteroids game');
end

function asteroids.start()
    if (asteroids.running) then
        print('Asteroids is already running');
        return;
    end
    asteroids.shouldStop = false;
    asteroids.running = true;
    asteroids.game_thread = thread.start(asteroids.run);
end

function asteroids.stop()
    asteroids.shouldStop = true;
end

return asteroids;