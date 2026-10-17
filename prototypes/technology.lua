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
    },
    {
        type = "technology",
        name = "oc-module-2",
        icon = "__base__/graphics/technology/speed-module-2.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "oc-module-2"
            }
        },
        prerequisites = { "overclocking", "processing-unit" },
        unit = {
            count = 75,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 }
            }
        }
    },
    {
        type = "technology",
        name = "oc-module-3",
        icon = "__base__/graphics/technology/speed-module-3.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "oc-module-3"
            }
        },
        prerequisites = { "oc-module-2" },
        unit = {
            count = 75,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 }
            }
        }
    }
})
