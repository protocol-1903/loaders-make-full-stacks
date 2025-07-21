data.raw["utility-constants"]["default"].max_belt_stack_size = data.raw["utility-constants"]["default"].max_belt_stack_size or 4

-- required to load SA for whatever reason
if not data.raw.tile["empty-space"] then
  local empty_space = table.deepcopy(data.raw.tile["out-of-map"])
  empty_space.name = "empty-space"
  data:extend{empty_space}
end

for _, loader in pairs(data.raw.loader) do
  loader.wait_for_full_stack = true
end

for _, loader in pairs(data.raw["loader-1x1"]) do
  loader.wait_for_full_stack = true
end