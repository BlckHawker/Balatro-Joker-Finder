local util = require("util")
local Instance = {}

-- Constructor function
function Instance:new(s)
    local instance = {
        seed = s;
        locked = {};
        hashedSeed = pseudohash(self.seed); -- todo debug this
        print(self.hashedSeed)
        -- params = InstParams(); -- todo implement this
        -- rng = LuaRandom(0); -- todo implement this
        -- cache.generatedFirstPack = false; -- todo implement this

        
    }
    setmetatable(instance, Instance) -- Link instance to the class's metatable
    self.__index = self -- Ensure methods are looked up in the class table
    return instance
end

-- Methods

function Instance:test()
    return "instance: " + self.seed
end

function Instance:pseudohash(seed)
    local num = 1;

    for i = string.len(seed), 1, -1 do
        local x = 1.1239285023
        local y = 3.141592653589793116
        local z = 3.141592653589793116
        num = util.fract(x/num*util.indexOf(seed,i)*y+z*i);
    end

    if util.isNan(num) then
        return 0/0
    else 
        return num
    end
end

return Instance