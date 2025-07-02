-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Sandstone Brick (off state) node
minetest.register_node("camomese:mesecore_sandstonebrick", {
    description = S("Mese Core Sandstone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_sandstone_brick.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_sandstone_brick.png"),
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_sandstonebrick_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Sandstone Brick (on state) node
minetest.register_node("camomese:mesecore_sandstonebrick_on", {
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_sandstone_brick_on.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	drop = "camomese:mesecore_sandstonebrick",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_sandstonebrick"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_sandstonebrick 8",
	recipe = {
		{"default:sandstonebrick", "default:sandstonebrick", "default:sandstonebrick"},
		{"default:sandstonebrick", "default:mese_crystal_fragment", "default:sandstonebrick"},
		{"default:sandstonebrick", "default:sandstonebrick", "default:sandstonebrick"},
	}
})
