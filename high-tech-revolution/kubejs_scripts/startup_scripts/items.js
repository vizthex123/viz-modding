// Adds custom items
StartupEvents.registry("item", e => {

    // Items
    e.create("barb")
    e.create("pulp")
    e.create("fibers")
    e.create("shredded_hide")
    e.create("disc_residue")
    // e.create("stone_stick").tag("forge:rods").tag("forge:rods/stone").tag("forge:rods/wooden")
    e.create("aluminum_dust").tag("forge:dusts").tag("forge:dusts/aluminum")
    e.create("quicklime").tag("revolution:cleaning_agent")
    e.create("recycling").displayName("Recycling Icon")

    // Sawdust
    e.create("glue")
    e.create("compressed_sawdust").burnTime(200)
    e.create("mdf").tag("minecraft:planks").burnTime(400).displayName("MDF Board")

    // Scrap
    e.create("copper_scrap")
    e.create("small_copper_scrap")
    e.create("iron_scrap").tag("alexscaves:ferromagnetic_items")
    e.create("small_iron_scrap").tag("alexscaves:ferromagnetic_items")
    e.create("tiny_iron_scrap").tag("alexscaves:ferromagnetic_items")
    e.create("gold_scrap")
    e.create("small_gold_scrap")
    e.create("tiny_gold_scrap")
    e.create("diamond_scrap")
    e.create("small_diamond_scrap")
    e.create("silver_scrap")
    e.create("small_silver_scrap")

})