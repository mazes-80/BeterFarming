-- add to registered_plants
farming.register_plant("better_farming:jute",{
	description = "Jute Seed",
	harvest_description = "Jute",
	inventory_image = "better_farming_jute_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.override_item("better_farming:jute", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "better_farming:jute_3",
	deco_type = "simple",
	place_on = {"default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4025,
		octaves = 3,
		persist = 1.1
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:jute_3",
	param2 = 3,
})


minetest.register_craft({
	output = "better_farming:sugar",
	recipe = {
		{"better_farming:jute"},
	}
})
