# Changes recipes that use Ender IO machines
print("EnderIO.zs loading...");

/*
[O] = optional
[F] = float

mods.enderio.AlloySmelter.addRecipe(<output>, [<3-inputs>], energyCost, xp[F]);
mods.enderio.SagMill.addRecipe([<4-outputs>], [chances[F], <input>, "bonusType*[O]", RF[O], xp[F]);

* For grinding balls
MULTIPLY_OUTPUT can be greater than 100%
CHANCE_ONLY makes it 100% max

4,000 base RF(?)

mods.enderio.CombustionGen.addFuel(<liquid:>, RF/t, BurnTime);
mods.enderio.CombustionGen.addCoolant(<liquid:>, cooling/mb[F]);

mods.enderio.CombustionGen.removeFuel(<liquid:>);
mods.enderio.CombustionGen.removeCoolant(<liquid:>);

Base Coolant Values:
Water - 0.0023
Vapor of Levity - 0.0314
*/

// SAG Mill recipes for chunks
mods.enderio.SagMill.addRecipe([<simpledifficulty:magma_chunk>*2, <simpledifficulty:magma_chunk>*2], [1.0, 0.5], <minecraft:magma>, "CHANCE_ONLY", 6000);
mods.enderio.SagMill.addRecipe([<simpledifficulty:ice_chunk>*2, <simpledifficulty:ice_chunk>*2], [1.0, 0.5], <minecraft:packed_ice>, "CHANCE_ONLY", 6000);
mods.enderio.SagMill.addRecipe([<simpledifficulty:ice_chunk>*2, <simpledifficulty:ice_chunk>], [1.0, 0.5], <minecraft:ice>, "CHANCE_ONLY", 4000);

// Add an Alloy Smelter recipe for Construction Alloy
// One has also been added to the Alloy Furnace
mods.enderio.AlloySmelter.addRecipe(<enderio:item_alloy_ingot:9>*4, [<minecraft:iron_ingot>*2, <ore:carbon>*2], 8000, 0);


// Combustion Generator stuff
mods.enderio.CombustionGen.addCoolant(<liquid:purifiedwater>, 0.003);
mods.enderio.CombustionGen.addCoolant(<liquid:ooze>, 0.05);

mods.enderio.CombustionGen.removeFuel(<liquid:hootch>);

mods.enderio.CombustionGen.addFuel(<liquid:moglava>, 40, 1200);


// Make Lycanite's buckets go into a fluid (why tf didn't it do this by default ffs)
mods.enderio.Tank.addRecipe(false, <lycanitesmobs:bucketooze>, <liquid:ooze>*1000, <minecraft:bucket>);
mods.enderio.Tank.addRecipe(false, <lycanitesmobs:bucketmoglava>, <liquid:moglava>*1000, <minecraft:bucket>);

print("EnderIO.zs loaded");