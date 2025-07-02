-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Desert Cobblestone (off state) node
minetest.register_node("camomese:mesecore_desert_cobble", {
    description = S("Mese Core Desert Cobblestone"),
    tiles = {"camomese_mesecore_desert_cobble.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_desert_cobble.png"),
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_desert_cobble_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Desert Cobblestone (on state) node
minetest.register_node("camomese:mesecore_desert_cobble_on", {
    tiles = {"camomese_mesecore_desert_cobble_on.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "camomese:mesecore_desert_cobble",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_desert_cobble"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_desert_cobble 8",
	recipe = {
		{"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"},
		{"default:desert_cobble", "default:mese_crystal_fragment", "default:desert_cobble"},
		{"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"},
	}
})
