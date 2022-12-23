// Add my custom items
StartupEvents.registry('item', event => {
// Scientific Dossiers
		event.create('science').displayName('Scientific Dossier: Placeholder')
		event.create('science_stone').displayName('Scientific Dossier: Stone')
		event.create('science_brass').displayName('Scientific Dossier: Brass')
		event.create('science_iron').displayName('Scientific Dossier: Iron')
		event.create('science_industrial').displayName('Scientific Folder: Industrial')
		event.create('science_information').displayName('Scientific Datapad: Information')


// Sawdust
		event.create('glue')
		event.create('sawdust')
		event.create('sawdust_clump')
		event.create('compressed_sawdust')
		event.create('mdf').displayName('MDF Board').burnTime(200)


// Project Expansion
		event.create('drill_bits')
		event.create('drill_head')
		event.create('drill_shaft_piece')
		event.create('drill_shaft')
		event.create('drill_support_piece')
		event.create('drill_supports')
		event.create('drill_base')


// Misc
		event.create('seller').displayName('Sales Token')
})