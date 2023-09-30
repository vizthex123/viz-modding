# Changes TE dynamo stuff

print("thermal_dynamos.zs loading...");

# Stirling
# Coals give 50% more, as per TE's system

# Had to redo these since CraftTweaker's burn time changes aren't registered by TE, rip
	// Non-coal items
<recipetype:thermal:stirling_fuel>.removeFuel(<item:minecraft:dried_kelp_block>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:thermal:sawdust_block>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:quark:stick_block>);

<recipetype:thermal:stirling_fuel>.addFuel("stick_block_fuel", <item:quark:stick_block>, 10000);
<recipetype:thermal:stirling_fuel>.addFuel("bamboo_block_fuel", <item:thermal:bamboo_block>, 5000);
<recipetype:thermal:stirling_fuel>.addFuel("sawdust_block_fuel", <item:thermal:sawdust_block>, 12000);
<recipetype:thermal:stirling_fuel>.addFuel("kelp_block_fuel", <item:minecraft:dried_kelp_block>, 40000);

	// BYG coals
<recipetype:thermal:stirling_fuel>.removeFuel(<item:byg:anthracite>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:byg:anthracite_block>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:byg:lignite>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:byg:lignite_block>);

<recipetype:thermal:stirling_fuel>.addFuel("anthracite_fuel", <item:byg:anthracite>, 32000);
<recipetype:thermal:stirling_fuel>.addFuel("anthracite_block_fuel", <item:byg:anthracite_block>, 300000);

<recipetype:thermal:stirling_fuel>.addFuel("lignite_fuel", <item:byg:lignite>, 21000);
<recipetype:thermal:stirling_fuel>.addFuel("lignite_block_fuel", <item:byg:lignite_block>, 210000);

	// Misc items
<recipetype:thermal:stirling_fuel>.removeFuel(<item:kubejs:iridium_fuel_cell>);

<recipetype:thermal:stirling_fuel>.addFuel("iridium_cell", <item:kubejs:iridium_fuel_cell>, 1280000);


# Lapidary
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:amethyst_shard>);

<recipetype:thermal:lapidary_fuel>.addFuel("natural_quartz_fuel", <item:malum:natural_quartz>, 30000);
<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_shard_fuel", <item:minecraft:prismarine_shard>, 50000);

<recipetype:thermal:lapidary_fuel>.addFuel("ametrine_fuel", <item:byg:ametrine_gems>, 500000);
<recipetype:thermal:lapidary_fuel>.addFuel("subzero_fuel", <item:byg:subzero_crystal_shard>, 40000);
<recipetype:thermal:lapidary_fuel>.addFuel("therium_fuel", <item:byg:therium_shard>, 150000);

<recipetype:thermal:lapidary_fuel>.addFuel("apatite_fuel", <item:thermal:apatite>, 20000);
<recipetype:thermal:lapidary_fuel>.addFuel("niter_fuel", <item:thermal:niter>, 40000);

<recipetype:thermal:lapidary_fuel>.addFuel("fluix_fuel", <item:ae2:fluix_crystal>, 60000);
<recipetype:thermal:lapidary_fuel>.addFuel("certus_fuel", <item:ae2:certus_quartz_crystal>, 30000);

<recipetype:thermal:lapidary_fuel>.addFuel("carminite_fuel", <item:twilightforest:carminite>, 75000);

<recipetype:thermal:lapidary_fuel>.addFuel("soulstone_fuel", <item:malum:processed_soulstone>, 25000);
<recipetype:thermal:lapidary_fuel>.addFuel("soul_quartz_fuel", <item:nourished_nether:soul_quartz>, 60000);
<recipetype:thermal:lapidary_fuel>.addFuel("dimshard_fuel", <item:rftoolsbase:dimensionalshard>, 250000);

<recipetype:thermal:lapidary_fuel>.addFuel("corundum_fuel", <tag:items:teoe:corundum>.asIIngredient(), 30000);


# Magmatic & Compression
<recipetype:thermal:magmatic_fuel>.removeFuel(<fluid:minecraft:lava>);

<recipetype:thermal:magmatic_fuel>.addFuel("lava_fuel", <fluid:minecraft:lava>, 10000);
<recipetype:thermal:magmatic_fuel>.addFuel("magma_fuel", <fluid:tconstruct:magma>, 35000);
<recipetype:thermal:magmatic_fuel>.addFuel("blazing_blood_fuel", <fluid:tconstruct:blazing_blood>, 50000);
<recipetype:thermal:magmatic_fuel>.addFuel("fiery_essence_fuel", <fluid:twilightforest:fiery_essence>, 75000);
<recipetype:thermal:magmatic_fuel>.addFuel("fiery_fuel", <fluid:twilightforest:molten_fiery>, 100000);

<recipetype:thermal:compression_fuel>.addFuel("venom_fuel", <fluid:tconstruct:venom> , 65000);


print("thermal_dynamos.zs loaded");