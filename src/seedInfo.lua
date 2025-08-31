-- Keeps track of the random generation for a specific seed
local SeedInfo = {}
SeedInfo.__index = SeedInfo
function SeedInfo:new(seed)
        local instance = setmetatable({}, SeedInfo) -- Create a new table and set its metatable
        SeedInfo.seed = seed
        return instance
    end


    
return SeedInfo;
