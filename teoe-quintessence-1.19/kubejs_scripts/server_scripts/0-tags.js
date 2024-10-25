// Manages tags for items, blocks, and fluids
ServerEvents.tags("item", e => {

    // Add items to Forestry's Backpacks
    // #forestry:backpack/allow/TYPE

    // Hide some stuff from REI with the tag
    e.add("c:hidden_from_recipe_viewers",
    ["quark:crate", "quark:magnet",
    "#twilightforest:wip", "twilightforest:adherent_spawn_egg", "twilightforest:harbinger_cube_spawn_egg", "twilightforest:roving_cube_spawn_egg"
    ])




})