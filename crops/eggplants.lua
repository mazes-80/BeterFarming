-- add to registered_plants
farming.register_plant("better_farming:eggplants",{
	description = "Eggplant Seed",
	harvest_description = "Eggplant",
	inventory_image = "better_farming_eggplants_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:eggplants", {
	on_use = minetest.item_eat(3),
	groups = {food_tomato = 1, flammable = 3}
})

minetest.register_decoration({
	name = "better_farming:eggplants_4",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3145,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:eggplants_4",
	param2 = 3,
})

table.insert(better_farming.plant_infos, {"better_farming:eggplants_", 4, "better_farming:seed_eggplants"})
