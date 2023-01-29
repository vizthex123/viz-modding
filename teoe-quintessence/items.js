// If anything breaks, it's Lady Lexxie's fault (on the KubeJS Discord) for making me move everything into 1 file
onEvent('item.registry', event => {
		// Sawdust
		event.create('glue')
		event.create('sawdust_clump')
		event.create('compressed_sawdust')
		event.create('mdf').burnTime(200).displayName('MDF Board') // rip cardboard box :c
		
		// Scrap
		event.create('copper_scrap')
		event.create('small_copper_scrap')
		event.create('iron_scrap')
		event.create('small_iron_scrap')
		event.create('gold_scrap')
		event.create('small_gold_scrap')
		event.create('diamond_scrap')
		event.create('small_diamond_scrap')
		event.create('lumium_scrap')
		event.create('small_lumium_scrap')
		event.create('fiery_scrap')
		event.create('small_fiery_scrap')
		event.create('ironwood_scrap')
		event.create('small_ironwood_scrap')
		event.create('knightmetal_scrap')
		event.create('small_knightmetal_scrap')
		
		// Ores
		event.create('crushed_cobalt')
		event.create('crushed_platinum')
		event.create('crushed_pendorite')
		event.create('iridium').rarity('rare').displayName('Iridium Chunks') 
		
		// Misc
		event.create('quicklime')
		event.create('quintessence').rarity('epic').maxStackSize(1).glow(true)
		event.create('iridium_cell').rarity('rare').burnTime(12800).maxStackSize(4).displayName('Iridium Fuel Cell')
		event.create('dragon_egg').texture('kubejs:item/dragon_egg').rarity('rare').maxStackSize(1).displayName('Artificial Dragon Egg')
		event.create('portal_catalyst').displayName('Twilight Portal Catalyst').rarity('uncommon').maxStackSize(1).glow(true)
})