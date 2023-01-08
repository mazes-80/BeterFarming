local default_path = minetest.get_modpath("better_farming")

---dofile(default_path.."/moreblocks.lua")
---dofile(default_path.."/hunger_ng.lua")

minetest.register_node("better_farming:glass_bottle_with_water", {
	description = "Glass Bottle With Water",
	drawtype = "plantlike",
	tiles = {"better_farming_glass_bottle_with_water.png"},
	inventory_image = "better_farming_glass_bottle_with_water.png",
	wield_image = "better_farming_glass_bottle_with_water.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "better_farming:glass_bottle_with_water 4",
	recipe = {
		{"vessels:glass_bottle", "default:water_source"},
	}
})


----------------------Sugar

minetest.register_craftitem("better_farming:sugar", {
	description = minetest.colorize("Pink","Sugar"),
	inventory_image = "sugar.png",
	on_use = minetest.item_eat(1),
	groups = {food_sugar = 1, flammable = 2},
})

minetest.register_craft({
	output = "better_farming:sugar 3",
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "farming:flour", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	}
})
----------------------Candy Cane

minetest.register_craftitem("better_farming:candy_cane", {
	description = minetest.colorize("Pink","Candy Cane"),
	inventory_image = "candy_cane.png",
	on_use = minetest.item_eat(2),
	groups = {food_candy = 1, flammable = 2},
})

minetest.register_craft({
	output = "better_farming:candy_cane",
	recipe = {
		{"better_farming:sugar", "better_farming:glass_bottle_with_water", "better_farming:corn"},
	}
})

minetest.register_node("better_farming:candy_cane_block", {
	description = minetest.colorize("Pink","Candy Cane Block"),
	tiles = {"candy_cane_block_top.png", "candy_cane_block_bottom.png",
		"candy_cane_block.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_craft({
	output = "better_farming:candy_cane_block",
	recipe = {
		{"better_farming:candy_cane", "better_farming:candy_cane"},
		{"better_farming:candy_cane", "better_farming:candy_cane"},
	}
})

----------------------marshmallow

minetest.register_craftitem("better_farming:marshmallow", {
	description = minetest.colorize("Pink","Marshmallow"),
	inventory_image = "marshmallow.png",
	on_use = minetest.item_eat(2),
	groups = {food_marshmallow = 1, flammable = 2},
})

minetest.register_craft({
	output = "better_farming:marshmallow",
	recipe = {
		{"better_farming:sugar", "better_farming:glass_bottle_with_water"},
		{"better_farming:sugar", "better_farming:sugar"},
		{"better_farming:sugar", "better_farming:strawberry"},
	}
})
