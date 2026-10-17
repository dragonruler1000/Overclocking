data:extend({
    {
        type = "technology",
        name = "overclocking",
        icon = "__base__/graphics/technology/effect-transmission.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "overclocking-module"
            },
            {
                type = "unlock-recipe",
                recipe = "oc_tower"
            },
            {
                type = "unlock-recipe",
                recipe = "coolent"
            }
        },
        prerequisites = { "effect-transmission" },
        unit = {
            count = 75,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 }
            },
            time = 30
        }
    }
})
