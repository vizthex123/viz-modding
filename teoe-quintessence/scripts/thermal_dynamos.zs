# Changes TE dynamo stuff

print("thermal_dynamos.zs loading...");

# Stirling
# CraftTweaker's burn time changes aren't registered by TE, rip
<recipetype:thermal:stirling_fuel>.removeFuel(<item:quark:stick_block>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:minecraft:dried_kelp_block>);

<recipetype:thermal:stirling_fuel>.addFuel("stick_block", <item:quark:stick_block>, 10000);
<recipetype:thermal:stirling_fuel>.addFuel("bamboo_block", <item:thermal:bamboo_block>, 5000);
<recipetype:thermal:stirling_fuel>.addFuel("kelp_block", <item:minecraft:dried_kelp_block>, 40000);

<recipetype:thermal:stirling_fuel>.removeFuel(<item:malum:block_of_blazing_quartz>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:malum:block_of_arcane_charcoal>);

<recipetype:thermal:stirling_fuel>.addFuel("blazing_quartz_block", <item:malum:block_of_blazing_quartz>, 160000);
<recipetype:thermal:stirling_fuel>.addFuel("arcane_charcoal_block", <item:malum:block_of_arcane_charcoal>, 320000);


# Lapidary
# Adds/removes various gemstone-like things
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:quartz>);
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:amethyst_shard>);

<recipetype:thermal:lapidary_fuel>.addFuel("nether_quartz", <item:minecraft:quartz>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("soul_quartz", <item:nourished_nether:soul_quartz>, 60000);

<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_shard_fuel", <item:minecraft:prismarine_shard>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("wrappist_fuel", <item:geode:wrappist_shard>, 100000);
<recipetype:thermal:lapidary_fuel>.addFuel("amethyst_fuel", <item:minecraft:amethyst_shard>, 30000);
<recipetype:thermal:lapidary_fuel>.addFuel("subzero", <item:byg:subzero_crystal_shard>, 40000);
<recipetype:thermal:lapidary_fuel>.addFuel("therium", <item:byg:therium_shard>, 150000);

<recipetype:thermal:lapidary_fuel>.addFuel("dimshard", <item:rftoolsbase:dimensionalshard>, 250000);
<recipetype:thermal:lapidary_fuel>.addFuel("apatite", <item:thermal:apatite>, 20000);
<recipetype:thermal:lapidary_fuel>.addFuel("niter", <item:thermal:niter>, 40000);

<recipetype:thermal:lapidary_fuel>.addFuel("fluix", <item:ae2:fluix_crystal>, 60000);
<recipetype:thermal:lapidary_fuel>.addFuel("certus_quartz", <item:ae2:certus_quartz_crystal>, 30000);
<recipetype:thermal:lapidary_fuel>.addFuel("carminite", <item:twilightforest:carminite>, 75000);
<recipetype:thermal:lapidary_fuel>.addFuel("ametrine", <item:byg:ametrine_gems>, 500000);

<recipetype:thermal:lapidary_fuel>.addFuel("corundum_fuel", <item:quark:red_corundum_cluster>|<item:quark:orange_corundum_cluster>|<item:quark:yellow_corundum_cluster>|<item:quark:green_corundum_cluster>|<item:quark:blue_corundum_cluster>|<item:quark:indigo_corundum_cluster>|<item:quark:violet_corundum_cluster>|<item:quark:white_corundum_cluster>|<item:quark:black_corundum_cluster>, 30000);


# Magmatic & Compression
<recipetype:thermal:magmatic_fuel>.removeFuel(<fluid:minecraft:lava>);

<recipetype:thermal:magmatic_fuel>.addFuel("lava", <fluid:minecraft:lava>, 10000);
<recipetype:thermal:magmatic_fuel>.addFuel("magma", <fluid:tconstruct:magma>, 35000);
<recipetype:thermal:magmatic_fuel>.addFuel("blazing_blood", <fluid:tconstruct:blazing_blood>, 50000);
<recipetype:thermal:magmatic_fuel>.addFuel("fiery_essence", <fluid:twilightforest:molten_fiery>, 85000);
<recipetype:thermal:magmatic_fuel>.addFuel("fiery", <fluid:twilightforest:molten_fiery>, 100000);

<recipetype:thermal:compression_fuel>.addFuel("venom", <fluid:tconstruct:venom> , 65000);


print("thermal_dynamos.zs loaded");