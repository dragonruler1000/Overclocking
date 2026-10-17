function create_fluid_parameter(number)
  data:extend(
  {
    {
      type = "fluid",
      name = "parameter-" .. number,
      subgroup = "parameters",
      localised_name = {"parameter-x", tostring(number)},
      parameter = true,
      auto_barrel = false,
      default_temperature = 25,
      base_color = {1, 1, 0},
      flow_color = {1, 1, 0},
      icon = "__base__/graphics/icons/parameter/parameter-" .. number .. ".png",
      order = "a"
    }
  })
end

for n = 0, 9 do
    create_fluid_parameter(n)
end

data:extend(
    {
        {
            type = "fluid",
            name = "coolent",
            subgroup = "oc-fluid",
            default_temperature = 10,
            max_temperature = 30,
            heat_capacity = "8kJ",
            base_color = {0.188, 0.188, 0.812, 0.68},
            flow_color = {0.188, 0.188, 0.812, 0.35},
            icon = "__base__/graphics/icons/fluid/water.png",
            order = "a[fluid]-a[coolent]-a[coolent]"
        }
    }
)