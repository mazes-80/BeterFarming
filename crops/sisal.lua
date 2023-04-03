-- add to registered_plants
farming.register_plant("better_farming:sisal",{
	description = "Sisal Seed",
	harvest_description = "Sisal",
	inventory_image = "better_farming_sisal_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, desert = 1 },
	fertility = {"desert"},
})

-- needed
minetest.override_item("better_farming:sisal", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "better_farming:sisal_3",
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4797,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"desert"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:sisal_3",
	param2 = 3,
})

table.insert(better_farming.plant_infos, {"better_farming:sisal_", 3, "better_farming:seed_sisal"})
