// Removes recipes
ServerEvents.recipes(e => {

    // Aether
    e.remove({id: "aether:swet_lead"})
    e.remove({id: "aether:aether_saddle"})
    e.remove({id: "aether:swet_sticky_piston"})

    // Coconut Husk for Bowls
    // Beetroot Soup is done in qol.js
    e.remove({id: "ecologics:mushroom_stew_from_coconut_husk"})
    e.remove({id: "ecologics:rabbit_stew_from_red_mushroom_and_coconut_husk"})
    e.remove({id: "ecologics:rabbit_stew_from_brown_mushroom_and_coconut_husk"})

    e.remove({id: "undergarden:sticky_piston_from_goo_ball"})
    e.remove({id: "nourished_nether:hoglin_hide_to_leather"})

    // Misc
    e.remove({type: "crafting_shapeless", output: "bountiful:bountyboard"})
    e.remove({type: "crafting_shapeless", output: "bountiful:decree"})
    e.remove({type: "crafting_shapeless", output: "cavesanddepths:copper_button"})
    e.remove({id: "undergarden:undergarden_lead"})

})