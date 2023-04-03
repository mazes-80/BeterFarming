-- add to registered_plants
farming.register_plant("better_farming:onion",{
	description = "Onion Seed",
	harvest_description = "Onion",
	inventory_image = "better_farming_onion_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:onion", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "better_farming:onion_8",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4589,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:onion_8",
	param2 = 3,
})

table.insert(better_farming.plant_infos, {"better_farming:onion_", 8, "better_farming:seed_onion"})
