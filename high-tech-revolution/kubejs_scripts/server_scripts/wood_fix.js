// Lets you craft stuff with modded woods when there's only variants of each
ServerEvents.tags("item", e => {

    // Planks
    e.add("revolution:planks",
    ["ad_astra:aeronos_planks",
    "ad_astra:strophar_planks",
    "ad_astra:glacian_planks",

    "alexscaves:pewen_planks",
    "alexscaves:thornwood_planks",

    "biomesoplenty:dead_planks",
    "biomesoplenty:fir_planks",
    "biomesoplenty:hellbark_planks",
    "biomesoplenty:jacaranda_planks",
    "biomesoplenty:magic_planks",
    "biomesoplenty:mahogany_planks",
    "biomesoplenty:palm_planks",
    "biomesoplenty:redwood_planks",
    "biomesoplenty:umbran_planks",
    "biomesoplenty:willow_planks",

    "ecologics:coconut_planks",
    "ecologics:walnut_planks",
    "ecologics:azalea_planks",
    "ecologics:flowering_azalea_planks",

    "outer_end:azure_planks",

    "thermal:rubberwood_planks",

    "regions_unexplored:alpha_planks",
    "regions_unexplored:baobab_planks",
    "regions_unexplored:blackwood_planks",
    "regions_unexplored:blue_bioshroom_planks",
    "regions_unexplored:brimwood_planks",
    "regions_unexplored:cobalt_planks",
    "regions_unexplored:cypress_planks",
    "regions_unexplored:dead_planks",
    "regions_unexplored:eucalyptus_planks",
    "regions_unexplored:green_bioshroom_planks",
    "regions_unexplored:joshua_planks",
    "regions_unexplored:kapok_planks",
    "regions_unexplored:larch_planks",
    "regions_unexplored:magnolia_planks",
    "regions_unexplored:maple_planks",
    "regions_unexplored:mauve_planks",
    "regions_unexplored:palm_planks",
    "regions_unexplored:pine_planks",
    "regions_unexplored:pink_bioshroom_planks",
    "regions_unexplored:redwood_planks",
    "regions_unexplored:socotra_planks",
    "regions_unexplored:willow_planks",
    "regions_unexplored:yellow_bioshroom_planks",
    "regions_unexplored:red_painted_planks",
    "regions_unexplored:orange_painted_planks",
    "regions_unexplored:yellow_painted_planks",
    "regions_unexplored:lime_painted_planks",
    "regions_unexplored:green_painted_planks",
    "regions_unexplored:cyan_painted_planks",
    "regions_unexplored:light_blue_painted_planks",
    "regions_unexplored:blue_painted_planks",
    "regions_unexplored:purple_painted_planks",
    "regions_unexplored:magenta_painted_planks",
    "regions_unexplored:pink_painted_planks",
    "regions_unexplored:brown_painted_planks",
    "regions_unexplored:white_painted_planks",
    "regions_unexplored:light_gray_painted_planks",
    "regions_unexplored:gray_painted_planks",
    "regions_unexplored:black_painted_planks"
    ])

    Ingredient.of("#revolution:planks").itemIds.forEach(id => {
        if(id != "ad_astra:aeronos_planks" && id != "ad_astra:strophar_planks")
        e.add("revolution:ladder_planks", id)
    })

})



// Add recipes that use the above tags
// Also fixes a few other recipes
ServerEvents.recipes(e => {
    
    // Chests with Planks
    e.shaped(
      "chest",
        [
          "PPP",
          "P P",
          "PPP"
        ],
        {
          P: "#revolution:planks"
        }
    ).id("kubejs:chest")

    e.shaped(
      "woodworks:birch_chest",
        [
          "PPP",
          "P P",
          "PPP"
        ],
        {
          P: "silverbirch:silver_birch_planks"
        }
    ).id("kubejs:silver_birch_chest")

    //// Fix the missing recipes for Quark's blocks
    /// Chests
    e.shaped(
      "quark:ancient_chest",
        [
          "PPP",
          "P P",
          "PPP"
        ],
        {
          P: "quark:ancient_planks"
        }
    ).id("kubejs:ashen_chest")

    e.shaped(
      "quark:azalea_chest",
        [
          "PPP",
          "P P",
          "PPP"
        ],
        {
          P: "quark:azalea_planks"
        }
    ).id("kubejs:azalea_chest")

    e.shaped(
      "quark:blossom_chest",
        [
          "PPP",
          "P P",
          "PPP"
        ],
        {
          P: "quark:blossom_planks"
        }
    ).id("kubejs:trumpet_chest")

    e.shapeless("quark:ancient_trapped_chest", ["quark:ancient_chest", "tripwire_hook"]).id("kubejs:trapped_ashen_chest")
    e.shapeless("quark:azalea_trapped_chest", ["quark:azalea_chest", "tripwire_hook"]).id("kubejs:trapped_azalea_chest")
    e.shapeless("quark:blossom_trapped_chest", ["quark:blossom_chest", "tripwire_hook"]).id("kubejs:trapped_trumpet_chest")

    /// Ladders
    e.shaped(
      "4x quark:ancient_ladder",
        [
          "S S",
          "SPS",
          "S S"
        ],
        {
          P: "quark:ancient_planks",
          S: "#forge:rods/wooden"
        }
    ).id("kubejs:ashen_ladder")

    e.shaped(
      "4x quark:azalea_ladder",
        [
          "S S",
          "SPS",
          "S S"
        ],
        {
          P: "quark:azalea_planks",
          S: "#forge:rods/wooden"
        }
    ).id("kubejs:azalea_ladder")

    e.shaped(
      "4x quark:blossom_ladder",
        [
          "S S",
          "SPS",
          "S S"
        ],
        {
          P: "quark:blossom_planks",
          S: "#forge:rods/wooden"
        }
    ).id("kubejs:blossom_ladder")

    /// Bookshelves
    e.shaped(
      "quark:ancient_bookshelf",
        [
          "PPP",
          "BBB",
          "PPP"
        ],
        {
          B: "book",
          P: "quark:ancient_planks"
        }
    ).id("kubejs:ashen_bookshelf")

    e.shaped(
      "quark:azalea_bookshelf",
        [
          "PPP",
          "BBB",
          "PPP"
        ],
        {
          B: "book",
          P: "quark:azalea_planks"
        }
    ).id("kubejs:azalea_bookshelf")

    e.shaped(
      "quark:blossom_bookshelf",
        [
          "PPP",
          "BBB",
          "PPP"
        ],
        {
          B: "book",
          P: "quark:blossom_planks"
        }
    ).id("kubejs:trumpet_bookshelf")



/*  Damn, this doesn't work :'c
    /// Sawmill recipe
    // Should add a Sawmill recipe for Quark's ladders
    e.custom({
      type: "woodworks:sawmill",
      ingredients: [
        { item: "quark:ancient_planks" }
      ],
      result: [
        { item: "quark:ancient_ladder" }
    ]
*/

    // Make ladders from modded planks
    e.shaped(
      "4x ladder",
        [
          "S S",
          "SPS",
          "S S"
        ],
        {
          P: "#revolution:ladder_planks",
          S: "#forge:rods/wooden"
        }
    ).id("kubejs:ladder")

    // Make Silver Birch's Hollow Logs copy Quark's recipes
    e.remove({id: "silverbirch:hollow_log"})
    e.shaped(
      "4x silverbirch:hollow_log",
        [
          " S ",
          "S S",
          " S "
        ],
        {
          S: "#revolution:silver_birch_logs"
        }
    ).id("kubejs:silver_birch_hollow_log")

})