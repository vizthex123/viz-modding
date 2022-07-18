# Adds the rail recycling recipes since thermal.zs is pretty spammed

print("rail_recycling.zs loading...");

### Recycle Rails (all kinds)
// Slag versions give slightly more resources, and/or use less items. Always give 5 XP.

# Regular
<recipetype:thermal:smelter>.addRecipe("recycle_rails", [<item:minecraft:iron_nugget>*3], [<item:minecraft:rail>], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_rails_slag", [<item:minecraft:iron_ingot>*2 % 75], [<item:thermal:slag>, <item:minecraft:rail>*4], 5, 4000);

<recipetype:thermal:smelter>.addRecipe("recycle_powered_rails", [<item:minecraft:gold_ingot>, <item:minecraft:redstone> % 50], [<item:minecraft:powered_rail>], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_powered_rails_slag", [<item:minecraft:gold_ingot>, <item:minecraft:redstone> % 100], [<item:thermal:slag>, <item:minecraft:powered_rail>], 5, 4000);

<recipetype:thermal:smelter>.addRecipe("recycle_activator_rails", [<item:minecraft:iron_ingot>, <item:minecraft:redstone> % 50], [<item:minecraft:activator_rail>], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_activator_rails_slag", [<item:minecraft:iron_ingot>, <item:minecraft:redstone> % 100], [<item:thermal:slag>, <item:minecraft:activator_rail>], 5, 4000);

<recipetype:thermal:smelter>.addRecipe("recycle_detector_rails", [<item:minecraft:iron_ingot>, <item:minecraft:redstone> % 50], [<item:minecraft:detector_rail>], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_detector_rails_slag", [<item:minecraft:iron_ingot>, <item:minecraft:redstone> % 100], [<item:thermal:slag>, <item:minecraft:detector_rail>], 5, 4000);

# Prismarine (uses 6k RF since it's more complicated)
// 1 rail = 3 nuggets
<recipetype:thermal:smelter>.addRecipe("recycle_crossover_rails", [<item:minecraft:iron_nugget>*6 % 100], [<item:thermal:crossover_rail>], 0, 6000);
<recipetype:thermal:smelter>.addRecipe("recycle_crossover_rails_slag", [<item:minecraft:iron_nugget>*6, <item:minecraft:iron_nugget>*3 % 50], [<item:thermal:slag>, <item:thermal:crossover_rail>], 5, 6000);

<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_rails", [<item:minecraft:iron_nugget>*3, <item:minecraft:prismarine_shard> % 50], [<item:thermal:prismarine_rail>], 0, 6000);
<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_rails_slag", [<item:minecraft:iron_nugget>*3, <item:minecraft:prismarine_shard> % 75, <item:minecraft:prismarine_crystals> % 50], [<item:thermal:slag>, <item:thermal:prismarine_rail>], 5, 6000);

<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_crossover_rails", [<item:minecraft:iron_nugget>*6, <item:minecraft:prismarine_shard> % 50], [<item:thermal:prismarine_crossover_rail>], 0, 6000);
<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_crossover_rails_slag", [<item:minecraft:iron_nugget>*6, <item:minecraft:prismarine_shard> % 50, <item:minecraft:prismarine_crystals> % 25], [<item:thermal:slag>, <item:thermal:prismarine_crossover_rail>], 5, 6000);

<recipetype:thermal:smelter>.addRecipe("recycle_powered_prismarine_rails", [<item:minecraft:gold_ingot>, <item:minecraft:prismarine_shard> % 50], [<item:thermal:prismarine_powered_rail>], 0, 6000);
<recipetype:thermal:smelter>.addRecipe("recycle_powered_prismarine_rails_slag", [<item:minecraft:gold_ingot>, <item:minecraft:prismarine_shard> % 75, <item:minecraft:prismarine_crystals> % 50], [<item:thermal:slag>, <item:thermal:prismarine_powered_rail>], 5, 6000);

<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_activator_rails", [<item:minecraft:iron_ingot>, <item:minecraft:prismarine_shard> % 50], [<item:thermal:prismarine_activator_rail>], 0, 6000);
<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_activator_rails_slag", [<item:minecraft:iron_ingot>, <item:minecraft:prismarine_shard> % 75, <item:minecraft:prismarine_crystals> % 50], [<item:thermal:slag>, <item:thermal:prismarine_activator_rail>], 5, 6000);

<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_detector_rails", [<item:minecraft:iron_ingot>, <item:minecraft:prismarine_shard> % 50, <item:minecraft:redstone> % 50], [<item:thermal:prismarine_detector_rail>], 0, 6000);
<recipetype:thermal:smelter>.addRecipe("recycle_prismarine_detector_rails_slag", [<item:minecraft:iron_ingot>, <item:minecraft:prismarine_shard> % 75, <item:minecraft:prismarine_crystals> % 50, <item:minecraft:redstone> % 75], [<item:thermal:slag>, <item:thermal:prismarine_detector_rail>], 5, 6000);

# Lumium (uses 8k RF since it's more complicated)
// 1 rail = 3 nuggets
<recipetype:thermal:smelter>.addRecipe("recycle_lumium_rails", [<item:minecraft:iron_nugget>*3, <item:thermal:lumium_ingot> % 50], [<item:thermal:lumium_rail>], 0, 8000);
<recipetype:thermal:smelter>.addRecipe("recycle_lumium_rails_slag", [<item:minecraft:iron_nugget>*3, <item:thermal:lumium_ingot> % 75], [<item:thermal:slag>, <item:thermal:lumium_rail>], 5, 8000);

<recipetype:thermal:smelter>.addRecipe("recycle_lumium_crossover_rails", [<item:minecraft:iron_nugget>*3, <item:thermal:lumium_ingot> % 50], [<item:thermal:lumium_crossover_rail>], 0, 8000);
<recipetype:thermal:smelter>.addRecipe("recycle_lumium_crossover_rails_slag", [<item:minecraft:iron_nugget>*3, <item:thermal:lumium_ingot> % 75], [<item:thermal:slag>, <item:thermal:lumium_crossover_rail>], 5, 8000);

<recipetype:thermal:smelter>.addRecipe("recycle_powered_lumium_rails", [<item:minecraft:gold_ingot>, <item:thermal:lumium_ingot> % 50], [<item:thermal:lumium_powered_rail>], 0, 8000);
<recipetype:thermal:smelter>.addRecipe("recycle_powered_lumium_rails_slag", [<item:minecraft:gold_ingot>, <item:thermal:lumium_ingot> % 75], [<item:thermal:slag>, <item:thermal:lumium_powered_rail>], 5, 8000);

<recipetype:thermal:smelter>.addRecipe("recycle_lumium_activator_rails", [<item:minecraft:iron_ingot>, <item:thermal:lumium_ingot> % 50], [<item:thermal:lumium_activator_rail>], 0, 8000);
<recipetype:thermal:smelter>.addRecipe("recycle_lumium_activator_rails_slag", [<item:minecraft:iron_ingot>, <item:thermal:lumium_ingot> % 75], [<item:thermal:slag>, <item:thermal:lumium_activator_rail>], 5, 8000);

<recipetype:thermal:smelter>.addRecipe("recycle_lumium_detector_rails", [<item:minecraft:iron_ingot>, <item:thermal:lumium_ingot> % 50, <item:minecraft:redstone> % 50], [<item:thermal:lumium_detector_rail>], 0, 8000);
<recipetype:thermal:smelter>.addRecipe("recycle_lumium_detector_rails_slag", [<item:minecraft:iron_ingot>, <item:thermal:lumium_ingot> % 75, <item:minecraft:redstone> % 75], [<item:thermal:slag>, <item:thermal:lumium_detector_rail>], 5, 8000);

print("rail_recycling.zs loaded");