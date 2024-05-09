# Adds recipes to make and use Scrap
print("2-scrap.zs loading...");

# Remove default recipes
furnace.remove(<item:minecraft:iron_nugget>);
furnace.remove(<item:minecraft:gold_nugget>);
blastFurnace.remove(<item:minecraft:iron_nugget>);
blastFurnace.remove(<item:minecraft:gold_nugget>);


# Craft Small Scrap into Scrap
val copper = <item:kubejs:copper_scrap>;
val iron = <item:kubejs:iron_scrap>;
val gold = <item:kubejs:gold_scrap>;
val diamond = <item:kubejs:diamond_scrap>;
val netherite = <item:minecraft:netherite_scrap>;


val small_copper = <item:kubejs:small_copper_scrap>;
val small_iron = <item:kubejs:small_iron_scrap>;
val small_gold = <item:kubejs:small_gold_scrap>;
val small_diamond = <item:kubejs:small_diamond_scrap>;

val fiery = <item:kubejs:fiery_scrap>;
val ironwood = <item:kubejs:ironwood_scrap>;
val knightmetal = <item:kubejs:knightmetal_scrap>;

val small_fiery = <item:kubejs:small_fiery_scrap>;
val small_ironwood = <item:kubejs:small_ironwood_scrap>;
val small_knightmetal = <item:kubejs:small_knightmetal_scrap>;

val iron_nugget = <item:minecraft:iron_nugget>;
val gold_nugget = <item:minecraft:gold_nugget>;


val silver = <item:kubejs:silver_scrap>;
val small_silver = <item:kubejs:small_silver_scrap>;
val silver_nugget = <item:galosphere:silver_nugget>;


craftingTable.addShapeless("copper_scrap", copper, [small_copper, small_copper, small_copper]);

craftingTable.addShapeless("iron_scrap", iron, [small_iron, small_iron, small_iron]);

craftingTable.addShapeless("gold_scrap", gold, [small_gold, small_gold, small_gold]);

craftingTable.addShapeless("diamond_scrap", diamond, [small_diamond, small_diamond, small_diamond]);

craftingTable.addShapeless("silver_scrap", silver, [small_silver, small_silver, small_silver]);


craftingTable.addShapeless("fiery_scrap", fiery, [small_fiery, small_fiery, small_fiery]);

craftingTable.addShapeless("ironwood_scrap", ironwood, [small_ironwood, small_ironwood, small_ironwood]);

craftingTable.addShapeless("knightmetal_scrap", knightmetal, [small_knightmetal, small_knightmetal, small_knightmetal]);



# Smelt items into Scrap
furnace.addRecipe("copper_recycling", small_copper, <tag:items:modpack:meltable_copper>, 0.1, 200);
furnace.addRecipe("iron_recycling", small_iron, <tag:items:modpack:meltable_iron>, 0.2, 200);
furnace.addRecipe("gold_recycling", small_gold, <tag:items:modpack:meltable_gold>, 0.3, 200);
furnace.addRecipe("diamond_recycling", small_diamond, <tag:items:modpack:meltable_diamond>, 0.5, 200);
furnace.addRecipe("netherite_recycling", netherite, <tag:items:modpack:meltable_netherite>, 1.0, 200);

furnace.addRecipe("fiery_recycling", small_fiery, <tag:items:modpack:meltable_fiery>, 1.0, 200);
furnace.addRecipe("ironwood_recycling", small_ironwood, <tag:items:modpack:meltable_ironwood>, 1.0, 200);
furnace.addRecipe("knightmetal_recycling", small_knightmetal, <tag:items:modpack:meltable_knightmetal>, 1.0, 200);
furnace.addRecipe("knightmetal_recycling_chain", knightmetal, <item:twilightforest:block_and_chain>, 0.7, 200);


blastFurnace.addRecipe("blast_copper_recycling", small_copper, <tag:items:modpack:meltable_copper>, 0.1, 100);
blastFurnace.addRecipe("blast_iron_recycling", small_iron, <tag:items:modpack:meltable_iron>, 0.2, 100);
blastFurnace.addRecipe("blast_gold_recycling", small_gold, <tag:items:modpack:meltable_gold>, 0.3, 100);
blastFurnace.addRecipe("blast_diamond_recycling", small_diamond, <tag:items:modpack:meltable_diamond>, 0.5, 100);
blastFurnace.addRecipe("blast_netherite_recycling", netherite, <tag:items:modpack:meltable_netherite>, 1.0, 100);

blastFurnace.addRecipe("blast_fiery_recycling", small_fiery, <tag:items:modpack:meltable_fiery>, 1.0, 100);
blastFurnace.addRecipe("blast_ironwood_recycling", small_ironwood, <tag:items:modpack:meltable_ironwood>, 1.0, 100);
blastFurnace.addRecipe("blast_knightmetal_recycling", small_knightmetal, <tag:items:modpack:meltable_knightmetal>, 1.0, 100);
blastFurnace.addRecipe("blast_knightmetal_recycling_chain", knightmetal, <item:twilightforest:block_and_chain>, 0.7, 100);


	// Small items
furnace.addRecipe("small_iron_recycling", iron_nugget, <tag:items:modpack:meltable_iron_small>, 0.1, 200);
furnace.addRecipe("small_gold_recycling", gold_nugget, <tag:items:modpack:meltable_gold_small>, 0.2, 200);

blastFurnace.addRecipe("blast_small_iron_recycling", iron_nugget, <tag:items:modpack:meltable_iron_small>, 0.1, 100);
blastFurnace.addRecipe("blast_small_gold_recycling", gold_nugget, <tag:items:modpack:meltable_gold_small>, 0.2, 100);


	// Big items
furnace.addRecipe("big_iron_recycling", iron, <tag:items:modpack:meltable_iron_big>, 0.3, 200);
furnace.addRecipe("big_gold_recycling", gold, <tag:items:modpack:meltable_gold_big>, 0.5, 200);
furnace.addRecipe("big_diamond_recycling", diamond, <tag:items:modpack:meltable_diamond_big>, 0.7, 200);

blastFurnace.addRecipe("blast_big_iron_recycling", iron, <tag:items:modpack:meltable_iron_big>, 0.3, 100);
blastFurnace.addRecipe("blast_big_gold_recycling", gold, <tag:items:modpack:meltable_gold_big>, 0.5, 100);
blastFurnace.addRecipe("blast_big_diamond_recycling", diamond, <tag:items:modpack:meltable_diamond_big>, 0.7, 100);



	// Silver
furnace.addRecipe("silver_recycling", small_silver, <tag:items:modpack:meltable_silver>, 0.35, 200);
blastFurnace.addRecipe("blast_silver_recycling", small_silver, <tag:items:modpack:meltable_silver>, 0.35, 100);

furnace.addRecipe("silver_lattice_recycling", silver_nugget, <item:galosphere:silver_lattice>, 0.35, 200);
blastFurnace.addRecipe("blast_silver_lattice_recycling", silver_nugget, <item:galosphere:silver_lattice>, 0.35, 100);



	// Rose Gold
	// Smelts into Copper, blasts into Gold
val rose_gold = <tag:items:modpack:meltable_rose_gold>;

furnace.addRecipe("rose_gold_recycling", small_copper, rose_gold, 0.5, 200);
blastFurnace.addRecipe("blast_rose_gold_recycling", small_gold, rose_gold, 0.5, 100);

print("2-scrap.zs loading...");