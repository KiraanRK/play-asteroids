local Asteroids = play.Game:new({
    name = "Asteroids";
});

local Ship = play.Components:new({
    
});

function Asteroids:init()
    self.ship = Ship:new();
    self:addObject(self.ship);
end


return Asteroids;