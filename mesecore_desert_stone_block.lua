-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Desert Stone Block (off state) node
minetest.register_node("camomese:mesecore_desert_stone_block", {
    description = S("Mese Core Desert Stone Block"),
    tiles = {"camomese_mesecore_desert_stone_block.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_desert_stone_block.png"),
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_desert_stone_block_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Desert Stone Block (on state) node
minetest.register_node("camomese:mesecore_desert_stone_block_on", {
    tiles = {"camomese_mesecore_desert_stone_block_on.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	drop = "camomese:mesecore_desert_stone_block",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_desert_stone_block"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_desert_stone_block 8",
	recipe = {
		{"default:desert_stone_block", "default:desert_stone_block", "default:desert_stone_block"},
		{"default:desert_stone_block", "default:mese_crystal_fragment", "default:desert_stone_block"},
		{"default:desert_stone_block", "default:desert_stone_block", "default:desert_stone_block"},
	}
})
