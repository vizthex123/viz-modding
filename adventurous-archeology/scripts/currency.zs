# Controls the economy
print("currency.zs loading...");
/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);
*/
/*
val small = <item:simcur:small_coin>;
val medium = <item:simcur:medium_coin>;
val large = <item:simcur:large_coin>;
val extra_large = <item:simcur:extra_large_coin>;
val emerald = <item:minecraft:emerald>;
val emerald_block = <item:minecraft:emerald_block>;
val shard = <item:spelunkery:emerald_shard>;
val regalium = <item:undergarden:regalium_crystal>;
val regalium_block = <item:undergarden:regalium_block>;

val green_mineral = <tag:items:modpack:green_minerals>;


// Remove default recipes
craftingTable.remove(small);
craftingTable.remove(medium);
craftingTable.remove(large);
craftingTable.remove(extra_large);

// Craft
craftingTable.addShapeless("small_to_medium", medium, [small, small, small, small, small]);
craftingTable.addShapeless("medium_to_large", large, [medium, medium]);
craftingTable.addShapeless("large_to_extra_large", extra_large, [large, large]);
craftingTable.addShapeless("extra_large_to_emerald", emerald, [extra_large, extra_large]);
craftingTable.addShapeless("emerald_to_regalium", regalium, [emerald, emerald, emerald, emerald, emerald]);

// Decraft
craftingTable.addShapeless("medium_to_small", small*5, [medium]);
craftingTable.addShapeless("large_to_medium", medium*2, [large]);
craftingTable.addShapeless("extra_large_to_large", large*2, [extra_large]);
craftingTable.addShapeless("emerald_to_extra_large", extra_large*2, [emerald, green_mineral]);
craftingTable.addShapeless("regalium_to_emerald", emerald*5, [regalium]);



# Value tooltips
val gold = "\u00A76";

small.addTooltip(gold + "£25");
medium.addTooltip(gold + "£125");
large.addTooltip(gold + "£250");
extra_large.addTooltip(gold + "£500");
emerald.addTooltip(gold + "£1,000");
emerald_block.addTooltip(gold + "£9,000");

shard.addTooltip(gold + "£111");
regalium.addTooltip(gold + "£5,000");
regalium_block.addTooltip(gold + "£45,000");



# Tags
# Basically only so you can easily filter to just currency items in REI lol
val currency = <tag:items:modpack:currency>;

currency.add(small);
currency.add(medium);
currency.add(large);
currency.add(extra_large);
currency.add(emerald);
currency.add(emerald_block);

currency.add(shard);
currency.add(regalium);
currency.add(regalium_block);
*/
print("currency.zs loaded");