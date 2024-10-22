// Changes all the auto-crafters to have a set order
ServerEvents.recipes(e => {

    // Quark's crafter uses the default recipe

    // Fabricator
    e.remove("xycraft_machines:shaped/fabricator")
    e.shaped(
      "xycraft_machines:fabricator",
        [
          "XCX",
          "KMK",
          "XWX"
        ],
        {
          C: "quark:crafter",
          K: "#xycraft:building/kivi",
          M: "xycraft_machines:machine_base",
          W: "#forge:chests",
          X: "xycraft_world:xychorium_gem_blue"
        }
    ).id("kubejs:fabricator")

    // Sequential Fabricator
    e.remove("thermal:machine_crafter")
    e.shaped(
      "thermal:machine_crafter",
        [
          " F ",
          "TMT",
          "GRG"
        ],
        {
          F: "xycraft_machines:fabricator",
          M: "thermal:machine_frame",
          G: "#forge:gears/copper",
          R: "thermal:rf_coil",
          T: "#forge:ingots/tin"
        }
    ).id("kubejs:sequential_fabricator")

    // RFTools' Crafters
    e.remove("rftoolsutility:crafter1")
    e.remove("rftoolsutility:crafter2")
    e.remove("rftoolsutility:crafter3")
    e.shaped(
      "rftoolsutility:crafter1",
        [
          " F ",
          "RMR",
          "CSC"
        ],
        {
          F: "xycraft_machines:fabricator",
          C: "#forge:chests",
          M: "rftoolsbase:machine_frame",
          R: "redstone_torch",
          S: "thermal:machine_crafter"
        }
    ).id("kubejs:crafter")

    e.shapeless("rftoolsutility:crafter2", ["rftoolsutility:crafter1", "projectred_expansion:project_bench"]).id("kubejs:crafter2")
    e.shapeless("rftoolsutility:crafter3", ["rftoolsutility:crafter2", "projectred_expansion:project_bench", "projectred_expansion:project_bench"]).id("kubejs:crafter3")

/*
    e.shaped(
      "rftoolsutility:crafter2",
        [
          " T ",
          "PCP",
          " T "
        ],
        {
          C: "rftoolsutility:crafter1",
          P: "projectred_expansion:project_bench",
          T: "xycraft_world:aluminum_torch"
        }
    ).id("kubejs:crafter2")

    e.shaped(
      "rftoolsutility:crafter3",
        [
          " T ",
          "PCP",
          " T "
        ],
        {
          C: "rftoolsutility:crafter2",
          P: "projectred_expansion:project_bench",
          T: "xycraft_world:aluminum_torch"
        }
    ).id("kubejs:crafter3")
*/
})