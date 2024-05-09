// Adds tags to items
ServerEvents.tags("item", e => {

    // Custom
    e.add("modpack:bowls", ["bowl", "ecologics:coconut_husk"])
    e.add("modpack:fossils", ["betterarcheology:villager_fossil", "betterarcheology:villager_fossil_head", "betterarcheology:villager_fossil_body", "betterarcheology:creeper_fossil", "betterarcheology:creeper_fossil_head", "betterarcheology:creeper_fossil_body", "betterarcheology:guardian_fossil", "betterarcheology:guardian_fossil_head", "betterarcheology:guardian_fossil_body", "betterarcheology:chicken_fossil", "betterarcheology:chicken_fossil_head", "betterarcheology:chicken_fossil_body", "betterarcheology:ocelot_fossil", "betterarcheology:ocelot_fossil_head", "betterarcheology:ocelot_fossil_body", "betterarcheology:sheep_fossil", "betterarcheology:sheep_fossil_head", "betterarcheology:sheep_fossil_body", "betterarcheology:wolf_fossil", "betterarcheology:wolf_fossil_head", "betterarcheology:wolf_fossil_body"])
    e.add("modpack:furnace", ["furnace", "quark:blackstone_furnace", "quark:deepslate_furnace"])
    e.add("modpack:furnace_stones", ["cobblestone", "mossy_cobblestone", "tuff", "cavesanddepths:mossy_cobblestone", "cavesanddepths:mossy_cobbled_deepslate", "upgrade_aquatic:kelpy_cobblestone"])
    e.add("modpack:geyser", ["deeperdarker:gloomy_geyser", "spelunkers_charm:deepslate_geyser", "spelunkers_charm:deepslate_geyser_lava", "spelunkers_charm:deepslate_geyser_water"])
    e.add("modpack:green_minerals", ["prismarine_crystals", "prismarine_shard", "outer_end:mint_crystal_shard", "quark:green_corundum_cluster", "spelunkery:nephrite_chunk", "voidscape:titanite_chunk", "voidscape:titanite_shard"])
    e.add("modpack:lightning_rods", ["lightning_rod", "friendsandfoes:exposed_lightning_rod", "friendsandfoes:weathered_lightning_rod", "friendsandfoes:oxidized_lightning_rod", "friendsandfoes:waxed_lightning_rod", "friendsandfoes:waxed_exposed_lightning_rod", "friendsandfoes:waxed_weathered_lightning_rod", "friendsandfoes:waxed_oxidized_lightning_rod"])



    // Forge
    e.add("forge:dusts/ash", ["nourished_nether:ash_lump", "spelunkery:dust_bun"])
    e.add("forge:eggs", ["#minecraft:eggs", "turtle_egg", "sniffer_egg", "quark:egg_parrot_blue", "quark:egg_parrot_green", "quark:egg_parrot_grey", "quark:egg_parrot_red_blue", "quark:egg_parrot_yellow_blue"])
    e.add("forge:nuggets/coal", ["spelunkery:charcoal_lump", "spelunkery:coal_lump"])
    e.add("forge:leather", ["alexscaves:tough_hide", "nourished_nether:hoglin_hide", "quark:ravager_hide"])
    e.add("forge:mushrooms", ["cavesanddepths:glittering_fungus_placeable", "cavesanddepths:lichenfungusplaceable", "deep_aether:lightcap_mushrooms", "silverbirch:shelf_fungus", "spelunkers_charm:cave_mushroom", "spelunkers_charm:golden_mushroom", "spelunkery:button_mushroom", "spelunkery:inkcap_mushroom", "spelunkery:milly_bubcap", "spelunkery:phosphor_fungus", "spelunkery:white_inkcap_mushroom", "voidscape:thunder_fungus"])


    // Fixes
    e.add("minecraft:rails", ["alexscaves:magnetic_levitation_rail"])
    e.add("minecraft:logs", ["#deeperdarker:echo_logs", "deep_aether:rotten_roseroot_log"])


    // Modded planks for Chests & whatnot
    Ingredient.of("#minecraft:planks").subtract("@minecraft").itemIds.forEach(id => {
        if(id != "autumnity:maple_planks", "aether:skyroot_planks", "deep_aether:roseroot_planks", "deep_aether:yagroot_planks", "deep_aether:cruderoot_planks", "deep_aether:conberry_planks", "deep_aether:sunroot_planks", "upgrade_aquatic:driftwood_planks", "upgrade_aquatic:river_planks")
            e.add("modpack:modded_planks", id)
        })

    // Removals
    e.remove("quark:stone_tool_materials", ["flint", "infested_stone", "infested_cobblestone", "infested_deepslate"])
    e.removeAllTagsFrom("cavesanddepths:glittering_fungus")
    e.removeAllTagsFrom("cavesanddepths:lichenfungusplaceable")

})

ServerEvents.tags("block", e => {
    // Make the Bounty Board mineable
    e.add("minecraft:mineable/axe", ["bountiful:bountyboard", "deep_aether:rotten_roseroot_log"])

    // Undergarden portal frames
    e.add("undergarden:portal_frame_blocks", ["chiseled_deepslate"])
    e.remove("undergarden:portal_frame_blocks", ["stone_bricks", "mossy_stone_bricks"])

})