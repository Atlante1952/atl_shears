local S = minetest.get_translator("atl_shears")

minetest.register_tool("atl_shears:shears", {
    description = S("Shears"),
    inventory_image = "shears.png",
    tool_capabilities = {
        full_punch_interval = 0.2,
        max_drop_level = 1,
        groupcaps = {
            leaves = {
                times = {[1] = 0.15, [2] = 0.25, [3] = 0.35},
                uses = 50,
                maxlevel = 3
            },
            flora = {
                times = {[1] = 0.15, [2] = 0.25, [3] = 0.35},
                uses = 50,
                maxlevel = 3
            },
            mushroom = {
                times = {[1] = 0.15, [2] = 0.25, [3] = 0.35},
                uses = 50,
                maxlevel = 3
            },
            wool = {
                times = {[1] = 0.15, [2] = 0.25, [3] = 0.35},
                uses = 50,
                maxlevel = 3
            },
        },
        damage_groups = {fleshy = 2},
    },
    sound = {breaks = "default_tool_breaks"},
    groups = {shears = 1},
})

minetest.register_craft({
    output = "atl_shears:shears",
    recipe = {
        {"", "default:steel_ingot", "default:steel_ingot"},
        {"", "default:steel_ingot", ""},
        {"default:stick", "", ""},
    }
})

if minetest.get_modpath("toolranks") then
    minetest.override_item("atl_shears:shears", {
        description = toolranks.create_description("Shears", 0, 1),
        original_description = S("Shears"),
        after_use = toolranks.new_afteruse
    })
end
