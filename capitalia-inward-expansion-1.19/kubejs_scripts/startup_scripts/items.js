// Adds custom items
StartupEvents.registry("item", event => {

    // Scientific Dossiers
    event.create("science").displayName("Unwritten Scroll")
    event.create("science_stone").displayName("Scientific Tablet: Stone Research")
    event.create("science_brass").displayName("Scientific Scroll: Brass Research")
    event.create("science_iron").displayName("Scientific Dossier: Iron Research")
    event.create("science_industrial").displayName("Scientific Dossier: Industrial Research").rarity("uncommon")
    event.create("science_information").displayName("Scientific Data Pad: Information Research").rarity("rare")
    event.create("science_atomic").displayName("Scientific Hologram: Atomic Research").rarity("epic")

    // Sawdust
    event.create("glue")
    event.create("sawdust")
    event.create("sawdust_clump")
    event.create("compressed_sawdust")
    event.create("mdf").displayName("MDF Board").tag("planks").burnTime(200)

    // Scrap
    event.create("copper_scrap")
    event.create("small_copper_scrap")
    event.create("iron_scrap")
    event.create("small_iron_scrap")
    event.create("tiny_iron_scrap").tag("forge:nuggets/iron")
    event.create("gold_scrap")
    event.create("small_gold_scrap")
    event.create("tiny_gold_scrap").tag("forge:nuggets/gold")
    event.create("diamond_scrap")
    event.create("small_diamond_scrap")

    // Project Expansion
    // Organized by progression order
    event.create("shaft_segment").rarity("uncommon")
    event.create("shaft").rarity("uncommon")
    event.create("bits").displayName("Drill Bits").rarity("uncommon")
    event.create("head").displayName("Drill Head").rarity("rare")
    event.create("scaffold").rarity("rare")
    event.create("supports").rarity("epic")
    event.create("foundation").rarity("epic")
    event.create("worldbreaker_drill").rarity("epic").maxStackSize(1)

    // Misc
    event.create("fibers")
    event.create("pig_hide").tag("forge:leather")
    event.create("sheepskin").tag("forge:leather")
    event.create("shredded_hide")
    event.create("parchment").tag("expansion:paper").tag("lightmanscurrency:ticket_material").tag("lightmanscurrency:ticket_material/paper")
    event.create("quicklime")
    event.create("prestige_chit").rarity("rare")
    event.create("prestige_scrip").rarity("epic")
    event.create("seller").displayName("Sales Token").rarity("uncommon")

})