// Adds custom items
StartupEvents.registry("item", event => {

		// Sawdust
		event.create("glue")
		event.create("sawdust")
		event.create("compressed_sawdust").burnTime(200)
		event.create("mdf").tag("minecraft:planks").burnTime(400).displayName("MDF Board")

		// Scrap
		event.create("copper_scrap")
		event.create("small_copper_scrap")
		event.create("iron_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("small_iron_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("gold_scrap")
		event.create("small_gold_scrap")
		event.create("diamond_scrap")
		event.create("small_diamond_scrap")
		event.create("silver_scrap")
		event.create("small_silver_scrap")

		event.create("fiery_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("small_fiery_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("ironwood_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("small_ironwood_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("knightmetal_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("small_knightmetal_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("steeleaf_scrap").tag("alexscaves:ferromagnetic_items")
		event.create("small_steeleaf_scrap").tag("alexscaves:ferromagnetic_items")

		// Misc
		event.create("stone_stick").tag("forge:rods").tag("forge:rods/stone").tag("forge:rods/wooden")
		event.create("disc_residue")
		event.create("portal_catalyst").tag("twilightforest:portal/activator").displayName("Twilight Portal Catalyst").rarity("uncommon").maxStackSize(1).glow(true)

})