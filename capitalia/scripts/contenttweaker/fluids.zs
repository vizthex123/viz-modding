#loader contenttweaker

import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

var research = VanillaFactory.createFluid("research", Color.fromHex("BA55D3"));
research.luminosity = 8;
research.viscosity = 2500;

#	research.fillSound = <soundevent:fluid.water.place>;
research.register();

var goo = VanillaFactory.createFluid("alien_goo", Color.fromHex("32CD32"));
goo.luminosity = 3;
goo.viscosity = 5000;

#	goo.fillSound = <soundevent:fluid.lava.place>;
goo.register();

var hell = VanillaFactory.createFluid("hell_goo", Color.fromHex("F11514"));
hell.luminosity = 5;
hell.viscosity = 5000;

#	hell.fillSound = <soundevent:fluid.lava.place>;
hell.register();