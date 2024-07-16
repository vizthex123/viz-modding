// Changes stuff from Hostile Neural Networks
ServerEvents.recipes(e => {

    // Removals
    e.remove({id: "hostilenetworks:sim_chamber"})
    e.remove({id: "hostilenetworks:loot_fabricator"})
    e.remove({id: "hostilenetworks:deep_learner"})
    e.remove({id: "hostilenetworks:framework"})
    e.remove({id: "hostilenetworks:prediction_matrix"})

    // Simulation Chamber
    e.shaped(
      "hostilenetworks:sim_chamber",
        [
          " G ",
          "SOS",
          "ICI"
        ],
        {
          C: "mm:circuitry",
          G: "#forge:glass_panes",
          I: "#forge:ingots/steel",
          O: "#revolution:xychorized_obsidian",
          S: "#forge:gems/sapphire"
        }
    ).id("kubejs:simulation_chamber")

    // Loot Fabricator
    e.shaped(
      "hostilenetworks:loot_fabricator",
        [
          " I ",
          "EOE",
          "RFR"
        ],
        {
          F: "thermal:machine_crafter",
          E: "ender_pearl",
          I: "#forge:ingots/steel",
          O: "#revolution:xychorized_obsidian",
          R: "#forge:gems/ruby"
        }
    ).id("kubejs:loot_fabricator")

    // Deep Learner
    e.shaped(
      "hostilenetworks:deep_learner",
        [
          "FOF",
          "OGO",
          "FOF"
        ],
        {
          F: "#revolution:fluix",
          G: "#forge:glass_panes",
          O: "#revolution:xychorized_obsidian"
        }
    ).id("kubejs:deep_learner")

    // Data Model
    e.shaped(
      "hostilenetworks:blank_data_model",
        [
          "RXR",
          "XCX",
          "RXR"
        ],
        {
          C: "clay",
          R: "thermal:cured_rubber",
          X: "xycraft_world:xychorium_gem_blue"
        }
    ).id("kubejs:data_model")

    e.shaped(
      "8x hostilenetworks:blank_data_model",
        [
          "POP",
          "OCO",
          "POP"
        ],
        {
          C: "clay",
          P: "alexscaves:polymer_plate",
          O: ["regions_unexplored:cobalt_obsidian", "xycraft_override:crying_obsidian_blue"]
        }
    ).id("kubejs:polymer_data_model")

    // Prediction Matrix
    e.shaped(
      "8x hostilenetworks:prediction_matrix",
        [
          " EL",
          "ECE",
          "DE "
        ],
        {
          C: "clay_ball",
          E: "#forge:glass_panes",
          D: "xycraft_world:xychorium_gem_dark",
          L: "xycraft_world:xychorium_gem_light"
        }
    ).id("kubejs:prediction_matrix")

    e.shaped(
      "32x hostilenetworks:prediction_matrix",
        [
          " EL",
          "ECE",
          "DE "
        ],
        {
          C: "clay_ball",
          E: "alexscaves:polymer_plate",
          D: "xycraft_world:xychorium_gem_dark",
          L: "xycraft_world:xychorium_gem_light"
        }
    ).id("kubejs:polymer_prediction_matrix")

})