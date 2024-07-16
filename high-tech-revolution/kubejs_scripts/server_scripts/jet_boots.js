// Changes recipes for Jet Boots' items
ServerEvents.recipes(e => {

    // Recipe removals
    e.remove({output: "jetboots:jetboots_template"})
    e.remove({id: "jetboots:jetboots_template_smithing"})

    e.remove({id: "jetboots:engine_upgrade"})
    e.remove({id: "jetboots:thruster_upgrade"})
    e.remove({id: "jetboots:underwater_upgrade"})

    e.remove({id: "jetboots:guardian_helmet"})
    e.remove({id: "jetboots:guardian_jacket"})
    e.remove({id: "jetboots:guardian_pants"})
    e.remove({id: "jetboots:guardian_sword"})

    // Armour Core
    e.remove({id: "jetboots:armor_core"})
    e.shaped(
      "jetboots:armor_core",
        [
          " I ",
          "ISI",
          " I "
        ],
        {
          I: "jetboots:obsidian_infused_gold",
          S: "thermal:redstone_servo"
        }
    ).id("kubejs:armour_core")

    // Shock Absorbor Upgrade
    e.remove({id: "jetboots:shock_absorber_upgrade"})
    e.shaped(
      "jetboots:shock_absorber_upgrade",
        [
          " R ",
          "WPW",
          "W W"
        ],
        {
          P: "systeams:boiler_pipe",
          R: "#forge:rods/steel", 
          W: "#thermal:rockwool"
        }
    ).id("kubejs:shock_absorber_upgrade")

    // Rocket Boots
    e.remove({id: "jetboots:rocket_boots"})
    e.shaped(
      "jetboots:rocket_boots",
        [
          " D ",
          "IAI",
          "IBI"
        ],
        {
          A: "jetboots:armor_core",
          B: ["chainmail_boots", "leathered_boots:leathered_chainmail_boots", "iron_boots", "leathered_boots:leathered_iron_boots"],
          D: "diamond",
          I: "jetboots:obsidian_infused_gold"
        }
    ).id("kubejs:rocket_boots")

    // Jet Boots
    e.remove({id: "jetboots:jetboots"})
    e.shaped(
      "jetboots:jetboots",
        [
          "CCC",
          "IAI",
          "IBI"
        ],
        {
          A: "jetboots:armor_core",
          B: "jetboots:rocket_boots",
          C: "thermal:rf_coil",
          I: "thermal:signalum_ingot"
        }
    ).id("kubejs:jet_boots")



    // Remove upgrade recipes
    e.remove({id: "jetboots:engine_upgrade_smithing"})
    e.remove({id: "jetboots:shock_absorber_upgrade_rocket_smithing"})
    e.remove({id: "jetboots:shock_absorber_upgrade_smithing"})
    e.remove({id: "jetboots:thruster_upgrade_smithing"})
    e.remove({id: "jetboots:underwater_upgrade_smithing"})

    e.remove({id: "jetboots:jei.jetboots_upgrade.item.jetboots.engine_upgrade"})
    e.remove({id: "jetboots:jei.jetboots_upgrade.item.jetboots.muffled_upgrade"})
    e.remove({id: "jetboots:jei.jetboots_upgrade.item.jetboots.shock_absorber_upgrade"})
    e.remove({id: "jetboots:jei.jetboots_upgrade.item.jetboots.thruster_upgrade"})
    e.remove({id: "jetboots:jei.jetboots_upgrade.item.jetboots.underwater_upgrade"})

})