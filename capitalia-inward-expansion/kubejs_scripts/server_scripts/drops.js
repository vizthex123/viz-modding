// Adds item drops
LootJS.modifiers((event) => {
    event.addEntityLootModifier("minecraft:sheep").addLoot(
        LootEntry.of("kubejs:sheepskin").when((c) => c.randomChance(0.35))
    );
		
    event.addEntityLootModifier("minecraft:pig").addLoot(
        LootEntry.of("kubejs:pig_hide").when((c) => c.randomChance(0.35))
    );
});