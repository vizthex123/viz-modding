// Adds miscellanous recipes
ServerEvents.recipes(e => {

    // Make Pneumatic Tubes use Bronze (like they should)
    e.remove({id: "projectred_expansion:pneumatic_tube"})
    e.shaped(
      "8x projectred_expansion:pneumatic_tube",
        [
          "BGB",
          "BGB",
          "BGB"
        ],
        {
          B: "#forge:ingots/bronze",
          G: "#forge:glass_panes"
        }
    ).id("kubejs:pneumatic_tube")

    // Ravager Hide -> Tough Hide
    e.shapeless("4x alexscaves:tough_hide", ["quark:ravager_hide"]).id("kubejs:ravager_hide_to_tough_hide")

    // Nake Slimeballs from Moss
    e.shaped(
      "slime_ball",
        [
          "MMM",
          "MFM",
          "MMM"
        ],
        {
          F: ["alexscaves:fertilizer", "thermal:phytogrow"],
          M: "quark:moss_paste"
        }
    ).id("kubejs:slimeball_with_moss_paste")

    // Add a recipe for the Bundle
    e.shaped(
      "bundle",
        [
          "SLS",
          "L L",
          "LLL"
        ],
        {
          L: "#forge:leather",
          S: "#forge:string"
        }
    ).id("kubejs:bundle")

    // Changed the Slotted Chest to only use Wooden Chests
    e.remove({id: "essentials:slotted_chest"})
    e.shaped(
      "essentials:slotted_chest",
        [
          "SSS",
          "TCT",
          "SSS"
        ],
        {
          C: "#forge:chests/wooden",
          S: "#minecraft:wooden_slabs",
          T: "#minecraft:wooden_trapdoors"
        }
    ).id("kubejs:slotted_chest")

    // Change the Disenchanter's recipe
    e.remove({id: "disenchanting:disenchanter"})
    e.shaped(
      "disenchanting:disenchanter",
        [
          " A ",
          "GEG",
          "XXX"
        ],
        {
          A: "#minecraft:anvil",
          E: "enchanting_table",
          G: "gold_ingot",
          X: "#revolution:xychorized_obsidian"
        }
    ).id("kubejs:disenchanter")

    // Incomplete Processor
    // Used to make AE2 Processors in the Combiner
    e.shaped(
      "xycraft_machines:incomplete_processor",
        [
          "GSG", // Rock and stone!
          "SFS",
          "GSG"
        ],
        {
          F: "fluxnetworks:flux_dust",
          G: "gold_nugget",
          S: "#forge:silicon"
        }
    ).id("kubejs:incomplete_processor")

    // Changed the Ranged Pump's recipe
    e.remove({id: "rangedpumps:pump"})
    e.shaped(
      "rangedpumps:pump",
        [
          " G ",
          "EPE",
          "ETE"
        ],
        {
          E: "thermal:electrum_ingot",
          G: "#forge:gears/iron",
          P: ["ad_astra:water_pump", "xycraft_machines:hydro_pump"],
          T: ["ae2:sky_stone_tank", "deepresonance:tank", "rftoolsutility:tank", "thermal:fluid_cell", "thermal:fluid_tank_minecart", "xycraft_machines:valve"]
        }
    ).id("kubejs:pump")

})