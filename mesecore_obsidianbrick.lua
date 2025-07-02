-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Obsidian Brick (off state) node
minetest.register_node("camomese:mesecore_obsidianbrick", {
    description = S("Mese Core Obsidian Brick"),
    tiles = {"camomese_mesecore_obsidian_brick.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_obsidian_brick.png"),
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_obsidianbrick_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Obsidian Brick (on state) node
minetest.register_node("camomese:mesecore_obsidianbrick_on", {
    tiles = {"camomese_mesecore_obsidian_brick_on.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	drop = "camomese:mesecore_obsidianbrick",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_obsidianbrick"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_obsidianbrick 8",
	recipe = {
		{"default:obsidianbrick", "default:obsidianbrick", "default:obsidianbrick"},
		{"default:obsidianbrick", "default:mese_crystal_fragment", "default:obsidianbrick"},
		{"default:obsidianbrick", "default:obsidianbrick", "default:obsidianbrick"},
	}
})
