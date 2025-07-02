-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Obsidian (off state) node
minetest.register_node("camomese:mesecore_obsidian", {
    description = S("Mese Core Obsidian"),
    tiles = {"camomese_mesecore_obsidian.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_obsidian.png"),
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_obsidian_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Obsidian (on state) node
minetest.register_node("camomese:mesecore_obsidian_on", {
    tiles = {"camomese_mesecore_obsidian_on.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "camomese:mesecore_obsidian",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_obsidian"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_obsidian 8",
	recipe = {
		{"default:obsidian", "default:obsidian", "default:obsidian"},
		{"default:obsidian", "default:mese_crystal_fragment", "default:obsidian"},
		{"default:obsidian", "default:obsidian", "default:obsidian"},
	}
})
