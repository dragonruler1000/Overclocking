local item_tints = require("__Overclocking__.prototypes.item-tints")
local item_sounds = require("__base__.prototypes.item_sounds")
local sounds = require("__base__.prototypes.entity.sounds")

function create_item_parameter(number)
    data:extend({
        {
            type = "item",
            name = "parameter-" .. number,
            icon = "__Overclocking__/graphics/icons/parameter/parameter-" .. number .. ".png",
            localised_name = { "parameter-x", tostring(number) },
            flags = { "always-show" },
            subgroup = "parameters",
            order = "a",
            parameter = true,
            stack_size = 1
        }
    })
end

for n = 0, 9 do
    create_item_parameter(n)
end

data:extend
({
    {
        type = "item",
        name = "cryolite-ore",
        icon = "__Overclocking__/graphics/icons/cryolite-ore.png",
        subgroup = "raw-resource",
        order = "a[cryolite-ore]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 1 * kg
    },
    {
        type = "item",
        name = "cryolite-plate",
        icon = "__Overclocking__/graphics/icons/iron-plate.png",
        subgroup = "intermediate-product",
        order = "a[cryolite-plate]",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        stack_size = 100,
        weight = 1 * kg
    },
    {
        type = "module",
        name = "overclock-module",
        icon = "__base__/graphics/icons/speed-module.png",
        subgroup = "module",
        color_hint = {text = "O"},
        category = "speed",
        tier = 1,
        order = "a[overclock]-a[overclock-module-1]",
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        stack_size = 50,
        weight = 20 * kg,
        effect = 
        {
            productivity = 0.04,
            consumption = 0.4,
            pollution = 0.05,
            speed = 0.2
        },
        beacon_tint = 
        {
                  primary = {0.441, 0.714, 1.000, 1.000}, -- #70b6ffff
                  secondary = {0.388, 0.976, 1.000, 1.000}, -- #63f8ffff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false
    }
})
