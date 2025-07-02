-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Obsidian Block (off state) node
minetest.register_node("camomese:mesecore_obsidian_block", {
    description = S("Mese Core Obsidian Block"),
    tiles = {"camomese_mesecore_obsidian_block.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_obsidian_block.png"),
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_obsidian_block_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Obsidian Block (on state) node
minetest.register_node("camomese:mesecore_obsidian_block_on", {
    tiles = {"camomese_mesecore_obsidian_block_on.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	drop = "camomese:mesecore_obsidian_block",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_obsidian_block"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_obsidian_block 8",
	recipe = {
		{"default:obsidian_block", "default:obsidian_block", "default:obsidian_block"},
		{"default:obsidian_block", "default:mese_crystal_fragment", "default:obsidian_block"},
		{"default:obsidian_block", "default:obsidian_block", "default:obsidian_block"},
	}
})
