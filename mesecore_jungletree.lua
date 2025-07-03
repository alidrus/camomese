-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Jungle Tree (off state) node
minetest.register_node("camomese:mesecore_jungletree", {
    description = S("Mese Core Jungle Tree"),
	paramtype2 = "facedir",
	is_ground_content = false,
	tiles = {"camomese_mesecore_jungletree_top.png", "camomese_mesecore_jungletree_top.png", "camomese_mesecore_jungletree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_jungletree_on"
	}},
	on_place = minetest.rotate_node
})

-- Register the Mese Core Jungle Tree (on state) node
minetest.register_node("camomese:mesecore_jungletree_on", {
	paramtype2 = "facedir",
	tiles = {"camomese_mesecore_jungletree_top_on.png", "camomese_mesecore_jungletree_top_on.png", "camomese_mesecore_jungletree_on.png"},
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	drop = "camomese:mesecore_jungletree",
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_jungletree"
	}},
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_jungletree 8",
	recipe = {
		{"default:jungletree", "default:jungletree", "default:jungletree"},
		{"default:jungletree", "default:mese_crystal_fragment", "default:jungletree"},
		{"default:jungletree", "default:jungletree", "default:jungletree"},
	}
})
