// priority: 0

StartupEvents.registry('item', event => {
	event.create('biomass')
	event.create('copper_scrap')
	event.create('small_copper_scrap')
	event.create('scrap')
	event.create('small_scrap')
	event.create('gold_scrap')
	event.create('small_gold_scrap')
	event.create('diamond_scrap')
	event.create('small_diamond_scrap')
})

StartupEvents.registry('block', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')
})