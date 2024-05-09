// Adds smelting recipes
ServerEvents.recipes(e => {

    // Smelt Candles into Wax
    e.smelting("honeycomb", "#minecraft:candles", 0.1).id("kubejs:recycle_candles")

    // Blast Echo Shards into Diamond Scrap
    e.blasting("kubejs:diamond_scrap", "echo_shard", 8, 400).id("kubejs:blast_echo_shard")

    // Blast Heart of the Sea into Diamond Scrap
    e.blasting("8x kubejs:diamond_scrap", "heart_of_the_sea", 20, 600).id("kubejs:blast_sea_heart")

    /// Blast Sculk Catalysts & Shriekers into Echo Shards
    e.blasting("echo_shard", "sculk_shrieker", 16, 600).id("kubejs:sculk_shrieker")
    e.blasting("echo_shard", "sculk_catalyst", 32, 600).id("kubejs:sculk_catalyst")

    ///// Blast Raw Ore blocks
    e.blasting("copper_block", "#forge:storage_blocks/raw_copper", 4.5, 900).id("kubejs:blast_raw_copper_block")
    e.blasting("iron_block", "#forge:storage_blocks/raw_iron", 6.3, 900).id("kubejs:blast_raw_iron_block")
    e.blasting("gold_block", "#forge:storage_blocks/raw_gold", 13.5, 900).id("kubejs:blast_raw_gold_block")

    e.blasting("galosphere:silver_block", "galosphere:raw_silver_block", 9, 900).id("kubejs:blast_raw_silver_block")

    e.blasting("cavesanddepths:rose_gold_block", "cavesanddepths:raw_rose_gold_block", 9, 900).id("kubejs:blast_raw_rose_gold_block")

    e.blasting("enlightened_end:bismuth_block", "enlightened_end:raw_bismuth_block", 18, 900).id("kubejs:blast_raw_bismuth_block")
    e.blasting("enlightened_end:irradium_block", "enlightened_end:raw_irradium_block", 18, 900).id("kubejs:blast_raw_irradium_block")

})