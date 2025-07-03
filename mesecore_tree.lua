-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Apple Tree (off state) node
minetest.register_node("camomese:mesecore_tree", {
    description = S("Mese Core Apple Tree"),
	paramtype2 = "facedir",
	is_ground_content = false,
	tiles = {"camomese_mesecore_tree_top.png", "camomese_mesecore_tree_top.png", "camomese_mesecore_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_tree_on"
	}},
	on_place = minetest.rotate_node
})

-- Register the Mese Core Apple Tree (on state) node
minetest.register_node("camomese:mesecore_tree_on", {
	paramtype2 = "facedir",
	tiles = {"camomese_mesecore_tree_top_on.png", "camomese_mesecore_tree_top_on.png", "camomese_mesecore_tree_on.png"},
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	drop = "camomese:mesecore_tree",
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_tree"
	}},
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_tree 8",
	recipe = {
		{"default:tree", "default:tree", "default:tree"},
		{"default:tree", "default:mese_crystal_fragment", "default:tree"},
		{"default:tree", "default:tree", "default:tree"},
	}
})
