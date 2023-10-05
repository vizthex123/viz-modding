# Adds OreDict entries to various items
print("1-OreDict.zs loading...");
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/

// Stone Chests
val schest = <ore:chestStone>;

schest.add(<stonechest:chest_stone>);
schest.add(<stonechest:chest_cobblestone>);
schest.add(<stonechest:chest_andesite>);
schest.add(<stonechest:chest_diorite>);
schest.add(<stonechest:chest_granite>);


// Chests
val chest = <ore:chest>;
val chestw = <ore:chestWood>;

chest.add(<extrautils2:largishchest>);
chestw.add(<extrautils2:largishchest>);
chest.add(<enderstorage:ender_storage>);


// Workbenches
val workbench = <ore:workbench>;

workbench.add(<sct:stone_crafting_table>);
workbench.add(<natura:overworld_workbenches:*>);
workbench.add(<natura:nether_workbenches:*>);

// Water
val water = <ore:water>;

water.add(<minecraft:water_bucket>);
water.add(<forestry:can:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}));
water.add(<forestry:capsule:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}));
water.add(<forestry:refractory:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}));
water.add(<thermalexpansion:florb>.withTag({Fluid: "water"}));


// Misc
<ore:rodStone>.add(<sct:stone_stick>);
<ore:string>.add(<natura:materials:7>);
<ore:string>.add(<contenttweaker:fibrous_string>);
<ore:vine>.add(<natura:nether_thorn_vines>);

<ore:slimeball>.add(<contenttweaker:fake_slime>);


# Research stuff
// Food
val meat = <ore:listAllmeat>;

meat.add(<minecraft:beef>);
meat.add(<minecraft:chicken>);
meat.add(<minecraft:porkchop>);
meat.add(<minecraft:rabbit>);
meat.add(<minecraft:mutton>);
meat.add(<minecraft:fish>);
meat.add(<minecraft:fish:1>);
meat.add(<minecraft:fish:2>);
meat.add(<minecraft:fish:3>);

meat.add(<minecraft:cooked_beef>);
meat.add(<minecraft:cooked_chicken>);
meat.add(<minecraft:cooked_porkchop>);
meat.add(<minecraft:cooked_rabbit>);
meat.add(<minecraft:cooked_mutton>);
meat.add(<minecraft:cooked_fish>);
meat.add(<minecraft:cooked_fish:1>);

meat.add(<natura:edibles>);
meat.add(<natura:edibles:1>);

meat.add(<foodexpansion:itemsquid>);
meat.add(<foodexpansion:itemparrotmeat>);
meat.add(<foodexpansion:itemllamameat>);
meat.add(<foodexpansion:itempolarbearmeat>);
meat.add(<foodexpansion:itemhorsemeat>);
meat.add(<foodexpansion:itemwolfmeat>);
meat.add(<foodexpansion:itemocelotmeat>);

meat.add(<foodexpansion:itemcookedsquid>);
meat.add(<foodexpansion:itemcookedparrotmeat>);
meat.add(<foodexpansion:itemcookedllamameat>);
meat.add(<foodexpansion:itemcookedpolarbearmeat>);
meat.add(<foodexpansion:itemcookedhorsemeat>);
meat.add(<foodexpansion:itemcookedwolfmeat>);
meat.add(<foodexpansion:itemcookedocelotmeat>);


val crop = <ore:listAllcrops>;

crop.add(<natura:edibles>);
crop.add(<minecraft:wheat>);
crop.add(<minecraft:beetroot>);
crop.add(<minecraft:carrot>);
crop.add(<minecraft:melon>);
crop.add(<minecraft:pumpkin>);
crop.add(<minecraft:potato>);

crop.add(<forestry:fruits>);
crop.add(<forestry:fruits:1>);
crop.add(<forestry:fruits:2>);
crop.add(<forestry:fruits:3>);
crop.add(<forestry:fruits:4>);
crop.add(<forestry:fruits:5>);
crop.add(<forestry:fruits:6>);


