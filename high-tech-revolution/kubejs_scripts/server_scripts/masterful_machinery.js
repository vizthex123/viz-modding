// Adds recipes to blocks from Masterful Machinery
// Also manages tags the mod uses
ServerEvents.recipes(e => {

    // Machine Core
    e.shaped(
     "mm:machine_core",
        [
          "ISI",
          "SMS",
          "ISI"
        ],
        {
          I: "iron_ingot",
          M: ["rftoolsbase:machine_frame", "deepresonance:machine_frame", "xycraft_machines:machine_base"],
          S: ["smooth_stone", "smooth_basalt", "ae2:smooth_sky_stone_block"]
        }
    ).id("kubejs:machine_core")

    // Coin Minter Core
    e.shaped(
     "mm:minter_core",
        [
          "CCC",
          "CAC",
          "CCC"
        ],
        {
          A: "#forge:ingots/aluminum",
          C: "#coinsje:coin_like"
        }
    ).id("kubejs:minter_core")

    // Transmutation Core
    e.shaped(
     "mm:transmutation_core",
        [
          "CCC",
          "CGC",
          "CCC"
        ],
        {
          C: "copper_ingot",
          G: "mm:gearbox"
        }
    ).id("kubejs:transmutation_core")

    // Extraction Core
    e.shaped(
     "mm:extraction_core",
        [
          "CCC",
          "CEC",
          "CCC"
        ],
        {
          C: "copper_ingot",
          E: ["thermal:device_hive_extractor", "thermal:device_tree_extractor", "thermal:device_rock_gen", "xycraft_machines:extractor"]
        }
    ).id("kubejs:extraction_core")



    // Energy inputs & outputs
    e.shaped(
     "mm:energy_input",
        [
          "GRG",
          "R R",
          "GRG"
        ],
        {
          G: "gold_ingot",
          R: "redstone"
        }
    ).id("kubejs:energy_input")
    e.shapeless("mm:energy_output", ["mm:energy_input"]).id("kubejs:energy_output")
    e.shapeless("mm:energy_input", ["mm:energy_output"]).id("kubejs:energy_input_conversion")


    //// Item inputs & outputs
    // Tiny
    e.shapeless("mm:item_tiny_input", ["#forge:chests/wooden", "#revolution:input_stones", "#revolution:input_stones"]).id("kubejs:tiny_item_input")

    e.shapeless("mm:item_tiny_output", ["mm:item_tiny_input"]).id("kubejs:tiny_item_output")
    e.shapeless("mm:item_tiny_input", ["mm:item_tiny_output"]).id("kubejs:tiny_item_output_conversion")

    // Small
    e.shaped(
     "mm:item_small_input",
        [
          " I ",
          "ICI",
          " I "
        ],
        {
          C: "#forge:chests/wooden",
          I: ["#forge:ingots/aluminum", "#forge:ingots/tin"]
        }
    ).id("kubejs:small_item_input")
    e.shapeless("mm:item_small_output", ["mm:item_small_input"]).id("kubejs:small_output")
    e.shapeless("mm:item_small_input", ["mm:item_small_output"]).id("kubejs:small_input_conversion")
    e.shapeless("mm:item_small_input", [["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"]]).id("kubejs:tiny_item_upgrade")
    e.shapeless("3x mm:item_tiny_input", [["mm:item_small_input", "mm:item_small_output"], "flint"]).id("kubejs:small_item_downgrade")

    // Standard
    e.shaped(
     "mm:item_input",
        [
          "III",
          "IHI",
          "III"
        ],
        {
          H: "hopper",
          I: "#forge:ingots/constantan"
        }
    ).id("kubejs:item_input")
    e.shapeless("mm:item_output", ["mm:item_input"]).id("kubejs:item_output")
    e.shapeless("mm:item_input", ["mm:item_output"]).id("kubejs:item_input_conversion")
    e.shapeless("mm:item_input", [["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"], ["mm:item_tiny_input", "mm:item_tiny_output"]]).id("kubejs:tiny_item_upgrade_to_standard")
    e.shapeless("mm:item_input", [["mm:item_small_input", "mm:item_small_output"], ["mm:item_small_input", "mm:item_small_output"], ["mm:item_small_input", "mm:item_small_output"]]).id("kubejs:small_item_upgrade_to_standard")
    e.shapeless("3x mm:item_small_input", [["mm:item_input", "mm:item_output"], "flint"]).id("kubejs:standard_item_downgrade")

    // Large
    e.shaped(
     "mm:item_large_input",
        [
          "GIG",
          "IHI",
          "GIG"
        ],
        {
          G: ["nether_quartz", "prismarine_shard", "#ae2:all_certus_quartz"],
          H: "essentials:speed_hopper",
          I: "#forge:ingots/steel"
        }
    ).id("kubejs:large_item_input")
    e.shapeless("mm:item_large_output", ["mm:item_large_input"]).id("kubejs:large_item_output")
    e.shapeless("mm:item_large_input", ["mm:item_large_output"]).id("kubejs:large_item_output_conversion")
    e.shapeless("mm:item_large_input", [["mm:item_input", "mm:item_output"], ["mm:item_input", "mm:item_output"], ["mm:item_small_input", "mm:item_small_output"], ["mm:item_small_input", "mm:item_small_output"], ["mm:item_tiny_input", "mm:item_tiny_output"]]).id("kubejs:standard_item_upgrade")
    e.shapeless("8x mm:item_small_input", [["mm:item_large_input", "mm:item_large_output"], "flint"]).id("kubejs:large_item_downgrade") // You do lose 1 slot, but oh well


    // Fluid inputs & outputs
    e.shaped(
     "mm:fluid_input",
        [
          " I ",
          "ICI",
          " I "
        ],
        {
          C: "bucket",
          I: "#forge:ingots/bronze"
        }
    ).id("kubejs:fluid_input")
    e.shapeless("mm:fluid_output", ["mm:fluid_input"]).id("kubejs:fluid_output")
    e.shapeless("mm:fluid_input", ["mm:fluid_output"]).id("kubejs:fluid_input_conversion")



    // Circuitry
    e.shaped(
     "mm:circuitry",
        [
          "RXR",
          "XCX",
          "RXR"
        ],
        {
          C: "#revolution:circuits",
          R: "redstone",
          X: "xycraft_world:xychorium_gem_green"
        }
    ).id("kubejs:circuitry")

    // Gearbox
    e.shaped(
     "mm:gearbox",
        [
          " I ",
          "IGI",
          " I "
        ],
        {
          G: "#forge:gears",
          I: "iron_ingot"
        }
    ).id("kubejs:gearbox")

    // Vent
    e.shaped(
     "mm:vent",
        [
          " S ",
          "SGS",
          " S "
        ],
        {
          G: "quark:grate",
          S: "#forge:ingots/steel"
        }
    ).id("kubejs:vent")

})


