-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Desert Stone (off state) node
minetest.register_node("camomese:mesecore_desert_stone", {
    description = S("Mese Core Desert Stone"),
    tiles = {"camomese_mesecore_desert_stone.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_desert_stone.png"),
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_desert_stone_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Desert Stone (on state) node
minetest.register_node("camomese:mesecore_desert_stone_on", {
    tiles = {"camomese_mesecore_desert_stone_on.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = "camomese:mesecore_desert_stone",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_desert_stone"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_desert_stone 8",
	recipe = {
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
		{"default:desert_stone", "default:mese_crystal_fragment", "default:desert_stone"},
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
	}
})

