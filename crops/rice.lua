-- add to registered_plants
farming.register_plant("better_farming:rice",{
	description = "Rice Seed",
	harvest_description = "Rice",
	inventory_image = "better_farming_rice_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:rice", {
	stack_max = 300,
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "better_farming:rice_8",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 7859,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland", "rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:rice_8",
	param2 = 3,
})

minetest.register_craftitem("better_farming:onigiri", {
	description = "Onigiri",
	on_use = minetest.item_eat(1),
	inventory_image = "onigiri.png",
})

minetest.register_craft({
	type = "cooking",
	output = "better_farming:onigiri",
	recipe = "better_farming:rice",
})
