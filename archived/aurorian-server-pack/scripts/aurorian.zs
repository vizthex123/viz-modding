# Adds recipes to the Aurorian Mod's crafting stations (Moonlight Forge and Scrapper)
/*
mods.theaurorian.MoonlightForge.addRecipe(<input>, <catalyst>, <output>);
mods.theaurorian.Scrapper.addRecipe(<input>, <output>);

mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
*/

# Scrapper
# Gives 75% of the resources
val cerulean_nugget = <theaurorian:ceruleannugget>;

// Scrap Saddles
mods.theaurorian.Scrapper.addRecipe(<minecraft:saddle>, <minecraft:leather>*2);

// Scrap Name Tags
mods.theaurorian.Scrapper.addRecipe(<minecraft:name_tag>, <theaurorian:plantfiber>*4);

// Scrap Diamond Horse Armour
mods.theaurorian.Scrapper.addRecipe(<minecraft:diamond_horse_armor>, <translocators:diamond_nugget>*36);

// Scrap Cerulean Cups
mods.theaurorian.Scrapper.addRecipe(<theaurorian:cup>, cerulean_nugget*8);

// Scrap Cerulean Buckets
mods.theaurorian.Scrapper.addRecipe(<theaurorian:ceruleanbucket>, cerulean_nugget*20);

// Scrap Lockpicks
mods.theaurorian.Scrapper.addRecipe(<theaurorian:lockpicks:*>, cerulean_nugget*20);