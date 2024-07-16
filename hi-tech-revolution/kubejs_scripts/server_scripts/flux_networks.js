// Changes recipes for Flux Networks
ServerEvents.recipes(e => {
    // Flux Controller
    e.remove({id: "fluxnetworks:fluxcontroller"})
    e.shaped(
      "fluxnetworks:flux_controller",
        [
          "FCF",
          "C C",
          "FBF"
        ],
        {
          B: "fluxnetworks:flux_block",
          C: "fluxnetworks:flux_core",
          F: "fluxnetworks:flux_dust"
        }
    ).id("kubejs:flux_controller")

    ///// Flux Storages
    e.remove({id: "fluxnetworks:basicfluxstorage"})
    e.remove({id: "fluxnetworks:herculeanfluxstorage"})
    e.remove({id: "fluxnetworks:gargantuanfluxstorage"})

    // Basic
    e.shaped(
      "fluxnetworks:basic_flux_storage",
        [
          "CFC",
          "G G",
          "CFC"
        ],
        {
          C: "fluxnetworks:flux_core",
          F: "fluxnetworks:flux_dust",
          G: "#forge:glass_panes"
        }
    ).id("kubejs:basic_flux_storage")

    // Herculean
    e.shaped(
      "fluxnetworks:basic_flux_storage",
        [
          "BBB",
          "BCB",
          "BBB"
        ],
        {
          B: "fluxnetworks:basic_flux_storage",
          C: "fluxnetworks:flux_core"
        }
    ).id("kubejs:herculean_flux_storage")

    // Gargantuan
    e.shaped(
      "fluxnetworks:gargantuan_flux_storage",
        [
          "HHH",
          "HBH",
          "HHH"
        ],
        {
          H: "fluxnetworks:herculean_flux_storage",
          B: "fluxnetworks:flux_block"
        }
    ).id("kubejs:gargantuan_flux_storage")

    // Tesseract
    e.remove({output: "tesseract:tesseract"})
    e.shaped(
      "tesseract:tesseract",
        [
          "EHE",
          "HMH",
          "EHE"
        ],
        {
          E: "thermal:enderium_ingot",
          H: "#thermal:glass/hardened",
          M: "thermal:machine_frame" // Make this a Telecore in Expert Mode
        }
    ).id("kubejs:tesseract")

})