local item_tints = require("__Overclocking__.prototypes.item-tints")

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
        stack_size = 50
    },
    {
        type = "item",
        name = "cryolite-plate",
        icon = "__Overclocking__/graphics/icons/iron-plate.png",
        subgroup = "intermediate-product",
        order = "a[cryolite-plate]",
        stack_size = 100
    }
})
