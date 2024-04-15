REIEvents.hide('item', event => {
	event.hide('structure_gel:building_tool')
	event.hide('structure_gel:red_gel')
	event.hide('structure_gel:blue_gel')
	event.hide('structure_gel:green_gel')
	event.hide('structure_gel:cyan_gel')
	event.hide('structure_gel:orange_gel')
	event.hide('structure_gel:yellow_gel')
	event.hide('structure_gel:data_handler')
	event.hide('structure_gel:dynamic_spawner')
	
	event.hide('tetra:shootable_dummy')
	
	event.hide('twilightforest:magic_painting')
	event.hide('twilightforest:ore_meter')
	event.hide('twilightforest:slider')
	event.hide('twilightforest:auroralized_glass')
	event.hide('twilightforest:cinder_furnace')
	event.hide('twilightforest:cinder_log')
	event.hide('twilightforest:cinder_wood')
	event.hide('twilightforest:twilight_portal_miniature_structure')
	event.hide('twilightforest:maga_courtyard_miniature_structure')
	event.hide('twilightforest:lich_tower_miniature_structure')
	
	event.hide('voidscape:thunderrock')
	event.hide('voidscape:antirock')
	event.hide('voidscape:astralrock')
	event.hide('voidscape:cracked_astralrock')
	event.hide('voidscape:null_black')
	event.hide('voidscape:null_white')
})

REIEvents.removeCategories(event => {
  event.remove('aether:accessory_freezable')
  event.remove('aether:icestone_freezable')
  event.remove('aether:placement_conversion')
  event.remove('aether:item_placement_ban')
  event.remove('aether:block_placement_ban')
})