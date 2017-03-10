local Game = play.Class:new({
    isRunning = false;
    shouldStop = false;
    name = nil;
    targetFrameTime = 1;
})


function Game:getName()
    if self.name then
        return self.name;
    end
    return "Unknown game";
end

function Game:doRun()
    print('Started ' .. self:getName());
    if (self.init) then
        self:init();
    end
    
    while not self.shouldStop do
        local now = os.clock();
        
        // TODO Get input, respond to input, render frame
        
        local elapsed = os.clock() - now;
        if (elapsed < self.targetFrameTime) then
            thread.sleepms((self.targetFrameTime - elapsed) * 1000);
        end
    end
end

function Game:start()
    if (self.isRunning) then
        print(self:getName() .. ' is already running');
        return;
    end
    self.shouldStop = false;
    self.isRunning = true;
    self.game_thread = thread.start(function()
        self:doRun()
    end);
end

function Game:stop()
    self.shouldStop = true;
end

return Game;
