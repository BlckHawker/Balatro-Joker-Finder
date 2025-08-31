G.E_MANAGER:add_event(Event({
    func = function()
        local mod_id = "JokerFinder"
        sendDebugMessage("Joker mod is running", mod_id)
        return true
    end
}))