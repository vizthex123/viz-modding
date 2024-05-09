# Fixes recipes by making them use tags
print("recipe_fixes.zs loading...");

val empty = <item:minecraft:air>;
val iron = <item:minecraft:iron_ingot>;

/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/
/*
// Make Soap with any Ash and Meat
val ash = <tag:items:forge:dusts/ash>;

craftingTable.remove(<item:supplementaries:soap>);
craftingTable.addShapeless("soap", <item:supplementaries:soap>*6, [<item:minecraft:water_bucket>, ash, ash, ash, ash, <tag:items:alexscaves:raw_meats>]);


// Make Sticky Pistons use tags
craftingTable.remove(<item:minecraft:sticky_piston>);
craftingTable.addShaped("sticky_piston", <item:minecraft:sticky_piston>, 
    [[<tag:items:forge:slimeballs>],
    [<item:minecraft:piston>]]);


// Remove duplicate Cake recipes
craftingTable.remove(<item:minecraft:cake>);
craftingTable.addShaped("cake", <item:minecraft:cake>, 
    [[<tag:items:deep_aether:milk_buckets>, <tag:items:deep_aether:milk_buckets>, <tag:items:deep_aether:milk_buckets>],
    [<item:minecraft:sugar>, <tag:items:forge:eggs>, <item:minecraft:sugar>],
    [<tag:items:forge:grain>, <tag:items:forge:grain>, <tag:items:forge:grain>]]);


// Make Pumpkin Pie use either type & the egg tag
// Carved needs 3 since most of the pumpking parts are missing
val carved = <item:minecraft:carved_pumpkin>;

craftingTable.remove(<item:minecraft:pumpkin_pie>);
craftingTable.addShapeless("pumpkin_pie", <item:minecraft:pumpkin_pie>, [<item:minecraft:pumpkin>|carved, <tag:items:forge:eggs>, <item:minecraft:sugar>]);

craftingTable.addShapeless("carved_pumpkin_pie", <item:minecraft:pumpkin_pie>, [carved, carved, carved, <tag:items:forge:eggs>, <item:minecraft:sugar>]);

// Let players use Carved Pumpkins to get Seeds
// Only gives 1 since most of its guts are missing
craftingTable.addShapeless("carved_pumpkin_seeds", <item:minecraft:pumpkin_seeds>, [carved]);

// Make the Redstone Geyser use a valid tag (and either Smooth Stone)
craftingTable.remove(<item:spelunkers_charm:encased_geyser>);
craftingTable.addShaped("encased_geyser", <item:spelunkers_charm:encased_geyser>, 
    [[iron, <item:minecraft:redstone>, iron],
    [iron, <tag:items:modpack:geyser>, iron],
    [smooth_stone, smooth_stone, smooth_stone]]);

# Make recipes use the Bowl tag
val bowl = <tag:items:modpack:bowls>;
val fungus = <tag:items:modpack:fungus>;
val mushroom = <tag:items:modpack:mushrooms>;

craftingTable.remove(<item:minecraft:beetroot_soup>);
craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.remove(<item:minecraft:rabbit_stew>);

craftingTable.addShapeless("beetroot_soup", <item:minecraft:beetroot_soup>, [bowl, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>]);

craftingTable.addShapeless("mushroom_stew", <item:minecraft:mushroom_stew>, [bowl, mushroom, mushroom]);

craftingTable.addShapeless("rabbit_stew", <item:minecraft:rabbit_stew>, [bowl, <item:minecraft:cooked_rabbit>, <item:minecraft:baked_potato>, <item:minecraft:carrot>, mushroom]);



craftingTable.remove(<item:alexscaves:primordial_soup>);
craftingTable.remove(<item:alexscaves:seething_stew>);
craftingTable.remove(<item:alexscaves:serene_salad>);
craftingTable.remove(<item:alexscaves:vesper_stew>);

craftingTable.addShapeless("primordial_soup", <item:alexscaves:primordial_soup>, [bowl, <item:alexscaves:cooked_trilocaris_tail>, <item:alexscaves:cooked_trilocaris_tail>, <item:alexscaves:tree_star>]);

craftingTable.addShapeless("seething_stew", <item:alexscaves:seething_stew>, [bowl, <item:alexscaves:cooked_dinosaur_chop>, <item:alexscaves:heavy_bone>, <item:alexscaves:flytrap>]);

craftingTable.addShapeless("serene_salad", <item:alexscaves:serene_salad>, [bowl, <item:alexscaves:fiddlehead>, <item:alexscaves:tree_star>, <item:alexscaves:pine_nuts>]);

craftingTable.addShapeless("vesper_stew", <item:alexscaves:vesper_stew>, [bowl, <item:alexscaves:vesper_wing>, <item:alexscaves:thornwood_branch>, mushroom]);



craftingTable.remove(<item:cavesanddepths:glow_berries_stew>);
craftingTable.addShapeless("glow_berry_stew", <item:cavesanddepths:glow_berries_stew>, [bowl, <item:minecraft:glow_berries>, <item:minecraft:glow_berries>]);


craftingTable.remove(<item:enlightened_end:chorus_soup>);
craftingTable.remove(<item:nourished_nether:nether_fungus_stew>);
craftingTable.addShapeless("chorus_soup", <item:enlightened_end:chorus_soup>, [bowl, <item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>]);

craftingTable.addShapeless("nether_fungus_stew", <item:nourished_nether:nether_fungus_stew>, [bowl, fungus, fungus]);


craftingTable.remove(<item:undergarden:bloody_stew>);
craftingTable.remove(<item:undergarden:indigo_stew>);
craftingTable.remove(<item:undergarden:inky_stew>);
craftingTable.remove(<item:undergarden:veiled_stew>);

craftingTable.addShapeless("bloody_stew", <item:undergarden:bloody_stew>, [bowl, <item:undergarden:blood_mushroom>, <item:undergarden:blood_mushroom>, <item:undergarden:blood_mushroom>]);

craftingTable.addShapeless("indigo_stew", <item:undergarden:indigo_stew>, [bowl, <item:undergarden:indigo_mushroom>, <item:undergarden:indigo_mushroom>, <item:undergarden:indigo_mushroom>]);

craftingTable.addShapeless("inky_stew", <item:undergarden:inky_stew>, [bowl, <item:undergarden:ink_mushroom>, <item:undergarden:ink_mushroom>, <item:undergarden:ink_mushroom>]);

craftingTable.addShapeless("veiled_stew", <item:undergarden:veiled_stew>, [bowl, <item:undergarden:veil_mushroom>, <item:undergarden:veil_mushroom>, <item:undergarden:veil_mushroom>]);



# Furnace upgrades with tags
val log = <tag:items:minecraft:logs>;
val furnace = <tag:items:modpack:furnace>;
val smooth_stone = <item:minecraft:smooth_stone>|<item:minecraft:smooth_basalt>;

// Blast Furnace
craftingTable.remove(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blast_furnace", <item:minecraft:blast_furnace>, 
    [[iron, iron, iron],
    [iron, furnace, iron],
    [smooth_stone, smooth_stone, smooth_stone]]);

// Smoker
craftingTable.remove(<item:minecraft:smoker>);
craftingTable.addShaped("smoker", <item:minecraft:smoker>, 
    [[empty, log, empty],
    [log, furnace, log],
    [empty, log, empty]]);

// Furnace with Tuff
val tuff = <item:minecraft:tuff>;
craftingTable.addShaped("furnace", <item:minecraft:furnace>, 
    [[tuff, tuff, tuff],
    [tuff, empty, tuff],
    [tuff, tuff, tuff]]);

// Minecart with Furnace (the most useless item lol)
val minecart = <item:minecraft:minecart>;
craftingTable.remove(<item:minecraft:furnace_minecart>);
craftingTable.addShaped("furnace_minecart", <item:minecraft:furnace_minecart>, 
    [[furnace],
    [minecart]]);

craftingTable.addShaped("furnace_minecart_craft", <item:minecraft:furnace_minecart>, 
    [[iron, furnace, iron],
    [iron, iron, iron]]);

// Oven
val black_glass = <item:minecraft:black_stained_glass>;
craftingTable.removeByName("cookingforblockheads:oven");
craftingTable.addShaped("oven", <item:cookingforblockheads:oven>, 
    [[black_glass, black_glass, black_glass],
	[iron, furnace, iron],
    [iron, iron, iron]]);

// Nuclear Furnace
val void_shale = <item:enlightened_end:void_shale>;
val irradium_bar = <item:enlightened_end:irradium_bar>;
craftingTable.remove(<item:enlightened_end:nuclear_furnace>);
craftingTable.addShaped("nuclear_furnace", <item:enlightened_end:nuclear_furnace>, 
    [[void_shale, void_shale, void_shale],
	[void_shale, furnace, void_shale],
    [irradium_bar, irradium_bar, irradium_bar]]);
*/
print("recipe_fixes.zs loaded");