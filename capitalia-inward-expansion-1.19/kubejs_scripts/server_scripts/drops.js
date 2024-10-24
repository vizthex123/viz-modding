// Adds loot to various things
LootJS.modifiers((e) => {

    // Make Sheeps drop Sheepskin
    e.addEntityLootModifier("minecraft:sheep").addLoot(
        LootEntry.of("kubejs:sheepskin").when((c) => c.randomChance(0.15))
    );

    // Make Pigs drop Pig Hide
    e.addEntityLootModifier("minecraft:pig").addLoot(
        LootEntry.of("kubejs:pig_hide").when((c) => c.randomChance(0.1))
    );


    // Make Cowboys drop Illager Flesh
    e.addEntityLootModifier("biomemakeover:cowboy").addWeightedLoot(
        [0, 3],
        LootEntry.of("food_enhancements:illager_flesh"));


    // Make Goops drop Goop
    e.addEntityLootModifier("cave_enhancements:goop").addWeightedLoot(
        [1, 2],
        LootEntry.of("cave_enhancements:goop").when((c) => c.randomChance(0.5))
    );


    // Make Dripstone Tortoises drop Pointed Dripstone
    e.addEntityLootModifier("cave_enhancements:dripstone_tortoise").addWeightedLoot(
        [2, 8],
        LootEntry.of("minecraft:pointed_dripstone").when((c) => c.randomChance(0.5))
    );

    // Makes Sculk Saprophytes drop Mossy Fluorite
    e.addEntityLootModifier("sculkybits:sculk_saprophyte").addWeightedLoot(
        [0, 1],
        LootEntry.of("deep_dark_regrowth:mossy_fluorite").when((c) => c.randomChance(0.5))
    );



    //// Blocks

    // Add Coins to Deep Dark: Regrowth's vases
    e
      .addLootTableModifier("deep_dark_regrowth:blocks/ancient_vase")
      .randomChance(0.35)
      .addLoot("lightmanscurrency:coin_iron");

    e
      .addLootTableModifier("deep_dark_regrowth:blocks/large_ancient_vase")
      .randomChance(0.25)
      .addLoot("lightmanscurrency:coin_gold");

    e
      .addLootTableModifier("deep_dark_regrowth:blocks/time_capsule_open")
      .randomChance(0.15)
      .addLoot("lightmanscurrency:coin_emerald");

});