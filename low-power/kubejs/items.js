// Register Sawdust-related items
onEvent('item.registry', event => {
		event.create('glue')
		event.create('sawdust_clump')
		event.create('compressed_sawdust')
		event.create('mdf').displayName('MDF Board').burnTime(200)
})