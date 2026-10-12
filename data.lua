data:extend {
    {
        type = "resource",
        name = "cryolite-ore",
        icon = "src/graphics/icons/iron-ore.png",
        icon_size = 32,
        flags = { "placeable-neutral" },
        category = "basic-solid",
        order = "az",
        infinite = false,
        highlight = false,
        resource_patch_search_radius = 6,
        map_color = { r = 176, g = 222, b = 236, a = 0.63 },
        mineable = {
            mining_time = 1,
            result = "iron-ore",
            mining_particle = "stone-particle"
        },
        -- autoplace = resource_autoplace.resource_autoplace_settings {
        --     name = "cryolite-ore",
        --     order = "b",
        --     base_density = 20,
        --     base_spots_per_km2 = 1,
        --     random_probability = 1 / 48,
        --     random_spot_size_minimum = 1,
        --     random_spot_size_maximum = 1, -- don't randomize spot size
        --     additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
        --     has_starting_area_placement = false,
        --     resource_index = resource_autoplace.resource_indexes["cryolite-ore"],
        --     regular_rq_factor_multiplier = 1
        -- },
        stage_counts = { 0 },
        stages = {
            sheet = {
                filename = "src/graphics/entity/cryolite-ore/iron-ore.png",
                priority = "extra-high",
                width = 75,
                height = 61,
                frame_count = 64,
                variation_count = 1
            }
        }
    }
}
