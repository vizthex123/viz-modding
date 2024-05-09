// Fixes smelting recipes because I hate duplicates but don't know Java
ServerEvents.tags("item", e => {

    // Add Forge tags to ore blocks that don't have them
    e.add("forge:ores", ["alexscaves:radrock_uranium_ore", "cavesanddepths:slate_copper_ore"])

    e.add("forge:ores/copper", ["#spelunkery:copper_ores", "cavesanddepths:slate_copper_ore"])
    e.add("forge:ores/iron", ["#spelunkery:iron_ores", "cavesanddepths:slate_iron_ore"])
    e.add("forge:ores/gold", ["#spelunkery:gold_ores", "cavesanddepths:slate_gold_ore"])
    e.add("forge:ores/diamond", ["#spelunkery:diamond_ores", "cavesanddepths:slate_diamond_ore"])
    e.add("forge:ores/emerald", ["#spelunkery:emerald_ores", "cavesanddepths:slate_emerald_ore"])

    e.add("forge:ores/coal", ["#spelunkery:coal_ores", "alexscaves:coprolith_coal_ore", "cavesanddepths:slate_coal_ore"])
    e.add("forge:ores/lapis", ["#spelunkery:lapis_ores", "alexscaves:guanostone_redstone_ore", "cavesanddepths:slate_lapislazuli_ore"])
    e.add("forge:ores/redstone", ["#spelunkery:redstone_ores", "cavesanddepths:slate_redstone_ore"])

    e.add("forge:ores/silver", ["#spelunkery:silver_ores"])

    e.add("forge:ores/uranium", ["alexscaves:radrock_uranium_ore"])



    // Add a custom tag for use in smelting recipes
    e.add("modpack:ores/copper", ["raw_copper", "#forge:ores/copper"])
    e.add("modpack:ores/iron", ["raw_iron", "#forge:ores/iron"])
    e.add("modpack:ores/gold", ["raw_gold", "#forge:ores/gold"])

    e.add("modpack:ores/silver", ["#forge:raw_materials/silver", "#forge:ores/silver"])

    e.add("modpack:ores/bismuth", ["enlightened_end:raw_bismuth", "enlightened_end:bismuth_ore"])
    e.add("modpack:ores/irradium", ["enlightened_end:raw_irradium", "enlightened_end:irradium_ore"])

    e.add("modpack:ores/cloggrum", ["#forge:raw_materials/cloggrum", "#forge:ores/cloggrum"])
    e.add("modpack:ores/froststeel", ["#forge:raw_materials/froststeel", "#forge:ores/froststeel"])

})



