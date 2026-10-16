data:extend(
    {
        -- Adding a invintory tab for my mod for debugging purposes
    {
        type = "item-group",
        name = "Oc-debug",
        order = "l",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64
    },
    {
        type = "item-subgroup",
        name = "oc-module",
        group = "Oc-debug",
        order = "a"
    }
    }
)