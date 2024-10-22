// Changes recipes for Bigger Reactors content to match their new late-game tier
ServerEvents.recipes(e => {

    ///// Uranium Stuff

    // Change Uranium Shards to make an Ingot
    e.remove({id: "alexscaves:uranium_from_shard"})
    e.shaped(
     "biggerreactors:uranium_ingot",
        [
          "UUU",
          "UUU",
          "UUU"
        ],
        {
          U: "#forge:nuggets/uranium"
        }
    ).id("kubejs:uranium_ingot")

    //// Change nuke recipes to have a bit of progression
    /// Also makes the grenade and cart craftable
        // TE
    e.shaped(
     "thermal:nuke_tnt",
        [
          "USU",
          "SRS",
          "USU"
        ],
        {
          R: "alexscaves:uranium_rod",
          S: "#forge:plates/steel",
          U: "#forge:dusts/uranium"
        }
    ).id("kubejs:thermal_nuke")

    e.shapeless("2x thermal:nuke_grenade", ["thermal:nuke_tnt"]).id("kubejs:nuke_grenade")

    e.shaped(
     "thermal:nuke_tnt_minecart",
        [
          "N",
          "M"
        ],
        {
          N: "thermal:nuke_tnt",
          M: "minecart"
        }
    ).id("kubejs:nuke_cart")


        // Alex's Caves
    e.remove({id: "alexscaves:nuclear_bomb"})
    e.shaped(
     "alexscaves:nuclear_bomb",
        [
          "USU",
          "FNF",
          "USU"
        ],
        {
          F: "alexscaves:fissile_core",
          N: "thermal:nuke_tnt",
          S: "#forge:storage_blocks/steel",
          U: "alexscaves:uranium_rod"
        }
    ).id("kubejs:cave_nuke")


    ///// Reactor Stuff

    // Change Fuel Rods to use Uranium Rods
    e.remove({id: "biggerreactors:crafting/reactor/reactor_fuel_rod"})
    e.shaped(
     "biggerreactors:reactor_fuel_rod",
        [
          "AUA",
          "AGA",
          "AUA"
        ],
        {
          A: "#forge:ingots/aluminum",
          G: "#forge:ingots/graphite",
          U: "alexscaves:uranium_rod"
        }
    ).id("kubejs:fuel_rod")

    // Change Reactor Casings to better reflect real-life recipes
    e.remove({id: "biggerreactors:crafting/reactor/reactor_casing"})
    e.shaped(
      "4x biggerreactors:reactor_casing",
        [
          "SCS",
          "CGC",
          "SCS"
        ],
        {
          C: "#alexscaves:concrete",
          G: "#forge:ingots/graphite",
          S: "#forge:rods/steel"
        }
    ).id("kubejs:reactor_casing")

    // Change Reactor Coolant Manifolds so they don't conflict with Framed Glass
    e.remove({id: "biggerreactors:crafting/reactor/reactor_manifold"})
    e.shaped(
      "4x biggerreactors:reactor_manifold",
        [
          "IGI",
          "GSG",
          "IGI"
        ],
        {
          G: "#revolution:glass_viewer",
          I: "iron_ingot",
          S: ["powder_snow_bucket", "snow_block", "ecologics:snow_bricks"]
        }
    ).id("kubejs:reactor_manifold")

    // Change the Cyanite Reprocessor's recipe
    e.remove({id: "biggerreactors:crafting/cyanite_reprocessor"})
    e.shaped(
     "biggerreactors:cyanite_reprocessor",
        [
          "RFR",
          "PMP",
          "RCR"
        ],
        {
          C: "#forge:ingots/cyanite",
          F: "#forge:dusts/fluix",
          M: "mm:machine_core",
          P: "piston",
          R: "biggerreactors:reactor_casing"
        }
    ).id("kubejs:cyanite_reprocessor")

})