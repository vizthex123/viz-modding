// Fixes recipes I can't fix with replacer.js
ServerEvents.recipes(e => {

    // Make Thermal's Ruby & Sapphire Blocks the default
    e.remove({id: "projectred_exploration:ruby_block"})
    e.remove({id: "projectred_exploration:sapphire_block"})
    e.shaped(
      "thermal:ruby_block",
        [
          "RRR",
          "RRR",
          "RRR"
        ],
        {
          R: "#forge:gems/ruby"
        }
    ).id("kubejs:ruby_block")

    e.shaped(
      "thermal:sapphire_block",
        [
          "SSS",
          "SSS",
          "SSS"
        ],
        {
          S: "#forge:gems/sapphire"
        }
    ).id("kubejs:sapphire_block")

    // Make Steel Compound require a Blast Furnace
    e.remove({id: "mffs:steel_ingot"})
    e.blasting("mffs:steel_ingot", "mffs:steel_compound", 1).id("kubejs:blast_steel_compound")

    // Make the Glow Berry Stew shapeless
    e.remove({id: "cavesanddepths:glowberriestewr"})
    e.shapeless("cavesanddepths:glow_berries_stew", ["#revolution:bowls", "glow_berries", "glow_berries"]).id("kubejs:glowberry_stew")

    // Make Magnolia Logs use the proper tag
    e.remove({id: "regions_unexplored:magnolia_planks"})
    e.shapeless("4x regions_unexplored:magnolia_planks", ["#regions_unexplored:magnolia_logs"]).id("kubejs:magnolia_planks")

    // Make Raw Rose Gold shapeless
    e.remove({id: "cavesanddepths:rose_gold_nugget"})
    e.remove({id: "cavesanddepths:rawrosegoldr"})
    e.shapeless("cavesanddepths:raw_rose_gold", ["raw_gold", "raw_gold", "raw_copper", "raw_copper"]).id("kubejs:raw_rose_gold")

    // Condense Certus Quartz decrafting into a single recipe
    e.remove({type: "crafting_shapeless", output: "ae2:certus_quartz_crystal"})
    e.shapeless("4x ae2:certus_quartz_crystal", [["ae2:quartz_block", "ae2:smooth_quartz_block", "ae2:cut_quartz_block", "ae2:quartz_bricks", "ae2:chiseled_quartz_block", "ae2:quartz_pillar"]]).id("kubejs:decraft_certus")

    // Change the Copper Button recipe to prevent nugget conflict
    e.remove({output: "cavesanddepths:copper_button"})
    e.shapeless("cavesanddepths:copper_button", ["#minecraft:wooden_buttons", "copper_ingot"]).id("kubejs:copper_button")

    // Fix Bonded Leather using the leather tag
    e.remove({id: "quark:building/crafting/compressed/bonded_leather"})
    e.shaped(
      "quark:bonded_leather",
        [
          "LLL",
          "LLL",
          "LLL"
        ],
        {
          L: "leather"
        }
    ).id("kubejs:bonded_leather")

    // Make the Name Tag recipe more logical
    e.remove({id: "essentials:name_tag"})
    e.shaped(
      "name_tag",
        [
          "  S",
          " P ",
          "P  "
        ],
        {
          P: "paper",
          S: "#forge:string"
        }
    ).id("kubejs:name_tag")

    // Unify Trident recipes
    e.remove({id: "bettertridents:trident"})
    e.remove({id: "upgrade_aquatic:trident"})
    e.shaped(
      "trident",
        [
          " TT",
          " PT",
          "P  "
        ],
        {
          P: "#forge:rods/prismarine",
          T: ["bettertridents:trident_fragment", "upgrade_aquatic:thrasher_tooth"]
        }
    ).id("kubejs:trident")



    //// Unify Mossy Block recipes
    // Cobblestone
    e.remove({id: "minecraft:mossy_cobblestone_from_vine"})
    e.remove({id: "minecraft:mossy_cobblestone_from_moss_block"})
    e.remove({id: "biomesoplenty:mossy_cobblestone_from_willow_vine"})
    e.remove({id: "cavesanddepths:mossballstone"})

    e.shapeless("mossy_cobblestone", ["cobblestone", "#revolution:mossy_material"]).id("kubejs:mossy_cobblestone")

    // Stone
    e.remove({id: "cavesanddepths:mossystoner"})
    e.remove({id: "cavesanddepths:mossballston"})
    e.remove({id: "regions_unexplored:mossy_stone_from_smelting_mossy_cobblestone"})
    e.remove({id: "regions_unexplored:mossy_stone_from_blasting_mossy_cobblestone"})

    e.shapeless("regions_unexplored:mossy_stone", ["stone", "#revolution:mossy_material"]).id("kubejs:mossy_stone")

    e.smelting("regions_unexplored:mossy_stone", "mossy_cobblestone", 0.5).id("kubejs:smelt_mossy_cobblestone")
    e.blasting("regions_unexplored:mossy_stone", "mossy_cobblestone", 0.5).id("kubejs:blast_mossy_cobblestone")

    // Deepslate
    e.remove({id: "cavesanddepths:mossballdeepslate"})
    e.remove({id: "cavesanddepths:mossballcobbleddeeepslate"})

    e.shapeless("cavesanddepths:mossy_cobbled_deepslate", ["cobbled_deepslate", "#revolution:mossy_material"]).id("kubejs:mossy_cobbled_deepslate")

    e.shapeless("cavesanddepths:mossy_deepslate", ["deepslate", "#revolution:mossy_material"]).id("kubejs:mossy_deepslate")

    // Bricks
    e.remove({id: "minecraft:mossy_stone_bricks_from_vine"})
    e.remove({id: "minecraft:mossy_stone_bricks_from_moss_block"})
    e.remove({id: "biomesoplenty:mossy_stone_bricks_from_willow_vine"})
    e.remove({id: "cavesanddepths:mossballbricks"})

    e.shapeless("mossy_stone_bricks", ["stone_bricks", "#revolution:mossy_material"]).id("kubejs:mossy_stone_bricks")



    // Makes Pistons use the Cobblestone Tag
    e.remove({id: "minecraft:piston"})
    e.shaped(
      "piston",
        [
          "PPP",
          "CIC",
          "CRC"
        ],
        {
          C: "#forge:cobblestone",
          P: "#minecraft:planks",
          I: "iron_ingot",
          R: "redstone"
        }
    ).id("kubejs:piston")

    // Make the Sticky Multi-Piston recipe match the Piston
    e.remove({id: "essentials:multi_piston_sticky"})
    e.shaped(
      "essentials:multi_piston_sticky",
        [
          "S",
          "P"
        ],
        {
          P: "essentials:multi_piston",
          S: "#forge:slimeballs"
        }
    ).id("kubejs:sticky_multi_piston")

    // Craft Alex's Caves Block of Uranium with Rods
    e.remove({id: "alexscaves:block_of_uranium"})
    e.remove({id: "alexscaves:uranium_from_block"})
    e.shaped(
      "alexscaves:block_of_uranium",
        [
          "UU",
          "UU"
        ],
        {
          U: "alexscaves:uranium_rod"
        }
    ).id("kubejs:cave_uranium")
    e.shapeless("4x alexscaves:uranium_rod", ["alexscaves:block_of_uranium"]).id("kubejs:decraft_cave_uranium")



    //// Fix the ladder recipes from Ad Astra
    e.remove({id: "ad_astra:aeronos_ladder"})
    e.remove({id: "ad_astra:stropher_ladder"})
    e.shaped(
      "4x ad_astra:aeronos_ladder",
        [
          "S S",
          "SPS",
          "S S"
        ],
        {
          P: "ad_astra:aeronos_planks",
          S: "#forge:rods/wooden"
        }
    ).id("kubejs:aeronos_ladder")

    e.shaped(
      "4x ad_astra:strophar_ladder",
        [
          "S S",
          "SPS",
          "S S"
        ],
        {
          P: "ad_astra:strophar_planks",
          S: "#forge:rods/wooden"
        }
    ).id("kubejs:strophar_ladder")



    //// Fix Quark's non-wood chests being uncraftable
    e.shaped(
      "quark:prismarine_chest",
        [
          "BBB",
          "B B",
          "BBB"
        ],
        {
          B: ["prismarine", "prismarine_bricks"]
        }
    ).id("kubejs:prismarine_chest")

    e.shaped(
      "quark:nether_brick_chest",
        [
          "BBB",
          "B B",
          "BBB"
        ],
        {
          B: ["nether_bricks", "red_nether_bricks"]
        }
    ).id("kubejs:nether_brick_chest")

    e.shaped(
      "quark:purpur_chest",
        [
          "BBB",
          "B B",
          "BBB"
        ],
        {
          B: "purpur_block"
        }
    ).id("kubejs:purpur_chest")

    e.shapeless("quark:prismarine_trapped_chest", ["quark:prismarine_chest", "tripwire_hook"]).id("kubejs:trapped_prismarine_chest")
    e.shapeless("quark:nether_brick_trapped_chest", ["quark:nether_brick_chest", "tripwire_hook"]).id("kubejs:trapped_nether_brick_chest")
    e.shapeless("quark:purpur_trapped_chest", ["quark:purpur_chest", "tripwire_hook"]).id("kubejs:trapped_purpur_chest")



    ///// Furnace upgrades with tags
    /// Makes them use my custom tag
    // Furnace
    e.remove({output: "furnace"})
    e.remove({output: "smoker"})
    e.remove({output: "blast_furnace"})
    e.remove({output: "furnace_minecart"})

    e.shaped(
      "furnace",
        [
          "FFF",
          "F F",
          "FFF"
        ],
        {
          F: "#revolution:furnace_cobblestone"
        }
    ).id("kubejs:furnace")

    // Smoker
    e.shaped(
      "smoker",
        [
          " L ",
          "LFL",
          " L ",
        ],
        {
          F: "#revolution:furnace",
          L: "#minecraft:logs"
        }
    ).id("kubejs:smoker")

    // Blast Furnace
    e.shaped(
      "blast_furnace",
        [
          "III",
          "IFI",
          "SSS"
        ],
        {
          F: "#revolution:furnace",
          I: "iron_ingot",
          S: ["smooth_stone", "smooth_basalt"]
        }
    ).id("kubejs:blast_furnace")

    // Minecart with Furnace (the most useless item lol)
    e.shaped(
      "furnace_minecart",
        [
          "F",
          "M"
        ],
        {
          F: "#revolution:furnace",
          M: "minecart"
        }
    ).id("kubejs:furnace_minecart")

    e.shaped(
      "furnace_minecart",
        [
          "IFI",
          "III"
        ],
        {
          F: "#revolution:furnace",
          I: "iron_ingot"
        }
    ).id("kubejs:furnace_minecart_direct")

})