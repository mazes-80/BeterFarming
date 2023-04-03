-- add to registered_plants
farming.register_plant("better_farming:corn",{
	description = "Corn Seed",
	harvest_description = "Corn",
	inventory_image = "better_farming_corn_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:corn", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "better_farming:corn_8",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4487,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland", "desert"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:corn_8",
	param2 = 3,
})

minetest.register_craftitem("better_farming:popcorn", {
	description = "Popcorn",
	on_use = minetest.item_eat(1),
	inventory_image = "better_farming_pop_corn.png",
})

minetest.register_craft({
	type = "cooking",
	output = "better_farming:popcorn 2",
	recipe = "better_farming:corn",
})

table.insert(better_farming.plant_infos, {"better_farming:corn_", 8, "better_farming:seed_corn"})
