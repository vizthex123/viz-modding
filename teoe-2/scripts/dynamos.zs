# Changs TE dynamo stuff

print("dynamos.zs loading...");

# Lapidary
# Adds/removes various gemstone-like things
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:quartz>);

<recipetype:thermal:lapidary_fuel>.addFuel("nether_quartz", <item:minecraft:quartz>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_shard_fuel", <item:minecraft:prismarine_shard>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("amethyst", <item:minecraft:amethyst_shard>, 65000);

<recipetype:thermal:lapidary_fuel>.addFuel("dimshard", <item:rftoolsbase:dimensionalshard>, 1000000);
<recipetype:thermal:lapidary_fuel>.addFuel("apatite", <item:thermal:apatite>, 25000);
<recipetype:thermal:lapidary_fuel>.addFuel("niter", <item:thermal:niter>, 60000);

print("dynamos.zs loaded");