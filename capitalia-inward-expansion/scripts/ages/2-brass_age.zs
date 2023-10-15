# Adds items to the Brass Age
# Should be Bronze, but there isn't any in the pack and I don't wanna add a whole-ass mod to get it
#priority 6

import mods.itemstages.ItemStages;

print("2-brass_age.zs loading...");

/*
ItemStages.restrict(<item>, "brass_age");

ItemStages.createModRestriction("mod", "brass_age");

ItemStages.createModRestriction("mod", s => (<exemption> | <exemption2>), "brass_age");
*/

ItemStages.restrict(<item:kubejs:science_iron>, "brass_age");


ItemStages.createModRestriction("create", s => (<item:create:raw_zinc> | <item:create:zinc_ingot> | <item:create:copper_nugget>).matches(s), "brass_age");
ItemStages.createModRestriction("create_enchantment_industry", "brass_age");
ItemStages.createModRestriction("createdeco", "brass_age");
ItemStages.createModRestriction("mechanicalmachinery", "brass_age");

# Blocks
ItemStages.restrict(<item:adminshop:seller>, "brass_age");
ItemStages.restrict(<item:bluepower:alloyfurnace>, "brass_age");

# Items
ItemStages.restrict(<item:bluepower:tungsten_carbide>, "brass_age");

ItemStages.restrict(<item:minecraft:chainmail_helmet>.anyDamage(), "brass_age");
ItemStages.restrict(<item:minecraft:chainmail_chestplate>.anyDamage(), "brass_age");
ItemStages.restrict(<item:minecraft:chainmail_leggings>.anyDamage(), "brass_age");
ItemStages.restrict(<item:minecraft:chainmail_boots>.anyDamage(), "brass_age");

print("2-brass_age.zs loaded");