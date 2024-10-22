// Should hopefully add recipes to Thermal Expansion"s machines
ServerEvents.recipes(e => {

    ///// Pulverizer
    /// Default RF cost: 4,000

    // Fluix -> Dust
    e.recipes.thermal.pulverizer(["ae2:fluix_dust"], "#forge:gems/fluix", 2).energy(1600).id("kubejs:pulverize_fluix")

    // Certus Quartz -> Dust
    e.recipes.thermal.pulverizer(["ae2:certus_quartz_dust"], "#forge:gems/certus_quartz", 1).energy(1600).id("kubejs:pulverize_certus")

    // Crying Obsidian -> Obsidian
    e.recipes.thermal.pulverizer(["obsidian", Item.of("3x lapis_lazuli").withChance(0.5)], "crying_obsidian", 4).id("kubejs:pulverize_crying_obsidian")

    // Chalk Blocks -> Chalk
    e.recipes.thermal.pulverizer(["calcite", "2x cavesanddepths:chalk", Item.of("cavesanddepths:chalk").withChance(0.75)], "#revolution:chalk_blocks", 1).id("kubejs:pulverize_chalk")

    // Pink Salt -> Shards
    e.recipes.thermal.pulverizer(["galosphere:pink_salt_shard", Item.of("galosphere:pink_salt_straw").withChance(0.15)], "#revolution:pink_salt_blocks", 1.5).id("kubejs:pulverize_pink_salt")

    // Seashells -> Bone Meal
    e.recipes.thermal.pulverizer(["3x bone_meal", Item.of("bone_meal").withChance(0.25)], "ecologics:seashell", 0.5).energy(1600).id("kubejs:pulverize_seashell")

    // Polymer Plate Parity
    e.recipes.thermal.pulverizer([Item.of("thermal:sulfur_dust").withChance(0.5), Item.of("alexscaves:toxic_paste").withChance(0.15), Item.of("quark:clear_shard").withChance(0.1), Item.of("3x kubejs:tiny_iron_scrap").withChance(0.2)], "alexscaves:polymer_plate", 1).energy(2000).id("kubejs:pulverize_polymer_plate")

    //// Pulverize all types of Corundum
    e.recipes.thermal.pulverizer(["2x quark:red_corundum_cluster"], ["quark:red_corundum", "quark:waxed_red_corundum"], 0.5).energy(2000).id("kubejs:pulverize_red_corundum")




    // Aluminum
    e.recipes.thermal.pulverizer(["2x kubejs:aluminum_dust", Item.of("ae2:certus_quartz_dust").withChance(0.1), Item.of("gravel").withChance(0.2)], "#forge:ores/aluminum", 3).id("kubejs:pulverize_aluminum")
    e.recipes.thermal.pulverizer(["kubejs:aluminum_dust", Item.of("ae2:certus_quartz_dust").withChance(0.1)], "#forge:raw_materials/aluminum", 3).id("kubejs:pulverize_raw_aluminum")

    // Uranium
    e.remove({id: "thermal:machine/biggerreactors/pulverizer_mod_uranium_ore"})
    e.remove({id: "thermal:machine/biggerreactors/pulverizer_mod_uranium_chunk"})
    e.remove({id: "thermal:machine/biggerreactors/pulverizer_mod_deepslate_uranium_ore"})
    e.remove({id: "thermal:machine/biggerreactors/pulverizer_mod_uranium_ingot"})

    e.recipes.thermal.pulverizer(["2x biggerreactors:uranium_dust", Item.of("2x biggerreactors:cyanite_dust").withChance(0.1), Item.of("gravel").withChance(0.2)], "#forge:ores/uranium", 4).id("kubejs:pulverize_uranium_ore")
    e.recipes.thermal.pulverizer(["biggerreactors:uranium_dust", Item.of("biggerreactors:cyanite_dust").withChance(0.05)], "#forge:raw_materials/uranium", 2).id("kubejs:pulverize_raw_uranium")
    e.recipes.thermal.pulverizer(["biggerreactors:uranium_dust"], "#forge:ingots/uranium", 0).id("kubejs:pulverize_uranium_ingot")



    ///// Induction Smelter
    /// Default RF Cost: 3,200
    /// When KubeJS reads inputs, they show up center -> left -> right in REI

    // Induction Smelt Enderite
    e.recipes.thermal.smelter(["2x lolenderite:enderite_fragment", Item.of("thermal:rich_slag", 2).withChance(0.5)], ["lolenderite:primordial_remnants"]).energy(6400).id("kubejs:induction_enderite_debris")

    // Change Flux-Infused Electrum to require Enderite
    e.remove({id: "thermal:compat/redstone_arsenal/smelter_rsa_alloy_flux"})
    e.recipes.thermal.smelter(["16x redstone_arsenal:flux_ingot"], ["4x thermal:electrum_ingot", "netherite_ingot", "16x redstone"]).energy(8000).id("kubejs:flux_infused_electrum")

    // Flux Dust
    e.recipes.thermal.smelter(["8x fluxnetworks:flux_dust"], [["#forge:ingots/uranium", "#forge:ingots/cyanite", "#forge:dusts/uranium", "#forge:dusts/cyanite"], "#forge:gems/xychorium", "4x redstone"]).energy(6400).id("kubejs:alloy_flux_dust")
    e.recipes.thermal.smelter(["64x fluxnetworks:flux_dust"], [["#forge:ingots/ludicrite", "#forge:dusts/ludicrite"], "8x #forge:gems/xychorium", "16x redstone"]).id("kubejs:alloy_flux_dust_ludicrite")

    // Obsidian-Infused Gold with Ingots
    // This caused so much pain for no damn reason ffs
    e.recipes.thermal.smelter(["6x jetboots:obsidian_infused_gold"], ["2x #revolution:xychorized_obsidian", Ingredient.of(["gold_ingot", "thermal:gold_dust"], 4), Ingredient.of(["thermal:electrum_ingot", "thermal:electrum_dust"], 2)]).energy(8000).id("kubejs:obsidian_gold")

    // Rose Gold with Ingots
    e.remove({id: "thermal:machines/smelter/smelter_alloy_rose_gold"})
    e.recipes.thermal.smelter(["3x thermal:rose_gold_ingot"], ["alexscaves:ferrouslime_ball", ["gold_ingot", "thermal:gold_dust"], ["copper_ingot", "thermal:copper_dust"]]).energy(2400).id("kubejs:rose_gold")

    // Rose Gold Plate -> Ingot
    e.recipes.thermal.smelter(["thermal:rose_gold_ingot"], ["#forge:plates/rose_gold"]).energy(1600).id("kubejs:recycle_rose_gold_plate")

    // Steel Plate -> Ingot
    e.recipes.thermal.smelter(["thermal:steel_ingot"], ["#forge:plates/steel"]).energy(1600).id("kubejs:recycle_steel_plate")



    // Placeholder recipes for Cave Tablet conversions
    e.recipes.thermal.smelter([Item.of("alexscaves:cave_codex", '{CaveBiome:"alexscaves:abyssal_chasm"}').strongNBT()], [Item.of("alexscaves:cave_tablet", '{CaveBiome:"alexscaves:abyssal_chasm"}').strongNBT(), "xycraft_machines:water_block", "16x paper"]).energy(8000).id("kubejs:placeholder_cave_codex_abyssal")

    e.recipes.thermal.smelter([Item.of("alexscaves:cave_codex", '{CaveBiome:"alexscaves:forlorn_hollows"}').strongNBT()], [Item.of("alexscaves:cave_tablet", '{CaveBiome:"alexscaves:forlorn_hollows"}').strongNBT(), "#thermal:rockwool", "16x paper"]).energy(8000).id("kubejs:placeholder_cave_codex_forlorn")

    e.recipes.thermal.smelter([Item.of("alexscaves:cave_codex", '{CaveBiome:"alexscaves:magnetic_caves"}').strongNBT()], [Item.of("alexscaves:cave_tablet", '{CaveBiome:"alexscaves:magnetic_caves"}').strongNBT(), "#forge:gears/iron", "16x paper"]).energy(8000).id("kubejs:placeholder_cave_codex_magnetic")

    e.recipes.thermal.smelter([Item.of("alexscaves:cave_codex", '{CaveBiome:"alexscaves:primordial_caves"}').strongNBT()], [Item.of("alexscaves:cave_tablet", '{CaveBiome:"alexscaves:primordial_caves"}').strongNBT(), "4x #forge:eggs", "16x paper"]).energy(8000).id("kubejs:placeholder_cave_codex_primordial")

    e.recipes.thermal.smelter([Item.of("alexscaves:cave_codex", '{CaveBiome:"alexscaves:toxic_caves"}').strongNBT()], [Item.of("alexscaves:cave_tablet", '{CaveBiome:"alexscaves:toxic_caves"}').strongNBT(), "4x #forge:ingots/uranium", "16x paper"]).energy(8000).id("kubejs:placeholder_cave_codex_toxic")





    ///// Sawmill
    /// Most of these are in sawmill_planks.js and sawmill_recycling.js
    /// Default RF Cost: 2,000

    // Kelp -> Pulp
    e.recipes.thermal.sawmill(["kubejs:pulp"], "kelp", 0).energy(500).id("kubejs:saw_kelp")

    // Dark Tatters
    e.recipes.thermal.sawmill(["4x kubejs:fibers"], "alexscaves:dark_tatters", 0).energy(500).id("kubejs:saw_dark_tatters")





    ///// Multiservo Press
    //// Default RF cost: 2,400

    /// New Latex recipes
    // Each Rubber uses 250 mB of Latex
    e.remove({id: "thermal:machines/press/press_dandelion_to_latex"})
    e.remove({id: "thermal:machines/press/press_vine_to_latex"})

    e.recipes.thermal.press([Fluid.of("thermal:latex", 25)], ["#forge:seeds"], 0.1).energy(400).id("kubejs:seeds_to_latex")
    e.recipes.thermal.press([Fluid.of("thermal:latex", 50)], ["#revolution:vines"], 0.15).energy(400).id("kubejs:vines_to_latex")
    e.recipes.thermal.press([Fluid.of("thermal:latex", 100)], ["#revolution:cacti"], 0.2).energy(400).id("kubejs:cacti_to_latex")

    e.recipes.thermal.press([Fluid.of("thermal:latex", 50)], ["#minecraft:small_flowers"], 0.1).energy(400).id("kubejs:small_flowers_to_latex")
    e.recipes.thermal.press([Fluid.of("thermal:latex", 100)], ["#revolution:tall_flowers"], 0.15).energy(400).id("kubejs:tall_flowers_to_latex")

    e.recipes.thermal.press([Fluid.of("thermal:latex", 500)], ["#revolution:cave_plants"], 0.25).energy(800).id("kubejs:cave_plants_to_latex")

    e.recipes.thermal.press([Fluid.of("thermal:latex", 250)], ["#revolution:nether_plants"], 0.35).energy(1600).id("kubejs:nether_plants_to_latex")

    // Pewen Sap -> Sap
    e.recipes.thermal.press([Fluid.of("thermal:sap", 250)], "alexscaves:pewen_sap", 1).energy(800).id("kubejs:centrifuge_pewen_sap")



    ///// Centrifugal Separator
    /// Default RF cost: 4,000

    // Glow Ink Sacs -> Ink Sac & Cyan Dye
    e.recipes.thermal.centrifuge(["ink_sac", "3x cyan_dye"], "glow_ink_sac", 0.15).energy(800).id("kubejs:centrifuge_glow_ink_sac")

    // Flesh -> Rotten Flesh & Blood
    e.recipes.thermal.centrifuge(["2x rotten_flesh", Item.of("2x rotten_flesh").withChance(0.5),Fluid.of("biomesoplenty:blood", 500)], "#revolution:flesh_blocks", 4).energy(2000).id("kubejs:centrifuge_flesh_blocks")

    // Withering Debris -> Netherite Scrap
    e.recipes.thermal.centrifuge(["netherite_scrap", Item.of("netherite_scrap").withChance(0.5)], "bygonenether:withered_debris", 4).energy(4000).id("kubejs:centrifuge_withered_debris")

    // Replace smelting recipes for Redstone Spores and Bulbs
    // Also adds a use for Pointed Redstone
    e.remove({id: "thermal:machines/centrifuge/centrifuge_redstone_mushroom_spores"})
    e.recipes.thermal.centrifuge(["2x redstone"], "thermal:redstone_mushroom_spores", 0.25).id("kubejs:centrifuge_fluxtooth_spores")
    e.recipes.thermal.centrifuge(["redstone", Item.of("redstone").withChance(0.5)], "regions_unexplored:pointed_redstone", 0.35).id("kubejs:centrifuge_pointed_redstone")
    e.recipes.thermal.centrifuge(["4x redstone"], "regions_unexplored:redstone_bulb", 0.5).id("kubejs:centrifuge_redstone_bulb")

    //// Processing recipes for Alex's Caves items
    //// Mostly parity with the Reprocessor
    /// Common items give 1 XP
    /// Uncommon items give 3 XP
    /// Rare items give 5 XP

    // Separate Metal Swarf
    e.recipes.thermal.centrifuge(["gravel", Item.of("raw_iron").withChance(0.5), Item.of("alexscaves:ferrouslime_ball").withChance(0.5)], "alexscaves:metal_swarf", 1.5).energy(1600).id("kubejs:centrifuge_metal_swarf")

    // Ferrouslime Balls -> Slimeball & Iron Nuggets
    e.recipes.thermal.centrifuge(["slime_ball", "3x iron_nugget"], "alexscaves:ferrouslime_ball", 3).energy(1600).id("kubejs:centrifuge_ferrouslimeball")

    // Heavy Bone -> Bones
    e.recipes.thermal.centrifuge(["2x bone", "3x white_dye"], "alexscaves:heavy_bone", 1).energy(1600).id("kubejs:centrifuge_heavy_bone")





    ///// Pyrolyzer
    //// Default RF cost: 2,000

    // Soul Coal -> Coal Coke
    e.recipes.thermal.pyrolyzer(["thermal:coal_coke", Item.of("thermal:tar").withChance(0.35), Fluid.of("thermal:light_oil", 125)], "nourished_nether:soul_coal", 0.25).energy(3000).id("kubejs:pyrolyze_soul_coal")





    ///// Magma Crucible
    //// Default RF cost: 40,000

    // Flesh -> Blood
    e.recipes.thermal.crucible([Fluid.of("biomesoplenty:blood", 1000)], "#revolution:flesh_blocks", 1).energy(40000).id("kubejs:melt_flesh")

    // Rotten Flesh -> Blood
    e.recipes.thermal.crucible([Fluid.of("biomesoplenty:blood", 250)], "rotten_flesh", 1).energy(10000).id("kubejs:melt_rotten_flesh")

    // Tectonic Shard -> Lava
    e.recipes.thermal.crucible([Fluid.of("lava", 500)], "alexscaves:tectonic_shard", 1).energy(40000).id("kubejs:melt_tectonic_shard")



    ///// Fluid Encapsulator
    //// Default RF cost: 400

    // Blood -> Flesh
    e.recipes.thermal.bottler(["biomesoplenty:flesh"], [Fluid.of("biomesoplenty:blood", 1000), "netherrack"]).energy(2000).id("kubejs:flesh_block")

    // Rotten Flesh -> Leather replacement
    e.remove({id: "thermal:machines/furnace/furnace_rotten_flesh_to_leather"})
    e.recipes.thermal.bottler(["leather"], [Fluid.of("biomesoplenty:blood", 500), "rotten_flesh"]).energy(800).id("kubejs:rotten_flesh")



    ///// Fractionating Still
    //// Default RF cost: 8,000

    // Refine Acid into Uranium Shards
    e.recipes.thermal.refinery([Item.of("alexscaves:uranium_shard").withChance(0.25), Fluid.of("water", 200)], Fluid.of("alexscaves:acid", 250), 2.5).energy(4000).id("kubejs:refine_acid")

    // Refine Latex into Rubber
    e.recipes.thermal.refinery([Item.of("thermal:rubber").withChance(0.25), Fluid.of("water", 250)], Fluid.of("thermal:latex", 250), 1).energy(1600).id("kubejs:refine_latex")

    // Refine Ad Astra's Oil into Bitumen
    e.recipes.thermal.refinery([Item.of("thermal:bitumen").withChance(0.10), Fluid.of("thermal:heavy_oil", 70), Fluid.of("thermal:light_oil", 30)], Fluid.of("ad_astra:oil", 100), 0.15).energy(6000).id("kubejs:refine_astra_oil")

    // Refine XyCraft's Resin into Resin Balls
    e.recipes.thermal.refinery([Item.of("xycraft_machines:resin_ball").withChance(0.5), Fluid.of("thermal:tree_oil", 125)], Fluid.of("xycraft_machines:resin", 250), 0.2).energy(4000).id("kubejs:refine_resin")

    // Refine Blood into Iron Nuggets
    e.recipes.thermal.refinery([("iron_nugget"), Fluid.of("water", 1000)], Fluid.of("blood", 1000), 1).energy(2000).id("kubejs:refine_blood")





    ///// Crystallizer
    //// Default RF cost: 20,000

    // Crystallize Certus Quartz Dust
    e.recipes.thermal.crystallizer(["ae2:certus_quartz_crystal"], [Fluid.of("water", 1000), "ae2:certus_quartz_dust"]).energy(3000).id("kubejs:crystallize_certus_dust")



    ///// Crafting Recipes

    // Change the Flux Elytra to use the Enderite one
    e.remove({id: "redstone_arsenal:flux_elytra"})
    e.shaped(
     "redstone_arsenal:flux_elytra",
        [
          "PRP",
          "IEI",
          "P P"
        ],
        {
          E: "lolenderite:enderite_plated_elytra",
          I: "redstone_arsenal:flux_ingot",
          P: "redstone_arsenal:flux_plating",
          R: "redstone_arsenal:flux_obsidian_rod"
        }
    ).id("kubejs:flux_elytra")





    //// Replace rubber recipes and add tag support
    /// Also boost bucket -> rubber output so the math is easier
    e.remove({id: "thermal:rubber_from_dandelion"})
    e.remove({id: "thermal:rubber_from_vine"})
    e.remove({id: "thermal:rubber_3"})

    e.shapeless("4x thermal:rubber", ["thermal:latex_bucket"]).id("kubejs:rubber_bucket")

    // Saplings
    e.shaped(
     "thermal:rubber",
      [
        "SSS",
        "SWS",
        "SSS"
      ],
      {
        S: "#minecraft:saplings",
        W: "water_bucket"
      }
    ).id("kubejs:rubber_saplings")

    e.shaped(
     "thermal:rubber",
      [
        "VVV",
        "VWV",
        "VVV"
      ],
      {
        V: "#revolution:vines",
        W: "water_bucket"
      }
    ).id("kubejs:rubber_vines")

    e.shaped(
     "thermal:rubber",
      [
        "FFF",
        "FWF",
        "FFF"
      ],
      {
        F: "#minecraft:small_flowers",
        W: "water_bucket"
      }
    ).id("kubejs:rubber_small_flowers")

    e.shaped(
     "2x thermal:rubber",
        [
          "FFF",
          "FWF",
          "FFF"
        ],
        {
          F: "#minecraft:tall_flowers",
          W: "water_bucket"
        }
    ).id("kubejs:rubber_tall_flowers")

    e.shaped(
     "2x thermal:rubber",
        [
          "CCC",
          "CWC",
          "CCC"
        ],
        {
          C: "#revolution:cacti",
          W: "water_bucket"
        }
    ).id("kubejs:rubber_cacti")

    e.shaped(
     "4x thermal:rubber",
        [
          "NNN",
          "NWN",
          "NNN"
        ],
        {
          N: "#revolution:nether_plants",
          W: "lava_bucket"
        }
    ).id("kubejs:rubber_nether_plants")

    e.shaped(
     "8x thermal:rubber",
        [
          "CCC",
          "CWC",
          "CCC"
        ],
        {
          C: "#revolution:cave_plants",
          W: "water_bucket"
        }
    ).id("kubejs:rubber_cave_plants")



    ///// Misc stuff
    //// Catalysts
    e.recipes.thermal.pulverizer_catalyst("echo_shard").primaryMod(3.0).secondaryMod(3.0).energyMod(0.5).minChance(0.15).useChance(0.5).id("kubejs:echo_shard_catalyst")
    e.recipes.thermal.pulverizer_catalyst("#forge:dusts/diamond").primaryMod(1.5).secondaryMod(1.5).energyMod(1.25).minChance(0.35).useChance(0.25).id("kubejs:diamond_dust_catalyst")
    e.recipes.thermal.pulverizer_catalyst("#revolution:corundum").primaryMod(1.25).secondaryMod(1.0).energyMod(0.8).minChance(0.5).useChance(0.65).id("kubejs:corundum_catalyst")

    e.recipes.thermal.insolator_catalyst("alexscaves:fertilizer").primaryMod(2.0).secondaryMod(1.5).energyMod(0.65).minChance(0.5).useChance(0.5).id("kubejs:fertilizer_catalyst")
    e.recipes.thermal.insolator_catalyst("alexscaves:marine_snow").primaryMod(1.15).secondaryMod(1.25).energyMod(0.9).minChance(0.35).useChance(0.35).id("kubejs:marine_snow_catalyst")
    e.recipes.thermal.insolator_catalyst("nourished_nether:ash_lump").primaryMod(1.5).secondaryMod(1.75).energyMod(0.75).minChance(0.25).useChance(0.45).id("kubejs:ash_catalyst")



    //// Dynamos
    e.remove({id: "thermal:fuels/magmatic/magmatic_lava"})
    e.remove({id: "thermal:fuels/lapidary/lapidary_amethyst"})
    e.remove({id: "thermal:fuels/lapidary/lapidary_prismarine"})

    e.recipes.thermal.lapidary_fuel("thermal:apatite").energy(40000).id("kubejs:apatite_energy")
    e.recipes.thermal.lapidary_fuel("#revolution:corundum").energy(40000).id("kubejs:corundum_energy")
    e.recipes.thermal.lapidary_fuel("#forge:gems/xychorium").energy(40000).id("kubejs:xychorium_energy")

    e.recipes.thermal.lapidary_fuel("amethyst_shard").energy(80000).id("kubejs:amethyst_energy")
    e.recipes.thermal.lapidary_fuel("echo_shard").energy(250000).id("kubejs:echo_shard_energy")
    e.recipes.thermal.lapidary_fuel("prismarine_crystals").energy(80000).id("kubejs:prismarine_energy")

    e.recipes.thermal.lapidary_fuel("ad_astra_proxima_plus:micyurite").energy(100000).id("kubejs:micyurite_energy")
    e.recipes.thermal.lapidary_fuel("rftoolsbase:dimensionalshard").energy(250000).id("kubejs:dimshard_energy")
    e.recipes.thermal.lapidary_fuel("alexscaves:occult_gem").energy(150000).id("kubejs:occult_gem_energy")
    e.recipes.thermal.lapidary_fuel("thermal:niter").energy(60000).id("kubejs:niter_energy")


    e.recipes.thermal.magmatic_fuel("lava").energy(20000).id("kubejs:lava_energy")
    e.recipes.thermal.magmatic_fuel("ad_astra_proxima_plus:proxima_e_diamond_lava").energy(100000).id("kubejs:proxima_lava_energy")

    e.recipes.thermal.compression_fuel("ad_astra:cryo_fuel").energy(50000).id("kubejs:cryo_fuel_energy") // Will move this to the Cryo Dynamo if Thermal Extra ever gets configs or KubeJS support
    e.recipes.thermal.compression_fuel("ad_astra:fuel").energy(1000000).id("kubejs:fuel_energy")

})

// Thanks to Lady Lexxie (again) and Liopyu on the KubeJS discord for tolerating my idiocy long enough to answer my questions so I could write this script lol