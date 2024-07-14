# Adds recipes to the Aurorian Mod's crafting stations (Moonlight Forge and Scrapper)
/*
mods.theaurorian.MoonlightForge.addRecipe(<input>, <catalyst>, <output>);
mods.theaurorian.Scrapper.addRecipe(<input>, <output>);
*/

# Scrapper
# Gives 75% of the resources
val cerulean_nugget = <theaurorian:ceruleannugget>;

// Scrap Cerulean Buckets
mods.theaurorian.Scrapper.addRecipe(<theaurorian:cup>, cerulean_nugget*20);

// Scrap Cerulean Cups
mods.theaurorian.Scrapper.addRecipe(<theaurorian:ceruleanbucket>, cerulean_nugget*8);

// Scrap Lockpicks
mods.theaurorian.Scrapper.addRecipe(<theaurorian:lockpicks:*>, cerulean_nugget*20);