// Adds tags to items
ServerEvents.tags("item", e => {

    // Machine Cores
    e.add("revolution:core", ["mm:extraction_core", "mm:machine_core", "mm:minter_core", "mm:transmutation_core"])

    // Item Inputs & Outputs
    e.add("revolution:input", ["mm:item_tiny_input", "mm:item_small_input", "mm:item_input", "mm:item_large_input"])
    e.add("revolution:output", ["mm:item_tiny_output", "mm:item_small_output", "mm:item_output", "mm:item_large_output"])

    // Item version of item IO port tag (for quest detection)
    e.add("revolution:non_tiny_input", ["mm:item_small_input", "mm:item_input", "mm:item_large_input"])
    e.add("revolution:non_tiny_output", ["mm:item_small_output", "mm:item_output", "mm:item_large_output"])

    e.add("revolution:big_input", ["mm:item_input", "mm:item_large_input"])
    e.add("revolution:big_output", ["mm:item_output", "mm:item_large_output"])



    //// Recipe tags
    // Used to make Circuitry
    e.add("revolution:circuits", ["ae2:logic_processor", "ae2:calculation_processor", "ae2:engineering_processor", "laserio:logic_chip"])
 


    // Used to make Enderite
    e.add("revolution:netherite", ["netherite_ingot", "thermal:netherite_dust"])

    // Used to convert Silver Birch
    e.add("revolution:convertable_silver_birch_logs", ["regions_unexplored:silver_birch_log", "regions_unexplored:silver_birch_wood"])

    // Used to convert Xychorium
    e.add("revolution:blue_material", ["#forge:dyes/blue", "#forge:dyes/cyan", "#forge:dyes/light_blue", "quark:blue_corundum_cluster", "quark:indigo_corundum_cluster"])
    e.add("revolution:green_material", ["#forge:dyes/green", "#forge:dyes/lime", "quark:green_corundum_cluster"])
    e.add("revolution:white_material", ["#forge:dyes/white", "#forge:dyes/light_gray", "quark:white_corundum_cluster"])


    // Used for unique recipes
    e.add("revolution:certus", ["ae2:certus_quartz_crystal", "ae2:certus_quartz_dust"])
    e.add("revolution:fluix", ["ae2:fluix_crystal", "ae2:fluix_dust"])
    e.add("revolution:dense_coals", ["thermal:coal_coke", "nourished_nether:soul_coal"])
    e.add("revolution:tooth", ["alexscaves:corrodent_teeth", "mobcompack:giant_tooth", "mobcompack:giant_tooth", "upgrade_aquatic:thrasher_tooth"])

    e.add("revolution:coal_blocks", ["coal_block", "thermal:charcoal_block"])
    e.add("revolution:flesh_blocks", ["biomesoplenty:flesh", "biomesoplenty:porous_flesh"])
    e.add("revolution:limestone", ["alexscaves:limestone", "quark:limestone"])


    // Used to make Tempads
    e.add("revolution:redstone_writer", ["redstonepen:quill", "redstonepen:pen"])

    e.add("revolution:rare_cave_item", ["alexscaves:game_controller", "alexscaves:gazing_pearl", "alexscaves:immortal_embryo", "alexscaves:desolate_dagger", "alexscaves:pure_darkness", "alexscaves:heart_of_iron", "alexscaves:heavyweight", "alexscaves:amber_curiosity", "alexscaves:tectonic_shard", "alexscaves:fissile_core", "alexscaves:green_soylent"])

})



// Adds tags to machinery blocks
ServerEvents.tags("block", e => {

    // Item IO Port tags
    e.add("revolution:non_tiny_input", ["mm:item_small_input", "mm:item_input", "mm:item_large_input"])
    e.add("revolution:non_tiny_output", ["mm:item_small_output", "mm:item_output", "mm:item_large_output"])

    e.add("revolution:big_input", ["mm:item_input", "mm:item_large_input"])
    e.add("revolution:big_output", ["mm:item_output", "mm:item_large_output"])

})