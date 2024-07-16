// Changes recipes for the Angel Ring mod
ServerEvents.recipes(e => {

    // Remove default recipes
    e.remove({id: "angelring:diamond_ring"})
    e.remove({id: "angelring:angel_ring"})
    e.remove({id: "angelring:leadstone_angel_ring"})
    e.remove({id: "angelring:hardened_angel_ring"})
    e.remove({id: "angelring:reinforced_angel_ring"})
    e.remove({id: "angelring:energetic_angel_ring"})
    e.remove({id: "angelring:resonant_angel_ring"})

    // Diamond ring
    e.shaped(
     "angelring:diamond_ring",
        [
          " D ",
          "DGD",
          " D "
        ],
        {
          D: "diamond",
          G: "#forge:gears/diamond"
        }
    ).id("kubejs:diamond_ring")

    // Angel ring
    e.shaped(
     "angelring:angel_ring",
        [
          "FCF",
          "GDG",
          "GUG"
        ],
        {
          C: "#forge:gears/constantan",
          D: "angelring:diamond_ring",
          F: "#forge:feathers",
          G: "#forge:plates/gold",
          U: "alexscaves:uranium_rod"
        }
    ).id("kubejs:angel_ring")


    // Leadstone angel ring
    e.shaped(
     "angelring:leadstone_angel_ring",
        [
          " C ",
          "PRP",
          "PUP"
        ],
        {
          C: "thermal:flux_capacitor",
          P: "#forge:plates/lead",
          R: "angelring:angel_ring",
          U: "biggerreactors:uranium_ingot"
        }
    ).id("kubejs:leadstone_ring")

    // Hardened angel ring
    e.shaped(
     "angelring:hardened_angel_ring",
        [
          " C ",
          "PRP",
          "PUP"
        ],
        {
          C: ["thermal:rf_coil_augment", "thermal:rf_coil_storage_augment", "thermal:rf_coil_xfer_augment"],
          P: "#forge:plates/invar",
          R: "angelring:leadstone_angel_ring",
          U: "biggerreactors:uranium_ingot"
        }
    ).id("kubejs:hardened_ring")

    // Reinforced angel ring
    e.shaped(
     "angelring:reinforced_angel_ring",
        [
          " C ",
          "PRP",
          "PUP"
        ],
        {
          C: ["thermal:rf_coil_augment", "thermal:rf_coil_storage_augment", "thermal:rf_coil_xfer_augment"],
          P: "#forge:plates/electrum",
          R: "angelring:hardened_angel_ring",
          U: "biggerreactors:uranium_ingot"
        }
    ).id("kubejs:reinforced_ring")

    // Energetic angel ring
    e.shaped(
     "angelring:energetic_angel_ring",
        [
          " C ",
          "PRP",
          "PUP"
        ],
        {
          C: ["thermal:rf_coil_augment", "thermal:rf_coil_storage_augment", "thermal:rf_coil_xfer_augment"],
          P: "#forge:plates/signalum",
          R: "angelring:hardened_angel_ring",
          U: "biggerreactors:uranium_ingot"
        }
    ).id("kubejs:energetic_ring")

    // Resonant angel ring
    e.shaped(
     "angelring:resonant_angel_ring",
        [
          " C ",
          "PRP",
          "PUP"
        ],
        {
          C: ["thermal:rf_coil_augment", "thermal:rf_coil_storage_augment", "thermal:rf_coil_xfer_augment"],
          P: "#forge:plates/enderium",
          R: ["angelring:reinforced_angel_ring", "angelring:energetic_angel_ring"],
          U: "biggerreactors:uranium_ingot"
        }
    ).id("kubejs:resonant_ring")

})