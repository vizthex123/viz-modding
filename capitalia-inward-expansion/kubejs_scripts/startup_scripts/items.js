// Add my custom items
StartupEvents.registry('item', event => {
/*
Ages:
Stone
Bronze
Iron
Industrial (most of Create & its add-ons)
Machine? (probs not needed)
Information (AE 2)
Atomic
*/
// Scientific Dossiers
		event.create('science').displayName('Unwritten Scroll')
		event.create('science_stone').displayName('Scientific Tablet: Stone')
		event.create('science_brass').displayName('Scientific Scroll: Brass')
		event.create('science_iron').displayName('Scientific Dossier: Iron')
		event.create('science_industrial').displayName('Scientific Dossier: Industrial').rarity('uncommon')
		event.create('science_information').displayName('Scientific Data Pad: Information').rarity('rare')
		event.create('science_atomic').displayName('Scientific Hologram: Atomic').rarity('epic')

// Scrap
		event.create('iron_scrap')
		event.create('tiny_iron_scrap')
		event.create('gold_scrap')
		event.create('tiny_gold_scrap')

// Sawdust
		event.create('glue')
		event.create('sawdust')
		event.create('sawdust_clump')
		event.create('compressed_sawdust')
		event.create('mdf').displayName('MDF Board').burnTime(200)

/*
Rarities:
- Components: Uncommon (bits, shaft piece, and support piece)
- Drill itself: Capital
- Drill base & supports: Mythical
- Drill head: Legendary
*/
// Project Expansion
		event.create('shaft_segment').rarity('uncommon')
		event.create('shaft').rarity('uncommon')
		event.create('bits').displayName('Drill Bits').rarity('uncommon')
		event.create('head').displayName('Drill Head').rarity('rare')
		event.create('support_scaffold').rarity('rare')
		event.create('supports').rarity('epic')
		event.create('base').displayName('Foundation').rarity('epic')
		event.create('worldbreaker_drill').rarity('epic').maxStackSize(1)


// Misc
		event.create('fibers')
		event.create('pig_hide')
		event.create('sheepskin')
		event.create('shredded_hide')
		event.create('parchment')
		event.create('quicklime')
		event.create('prestige_chit').rarity('rare')
		event.create('prestige_scrip').rarity('epic')
		event.create('seller').displayName('Sales Token').rarity('uncommon')
})