--- STEAMODDED HEADER
--- MOD_NAME: The Joker Finder (WIP)
--- MOD_ID: JokerFinder
--- MOD_AUTHOR: [Hawker]
--- MOD_DESCRIPTION: This mod tells the user if the Throwback joker is in small or big blind

----------------------------------------------
------------MOD CODE -------------------------

G.E_MANAGER:add_event(Event({
    func = function() 
        mod_id = "JokerFinder"
        sendDebugMessage("Joker mod is running", mod_id)
        return true 
    end
}))

----------------------------------------------
------------MOD CODE END----------------------