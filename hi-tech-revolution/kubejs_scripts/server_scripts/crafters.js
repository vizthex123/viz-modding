// Changes all the auto-crafters to have a set order
ServerEvents.recipes(e => {

    // Change the recipe for the Fabricator
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

    // Change the recipe for the Sequential Fabricator
    e.remove("thermal:machine_crafter")
    e.shaped(
      "thermal:machine_crafter",
        [
          " C ",
          "TFT",
          "GRG"
        ],
        {
          C: "quark:crafter",
          F: "thermal:machine_frame",
          G: "#forge:gears/copper",
          R: "thermal:rf_coil",
          T: "#forge:ingots/tin"
        }
    ).id("kubejs:sequential_fabricator")

    // Change the recipe for RFTools' Crafter
    e.remove("rftoolsutility:crafter1")
    e.shaped(
      "rftoolsutility:crafter1",
        [
          " M ",
          "RSR",
          "CFC"
        ],
        {
          F: "xycraft_machines:fabricator",
          C: "#forge:chests",
          M: "rftoolsbase:machine_frame",
          R: "redstone_torch",
          S: "thermal:machine_crafter"
        }
    ).id("kubejs:crafter")

})