ServerEvents.recipes(e => {

    ///// Fix ores having a bajillion smelting recipes
    ///// XP gain for Dust/Scrap Smelting is 50% of ore smelting XP
    e.remove({type: "smelting", output: "copper_ingot"})
    e.remove({type: "smelting", output: "iron_ingot"})
    e.remove({type: "smelting", output: "gold_ingot"})
    e.remove({type: "smelting", output: "diamond"})
    e.remove({type: "smelting", output: "galosphere:silver_ingot"})
    e.remove({type: "smelting", output: "enlightened_end:bismuth_ingot"})
    e.remove({type: "smelting", output: "enlightened_end:irradium_ingot"})
    e.remove({type: "smelting", output: "undergarden:cloggrum_ingot"})
    e.remove({type: "smelting", output: "undergarden:froststeel_ingot"})

    e.remove({type: "blasting", output: "copper_ingot"})
    e.remove({type: "blasting", output: "iron_ingot"})
    e.remove({type: "blasting", output: "gold_ingot"})
    e.remove({type: "blasting", output: "diamond"})
    e.remove({type: "blasting", output: "galosphere:silver_ingot"})
    e.remove({type: "blasting", output: "enlightened_end:bismuth_ingot"})
    e.remove({type: "blasting", output: "enlightened_end:irradium_ingot"})
    e.remove({type: "blasting", output: "undergarden:cloggrum_ingot"})
    e.remove({type: "blasting", output: "undergarden:froststeel_ingot"})



    // Copper
    e.smelting("copper_ingot", "#modpack:ores/copper", 0.5).id("kubejs:smelt_copper_ore")
    e.blasting("copper_ingot", "#modpack:ores/copper", 0.5).id("kubejs:blast_copper_ore")

    e.smelting("copper_ingot", "kubejs:copper_scrap", 0.25).id("kubejs:smelt_copper_scrap")
    e.blasting("copper_ingot", "kubejs:copper_scrap", 0.25).id("kubejs:blast_copper_scrap")


    // Iron
    e.smelting("iron_ingot", "#modpack:ores/iron", 0.7).id("kubejs:smelt_iron_ore")
    e.blasting("iron_ingot", "#modpack:ores/iron", 0.7).id("kubejs:blast_iron_ore")

    e.smelting("iron_ingot", "kubejs:iron_scrap", 0.35).id("kubejs:smelt_iron_scrap")
    e.blasting("iron_ingot", "kubejs:iron_scrap", 0.35).id("kubejs:blast_iron_scrap")


    // Gold
    e.smelting("gold_ingot", "#modpack:ores/gold", 1.5).id("kubejs:smelt_gold_ore")
    e.blasting("gold_ingot", "#modpack:ores/gold", 1.5).id("kubejs:blast_gold_ore")

    e.smelting("gold_ingot", "kubejs:gold_scrap", 0.75).id("kubejs:smelt_gold_scrap")
    e.blasting("gold_ingot", "kubejs:gold_scrap", 0.75).id("kubejs:blast_gold_scrap")


    // Diamond
    e.smelting("diamond", "#forge:ores/diamond", 2).id("kubejs:smelt_diamond_ore")
    e.blasting("diamond", "#forge:ores/diamond", 2).id("kubejs:blast_diamond_ore")

    e.blasting("diamond", "kubejs:diamond_scrap", 1).id("kubejs:smelt_diamond_scrap")
    e.blasting("diamond", "kubejs:diamond_scrap", 1).id("kubejs:blast_diamond_scrap")



    // Silver
    e.smelting("galosphere:silver_ingot", "#modpack:ores/silver", 1).id("kubejs:smelt_silver_ore")
    e.blasting("galosphere:silver_ingot", "#modpack:ores/silver", 1).id("kubejs:blast_silver_ore")

    e.smelting("galosphere:silver_ingot", "kubejs:silver_scrap", 0.5).id("kubejs:smelt_silver_scrap")
    e.blasting("galosphere:silver_ingot", "kubejs:silver_scrap", 0.5).id("kubejs:blast_silver_scrap")



    // Bismuth
    e.smelting("enlightened_end:bismuth_ingot", "#modpack:ores/bismuth", 2).id("kubejs:smelt_bismuth_ore")
    e.blasting("enlightened_end:bismuth_ingot", "#modpack:ores/bismuth", 2).id("kubejs:blast_bismuth_ore")

    // Irradium
    e.smelting("enlightened_end:irradium_bar", "#modpack:ores/irradium", 2).id("kubejs:smelt_irradium_ore")
    e.blasting("enlightened_end:irradium_bar", "#modpack:ores/irradium", 2).id("kubejs:blast_irradium_ore")

    // Cloggrum
    e.smelting("undergarden:cloggrum_ingot", "#modpack:ores/cloggrum", 1).id("kubejs:smelt_cloggrum_ore")
    e.blasting("undergarden:cloggrum_ingot", "#modpack:ores/cloggrum", 1).id("kubejs:blast_cloggrum_ore")

    // Froststeel
    e.smelting("undergarden:froststeel_ingot", "#modpack:ores/froststeel", 1).id("kubejs:smelt_froststeel_ore")
    e.blasting("undergarden:froststeel_ingot", "#modpack:ores/froststeel", 1).id("kubejs:blast_froststeel_ore")



    ///// Ores no sane person would smelt but I'll fix them anyway to be consistent
    e.remove({type: "smelting", output: "coal"})
    e.remove({type: "smelting", output: "lapis_lazuli"})
    e.remove({type: "smelting", output: "redstone"})
    e.remove({type: "smelting", output: "quartz"})
    
    e.remove({type: "blasting", output: "coal"})
    e.remove({type: "blasting", output: "lapis_lazuli"})
    e.remove({type: "blasting", output: "redstone"})
    e.remove({type: "blasting", output: "quartz"})



    // Coal
    e.smelting("coal", "#forge:ores/coal", 0.25).id("kubejs:smelt_coal_ore")
    e.blasting("coal", "#forge:ores/coal", 0.25).id("kubejs:blast_coal_ore")

    // Lapis
    e.smelting("lapis_lazuli", "#forge:ores/lapis", 0.5).id("kubejs:smelt_lapis_ore")
    e.blasting("lapis_lazuli", "#forge:ores/lapis", 0.5).id("kubejs:blast_lapis_ore")

    // Redstone
    e.smelting("redstone", "#forge:ores/redstone", 1).id("kubejs:smelt_redstone_ore")
    e.blasting("redstone", "#forge:ores/redstone", 1).id("kubejs:blast_redstone_ore")

    // Nether Quartz
    e.smelting("quartz", "#forge:ores/quartz", 1).id("kubejs:smelt_nether_quartz_ore")
    e.blasting("quartz", "#forge:ores/quartz", 1).id("kubejs:blast_nether_quartz_ore")

})