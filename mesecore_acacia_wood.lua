-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Acacia Wood Planks (off state) node
minetest.register_node("camomese:mesecore_acacia_wood", {
    description = S("Mese Core Acacia Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_acacia_wood.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_acacia_wood.png"),
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_acacia_wood_on"
	}},
})

-- Register the Mese Core Acacia Wood Planks (on state) node
minetest.register_node("camomese:mesecore_acacia_wood_on", {
    tiles = {"camomese_mesecore_acacia_wood_on.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	drop = "camomese:mesecore_acacia_wood",
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_acacia_wood"
	}},
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_acacia_wood 8",
	recipe = {
		{"default:acacia_wood", "default:acacia_wood", "default:acacia_wood"},
		{"default:acacia_wood", "default:mese_crystal_fragment", "default:acacia_wood"},
		{"default:acacia_wood", "default:acacia_wood", "default:acacia_wood"},
	}
})
