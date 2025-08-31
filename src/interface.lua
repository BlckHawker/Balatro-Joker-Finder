--- The Joker Finder - interface.lua

-- The user interface components that display if the joker can be found with the parameters

-- Append node for preview text to the HUD:
local orig_hud = create_UIBox_HUD
function create_UIBox_HUD()
   local contents = orig_hud()

   local jokerFoundInfo = {n=G.UIT.R, config={id = "dv_joker_found_info", align = "cm", padding = 0.1}, nodes={}}
   table.insert(jokerFoundInfo.nodes, get_item_availability())
   table.insert(contents.nodes[1].nodes[1].nodes[4].nodes[1].nodes, jokerFoundInfo)


   return contents
end

-- Checks to see if the parametrized item is found within the filters
function get_item_availability()
    return {n=G.UIT.C, config={align = "cm"}, nodes={
               {n=G.UIT.R, config={align = "cm"}, nodes={
                  {n=G.UIT.T, config={text = tostring(G.GAME.pseudorandom.seed), colour = G.C.UI.TEXT_LIGHT, scale = 0.5}},
               }},
               {n=G.UIT.R, config={align = "cm"}, nodes={
                  {n=G.UIT.T, config={text = tostring("Hello world"), colour = G.C.UI.TEXT_LIGHT, scale = 0.5}},
               }}
            }}
end