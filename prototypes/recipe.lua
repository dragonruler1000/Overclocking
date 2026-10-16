function create_recipe_parameter(number)
    data:extend({
        {
            type = "recipe",
            name = "parameter-" .. number,
            icon = "__Overclocking__/graphics/icons/parameter/parameter-" .. number .. ".png",
            localised_name = { "parameter-x", tostring(number) },
            subgroup = "parameters",
            categories = { "parameters" },
            order = "a",
            parameter = true,
            allow_productivity = true
        }
    })
end

for n = 0, 9 do
    create_recipe_parameter(n)
end

data:extend
({
    {
        type = "recipe",
        name = "cryolite-plate",
        categories = { "smelting" },
        auto_recycle = false,
        energy_required = 3.2,
        ingredients = { { type = "item", name = "cryolite-ore", amount = 1 } },
        results = { { type = "item", name = "cryolite-plate", amount = 1 } },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "overclocking-module",
        enabled = true,
        ingredients = {
            { type = "item", name = "advanced-circuit", amount = 5 },
            { type = "item", name = "electronic-circuit", amount = 5 },
            { type = "item", name = "cryolite-plate", amount = 5 }
        },
        energy_required = 15,
        results = {{type = "item", name = "overclock-module", amount = 1}}
    }
})
