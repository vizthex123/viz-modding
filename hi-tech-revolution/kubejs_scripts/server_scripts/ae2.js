// Changes recipes for stuff from AE2
ServerEvents.recipes(e => {

    // Upggrade Energy Acceptor into a Controller
    // Moved it to the Amalgamation Station
    e.remove({id: "ae2:network/crafting/molecular_assembler"})
    e.shaped(
        "ae2:molecular_assembler",
        [
          "IQI",
          "ACF",
          "IQI"
        ],
        {
          A: "ae2:annihilation_core",
          F: "ae2:formation_core",
          C: "xycraft_machines:fabricator",
          I: "#forge:ingots/iron",
          Q: "ae2:quartz_glass"
        }
    ).id("kubejs:molecular_assembler")

    // Upggrade Energy Acceptor into a Controller
    // Moved it to the Amalgamation Station
    /*
    e.shaped(
        "ae2:controller",
        [
          "SFS",
          "FPF",
          "SES"
        ],
        {
          E: "ae2:energy_acceptor",
          F: "ae2:fluix_crystal",
          P: "ae2:engineering_processor",
          S: "ae2:smooth_sky_stone_block"
        }
    ).id("kubejs:acceptor_upgrade")
    */


    // Remove the default cable recipes since QoL recipes doesn't do so
    e.remove({id: "ae2:network/cables/glass_white"})
    e.remove({id: "ae2:network/cables/glass_orange"})
    e.remove({id: "ae2:network/cables/glass_magenta"})
    e.remove({id: "ae2:network/cables/glass_light_blue"})
    e.remove({id: "ae2:network/cables/glass_yellow"})
    e.remove({id: "ae2:network/cables/glass_lime"})
    e.remove({id: "ae2:network/cables/glass_pink"})
    e.remove({id: "ae2:network/cables/glass_gray"})
    e.remove({id: "ae2:network/cables/glass_light_gray"})
    e.remove({id: "ae2:network/cables/glass_cyan"})
    e.remove({id: "ae2:network/cables/glass_purple"})
    e.remove({id: "ae2:network/cables/glass_blue"})
    e.remove({id: "ae2:network/cables/glass_brown"})
    e.remove({id: "ae2:network/cables/glass_green"})
    e.remove({id: "ae2:network/cables/glass_red"})
    e.remove({id: "ae2:network/cables/glass_black"})


    e.remove({id: "ae2:network/cables/covered_white"})
    e.remove({id: "ae2:network/cables/covered_orange"})
    e.remove({id: "ae2:network/cables/covered_magenta"})
    e.remove({id: "ae2:network/cables/covered_light_blue"})
    e.remove({id: "ae2:network/cables/covered_yellow"})
    e.remove({id: "ae2:network/cables/covered_lime"})
    e.remove({id: "ae2:network/cables/covered_pink"})
    e.remove({id: "ae2:network/cables/covered_gray"})
    e.remove({id: "ae2:network/cables/covered_light_gray"})
    e.remove({id: "ae2:network/cables/covered_cyan"})
    e.remove({id: "ae2:network/cables/covered_purple"})
    e.remove({id: "ae2:network/cables/covered_blue"})
    e.remove({id: "ae2:network/cables/covered_brown"})
    e.remove({id: "ae2:network/cables/covered_green"})
    e.remove({id: "ae2:network/cables/covered_red"})
    e.remove({id: "ae2:network/cables/covered_black"})


    e.remove({id: "ae2:network/cables/smart_white"})
    e.remove({id: "ae2:network/cables/smart_orange"})
    e.remove({id: "ae2:network/cables/smart_magenta"})
    e.remove({id: "ae2:network/cables/smart_light_blue"})
    e.remove({id: "ae2:network/cables/smart_yellow"})
    e.remove({id: "ae2:network/cables/smart_lime"})
    e.remove({id: "ae2:network/cables/smart_pink"})
    e.remove({id: "ae2:network/cables/smart_gray"})
    e.remove({id: "ae2:network/cables/smart_light_gray"})
    e.remove({id: "ae2:network/cables/smart_cyan"})
    e.remove({id: "ae2:network/cables/smart_purple"})
    e.remove({id: "ae2:network/cables/smart_blue"})
    e.remove({id: "ae2:network/cables/smart_brown"})
    e.remove({id: "ae2:network/cables/smart_green"})
    e.remove({id: "ae2:network/cables/smart_red"})
    e.remove({id: "ae2:network/cables/smart_black"})


    e.remove({id: "ae2:network/cables/dense_covered_white"})
    e.remove({id: "ae2:network/cables/dense_covered_orange"})
    e.remove({id: "ae2:network/cables/dense_covered_magenta"})
    e.remove({id: "ae2:network/cables/dense_covered_light_blue"})
    e.remove({id: "ae2:network/cables/dense_covered_yellow"})
    e.remove({id: "ae2:network/cables/dense_covered_lime"})
    e.remove({id: "ae2:network/cables/dense_covered_pink"})
    e.remove({id: "ae2:network/cables/dense_covered_gray"})
    e.remove({id: "ae2:network/cables/dense_covered_light_gray"})
    e.remove({id: "ae2:network/cables/dense_covered_cyan"})
    e.remove({id: "ae2:network/cables/dense_covered_purple"})
    e.remove({id: "ae2:network/cables/dense_covered_blue"})
    e.remove({id: "ae2:network/cables/dense_covered_brown"})
    e.remove({id: "ae2:network/cables/dense_covered_green"})
    e.remove({id: "ae2:network/cables/dense_covered_red"})
    e.remove({id: "ae2:network/cables/dense_covered_black"})

    e.remove({id: "ae2:network/cables/dense_smart_white"})
    e.remove({id: "ae2:network/cables/dense_smart_orange"})
    e.remove({id: "ae2:network/cables/dense_smart_magenta"})
    e.remove({id: "ae2:network/cables/dense_smart_light_blue"})
    e.remove({id: "ae2:network/cables/dense_smart_yellow"})
    e.remove({id: "ae2:network/cables/dense_smart_lime"})
    e.remove({id: "ae2:network/cables/dense_smart_pink"})
    e.remove({id: "ae2:network/cables/dense_smart_gray"})
    e.remove({id: "ae2:network/cables/dense_smart_light_gray"})
    e.remove({id: "ae2:network/cables/dense_smart_cyan"})
    e.remove({id: "ae2:network/cables/dense_smart_purple"})
    e.remove({id: "ae2:network/cables/dense_smart_blue"})
    e.remove({id: "ae2:network/cables/dense_smart_brown"})
    e.remove({id: "ae2:network/cables/dense_smart_green"})
    e.remove({id: "ae2:network/cables/dense_smart_red"})
    e.remove({id: "ae2:network/cables/dense_smart_black"})

})