// Doors
val door = <ore:doorWood>;

door.add(<natura:overworld_doors>);
door.add(<natura:overworld_doors:1>);
door.add(<natura:overworld_doors:2>);
door.add(<natura:overworld_doors:3>);
door.add(<natura:overworld_doors:4>);
door.add(<natura:nether_doors>);
door.add(<natura:nether_doors:1>);
door.add(<natura:nether_doors:2>);


// Trapdoors
val trapdoor = <ore:trapdoorWood>;

trapdoor.add(<natura:redwood_trap_door>);
trapdoor.add(<natura:maple_trap_door>);
trapdoor.add(<natura:silverbell_trap_door>);
trapdoor.add(<natura:amaranth_trap_door>);
trapdoor.add(<natura:tiger_trap_door>);
trapdoor.add(<natura:willow_trap_door>);
trapdoor.add(<natura:eucalyptus_trap_door>);
trapdoor.add(<natura:hopseed_trap_door>);
trapdoor.add(<natura:sakura_trap_door>);
trapdoor.add(<natura:ghostwood_trap_door>);
trapdoor.add(<natura:bloodwood_trap_door>);
trapdoor.add(<natura:fusewood_trap_door>);
trapdoor.add(<natura:darkwood_trap_door>);


// Fences
val fence = <ore:fenceWood>;
val gate = <ore:fenceGateWood>;

fence.add(<natura:redwood_fence>);
fence.add(<natura:maple_fence>);
fence.add(<natura:silverbell_fence>);
fence.add(<natura:amaranth_fence>);
fence.add(<natura:tiger_fence>);
fence.add(<natura:willow_fence>);
fence.add(<natura:eucalyptus_fence>);
fence.add(<natura:hopseed_fence>);
fence.add(<natura:sakura_fence>);
fence.add(<natura:ghostwood_fence>);
fence.add(<natura:bloodwood_fence>);
fence.add(<natura:fusewood_fence>);
fence.add(<natura:darkwood_fence>);

gate.add(<natura:redwood_fence_gate>);
gate.add(<natura:maple_fence_gate>);
gate.add(<natura:silverbell_fence_gate>);
gate.add(<natura:amaranth_fence_gate>);
gate.add(<natura:tiger_fence_gate>);
gate.add(<natura:willow_fence_gate>);
gate.add(<natura:eucalyptus_fence_gate>);
gate.add(<natura:hopseed_fence_gate>);
gate.add(<natura:sakura_fence_gate>);
gate.add(<natura:ghostwood_fence_gate>);
gate.add(<natura:bloodwood_fence_gate>);
gate.add(<natura:fusewood_fence_gate>);
gate.add(<natura:darkwood_fence_gate>);


// Pressure Plates
val plate = <ore:pressurePlateWood>;

plate.add(<minecraft:wooden_pressure_plate>);
plate.add(<natura:redwood_pressure_plate>);
plate.add(<natura:ghostwood_pressure_plate>);
plate.add(<natura:bloodwood_pressure_plate>);
plate.add(<natura:fusewood_pressure_plate>);
plate.add(<natura:darkwood_pressure_plate>);


// Buttons
val button = <ore:buttonWood>;

button.add(<minecraft:wooden_button>);
button.add(<natura:redwood_button>);
button.add(<natura:maple_button>);
button.add(<natura:silverbell_button>);
button.add(<natura:amaranth_button>);
button.add(<natura:tiger_button>);
button.add(<natura:willow_button>);
button.add(<natura:eucalyptus_button>);
button.add(<natura:hopseed_button>);
button.add(<natura:sakura_button>);
button.add(<natura:ghostwood_button>);
button.add(<natura:bloodwood_button>);
button.add(<natura:fusewood_button>);
button.add(<natura:darkwood_button>);

print("1-OreDict.zs loaded");