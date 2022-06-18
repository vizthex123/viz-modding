# Changs TE dynamo stuff

print("thermal_dynamos.zs loading...");

# Lapidary
# Adds/removes various gemstone-like things
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:quartz>);

<recipetype:thermal:lapidary_fuel>.addFuel("nether_quartz", <item:minecraft:quartz>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_shard_fuel", <item:minecraft:prismarine_shard>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("amethyst", <item:minecraft:amethyst_shard>, 65000);

<recipetype:thermal:lapidary_fuel>.addFuel("dimshard", <item:rftoolsbase:dimensionalshard>, 1000000);
<recipetype:thermal:lapidary_fuel>.addFuel("apatite", <item:thermal:apatite>, 25000);
<recipetype:thermal:lapidary_fuel>.addFuel("niter", <item:thermal:niter>, 40000);

<recipetype:thermal:lapidary_fuel>.addFuel("fluix", <item:ae2:fluix_crystal>, 60000);
<recipetype:thermal:lapidary_fuel>.addFuel("certus_quartz", <item:ae2:certus_quartz_crystal>, 30000);
<recipetype:thermal:lapidary_fuel>.addFuel("carminite", <item:twilightforest:carminite>, 75000);
<recipetype:thermal:lapidary_fuel>.addFuel("ametrine", <item:byg:ametrine_gems>, 250000);



# Misc
<recipetype:thermal:stirling_fuel>.removeFuel(<item:minecraft:dried_kelp_block>);

<recipetype:thermal:stirling_fuel>.addFuel("kelp_block", <item:minecraft:dried_kelp_block>, 40000);


print("thermal_dynamos.zs loaded");