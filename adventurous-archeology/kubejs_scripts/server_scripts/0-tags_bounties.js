// Adds tags to items used in Bounties
// Everything is grouped by mod to make it more readable
ServerEvents.tags("item", e => {

    // Amber
    // Curiosity is separate since it's rarer
    e.add("modpack:amber", ["aether:golden_amber", "snifferent:amber"])

    // Coral
    // Gotta try and make this more efficient soon™
    e.add("modpack:coral", ["#upgrade_aquatic:brain_corals", "#upgrade_aquatic:bubble_corals", "#upgrade_aquatic:fire_corals", "#upgrade_aquatic:horn_corals", "#upgrade_aquatic:tube_corals",
    "#upgrade_aquatic:dead_brain_corals", "#upgrade_aquatic:dead_bubble_corals", "#upgrade_aquatic:dead_fire_corals", "#upgrade_aquatic:dead_horn_corals", "#upgrade_aquatic:dead_tube_corals",
    "#upgrade_aquatic:acan_corals", "#upgrade_aquatic:branch_corals", "#upgrade_aquatic:chrome_corals", "#upgrade_aquatic:finger_corals", "#upgrade_aquatic:moss_corals", "#upgrade_aquatic:petal_corals", "#upgrade_aquatic:pillow_corals", "#upgrade_aquatic:rock_corals", "#upgrade_aquatic:silk_corals", "#upgrade_aquatic:star_corals", "#upgrade_aquatic:prismarine_corals", "#upgrade_aquatic:elder_prismarine_corals"])

    e.add("modpack:coral_blocks", ["brain_coral_block", "bubble_coral_block", "fire_coral_block", "horn_coral_block", "tube_coral_block",
    "dead_brain_coral_block", "dead_bubble_coral_block", "dead_fire_coral_block", "dead_horn_coral_block", "dead_tube_coral_block",
    "upgrade_aquatic:acan_coral_block", "upgrade_aquatic:branch_coral_block", "upgrade_aquatic:chrome_coral_block", "upgrade_aquatic:finger_coral_block", "upgrade_aquatic:moss_coral_block", "upgrade_aquatic:petal_coral_block", "upgrade_aquatic:pillow_coral_block", "upgrade_aquatic:rock_coral_block", "upgrade_aquatic:silk_coral_block", "upgrade_aquatic:star_coral_block",
    "upgrade_aquatic:dead_acan_coral_block", "upgrade_aquatic:dead_branch_coral_block", "upgrade_aquatic:dead_chrome_coral_block", "upgrade_aquatic:dead_finger_coral_block", "upgrade_aquatic:dead_moss_coral_block", "upgrade_aquatic:dead_petal_coral_block", "upgrade_aquatic:dead_pillow_coral_block", "upgrade_aquatic:dead_rock_coral_block", "upgrade_aquatic:dead_silk_coral_block", "upgrade_aquatic:dead_star_coral_block"])

    // Corundum
    // Blocks use the built-in tag
    e.add("modpack:corundum", ["quark:black_corundum_cluster", "quark:blue_corundum_cluster", "quark:green_corundum_cluster", "quark:indigo_corundum_cluster", "quark:orange_corundum_cluster", "quark:red_corundum_cluster", "quark:violet_corundum_cluster", "quark:white_corundum_cluster", "quark:yellow_corundum_cluster"])

    // Minecarts
    e.add("modpack:minecarts", ["minecraft:chest_minecart", "minecraft:furnace_minecart", "minecraft:hopper_minecart", "minecraft:minecart", "minecraft:tnt_minecart", "supplementaries:dispenser_minecart"])

    // Sculk Bones
    e.add("modpack:sculk_bones", ["deeperdarker:sculk_bone", "philipsruins:sculk_bone"])

})