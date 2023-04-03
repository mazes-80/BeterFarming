-- add to registered_plants
farming.register_plant("better_farming:cucumber",{
	description = "Cucumber Seed",
	harvest_description = "Cucumber",
	inventory_image = "better_farming_cucumber_seed.png",
	minlight = better_farming.minlight,
	maxlight = better_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1, desert = 1 },
	fertility = {"grassland","desert"},
})

-- needed
minetest.override_item("better_farming:cucumber", {
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "better_farming:cucumber_4",
	deco_type = "simple",
	place_on = {"default:desert_sand", "default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3785,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"desert", "coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:cucumber_4",
	param2 = 3,
})

table.insert(better_farming.plant_infos, {"better_farming:cucumber_", 4, "better_farming:seed_cucumber"})
