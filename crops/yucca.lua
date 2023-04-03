-- add to registered_plants
farming.register_plant("better_farming:yucca",{
	description = "Yucca Seed",
	harvest_description = "Yucca",
	inventory_image = "better_farming_yucca_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:yucca", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "better_farming:yucca_3",
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4832,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:yucca_3",
	param2 = 3,
})

table.insert(better_farming.plant_infos, {"better_farming:yucca_", 3, "better_farming:seed_yucca"})
