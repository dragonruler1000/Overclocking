data:extend(
    {
        -- Adding a invintory tab for my mod for debugging purposes
    {
        type = "item-group",
        name = "oc-items",
        order = "l",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64
    },
    {
        type = "item-subgroup",
        name = "oc-module",
        group = "oc-items",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "oc-resource",
        group = "oc-items",
        order = "a"
    }
    }
)