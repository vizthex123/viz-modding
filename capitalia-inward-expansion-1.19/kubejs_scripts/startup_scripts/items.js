// Adds custom items
StartupEvents.registry("item", e => {

    // Scientific Dossiers
    e.create("science").displayName("Unwritten Scroll")
    e.create("science_stone").displayName("Scientific Tablet: Stone Age")
    e.create("science_brass").displayName("Scientific Scroll: Brass Age")
    e.create("science_iron").displayName("Scientific Dossier: Iron Age")
    e.create("science_industrial").displayName("Scientific Dossier: Industrial Age").rarity("uncommon")
    e.create("science_information").displayName("Scientific Data Pad: Information Age").rarity("rare")
    e.create("science_atomic").displayName("Scientific Hologram: Atomic Age").rarity("epic")


    // Project Expansion
    // Organized by progression order
    e.create("drill_shaft_segment").rarity("uncommon")
    e.create("drill_shaft").rarity("uncommon")
    e.create("drill_bit").rarity("uncommon").rarity("uncommon")
    e.create("drill_head").rarity("rare")
    e.create("drill_scaffold").rarity("rare")
    e.create("drill_support_frame").rarity("uncommon").rarity("epic")
    e.create("drill_foundation").rarity("epic")
    e.create("worldbreaker_drill").rarity("epic").maxStackSize(1)


    // Sawdust
    e.create("glue")
    e.create("sawdust")
    e.create("sawdust_clump")
    e.create("compressed_sawdust")
    e.create("mdf").displayName("MDF Board").tag("planks").burnTime(200)


    // Scrap
    e.create("copper_scrap")
    e.create("small_copper_scrap")
    e.create("iron_scrap")
    e.create("small_iron_scrap")
    e.create("tiny_iron_scrap").tag("forge:nuggets/iron")
    e.create("gold_scrap")
    e.create("small_gold_scrap")
    e.create("tiny_gold_scrap").tag("forge:nuggets/gold")
    e.create("diamond_scrap")
    e.create("small_diamond_scrap")


    // Misc
    e.create("fibers")
    e.create("pig_hide").tag("forge:leather")
    e.create("sheepskin").tag("forge:leather")
    e.create("shredded_hide")
    e.create("parchment").tag("expansion:paper").tag("lightmanscurrency:ticket_material").tag("lightmanscurrency:ticket_material/paper")
    e.create("quicklime")
    e.create("prestige_chit").rarity("rare")
    e.create("prestige_scrip").rarity("epic")
    e.create("seller").displayName("Sales Token").rarity("uncommon")

})