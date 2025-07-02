-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Mossy Cobblestone (off state) node
minetest.register_node("camomese:mesecore_mossycobble", {
    description = S("Mese Core Mossy Cobblestone"),
    tiles = {"camomese_mesecore_mossycobble.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_mossycobble.png"),
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_mossycobble_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Mossy Cobblestone (on state) node
minetest.register_node("camomese:mesecore_mossycobble_on", {
    tiles = {"camomese_mesecore_mossycobble_on.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "camomese:mesecore_mossycobble",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_mossycobble"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_mossycobble 8",
	recipe = {
		{"default:mossycobble", "default:mossycobble", "default:mossycobble"},
		{"default:mossycobble", "default:mese_crystal_fragment", "default:mossycobble"},
		{"default:mossycobble", "default:mossycobble", "default:mossycobble"},
	}
})
