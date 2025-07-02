-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Silver Sandstone Brick (off state) node
minetest.register_node("camomese:mesecore_silver_sandstone_brick", {
    description = S("Mese Core Silver Sandstone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_silver_sandstone_brick.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_silver_sandstone_brick.png"),
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_silver_sandstone_brick_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Silver Sandstone Brick (on state) node
minetest.register_node("camomese:mesecore_silver_sandstone_brick_on", {
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_silver_sandstone_brick_on.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	drop = "camomese:mesecore_silver_sandstone_brick",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_silver_sandstone_brick"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_silver_sandstone_brick 8",
	recipe = {
		{"default:silver_sandstone_brick", "default:silver_sandstone_brick", "default:silver_sandstone_brick"},
		{"default:silver_sandstone_brick", "default:mese_crystal_fragment", "default:silver_sandstone_brick"},
		{"default:silver_sandstone_brick", "default:silver_sandstone_brick", "default:silver_sandstone_brick"},
	}
})
