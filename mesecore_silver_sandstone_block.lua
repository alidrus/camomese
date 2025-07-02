-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Silver Sandstone Block (off state) node
minetest.register_node("camomese:mesecore_silver_sandstone_block", {
    description = S("Mese Core Silver Sandstone Block"),
    tiles = {"camomese_mesecore_silver_sandstone_block.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_silver_sandstone_block.png"),
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_silver_sandstone_block_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Silver Sandstone Block (on state) node
minetest.register_node("camomese:mesecore_silver_sandstone_block_on", {
    tiles = {"camomese_mesecore_silver_sandstone_block_on.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	drop = "camomese:mesecore_silver_sandstone_block",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_silver_sandstone_block"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_silver_sandstone_block 8",
	recipe = {
		{"default:silver_sandstone_block", "default:silver_sandstone_block", "default:silver_sandstone_block"},
		{"default:silver_sandstone_block", "default:mese_crystal_fragment", "default:silver_sandstone_block"},
		{"default:silver_sandstone_block", "default:silver_sandstone_block", "default:silver_sandstone_block"},
	}
})
