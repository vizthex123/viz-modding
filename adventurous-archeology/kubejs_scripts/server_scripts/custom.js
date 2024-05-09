// Adds recipes to my custom items
ServerEvents.recipes(e => {

    // Craft the Portal Catalyst
    e.shaped(
        "kubejs:portal_catalyst",
        [
          " G ",
          "GDG",
          " G "
        ],
        {
          D: "#forge:gems/diamond",
          G: "#modpack:green_minerals"
        }
      ).id("kubejs:portal_catalyst")

    // Smelt Music Discs into Disc Residue into Coal
    e.smelting("kubejs:disc_residue", "#minecraft:music_discs", 4).id("kubejs:smelt_music_disc")
    e.blasting("kubejs:disc_residue", "#minecraft:music_discs", 4).id("kubejs:blast_music_disc")

    // Craft Disc Residue into Coal
    e.shapeless("16x coal", ["kubejs:disc_residue", "kubejs:disc_residue"]).id("kubejs:disc_residue_to_coal")

    // Craft Stone Sticks
    e.shaped(
        "4x kubejs:stone_stick",
        [
          "S",
          "S"
        ],
        {
          S: "#minecraft:stone_crafting_materials"
        }
      ).id("kubejs:stone_sticks")

})

ServerEvents.tags("item", e => {

    // Portal catalyst change
    e.remove("twilightforest:portal/activator", ["#forge:gems/diamond"])
    e.add("twilightforest:portal/activator", ["kubejs:portal_catalyst"])

})