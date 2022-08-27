local mt = getrawmetatable(game)
local old = mt.__namecall

mt.__namecall = function(self, ...)
    if getnamecallmethod() == "FindFirstChildOfClass" then
        return nil -- 9 to the power of 9
    end    
    return old(self, ...)
end

local old2 = mt.__namecall

mt.__namecall = function(self, ...)
    if getnamecallmethod() == "Kick" then
        return wait(9e9)
    end
    return old2(self, ...)
end        
