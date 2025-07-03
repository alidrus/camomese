-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Apple Wood Planks (off state) node
minetest.register_node("camomese:mesecore_wood", {
    description = S("Mese Core Apple Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_wood.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_wood.png"),
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_wood_on"
	}},
})

-- Register the Mese Core Apple Wood Planks (on state) node
minetest.register_node("camomese:mesecore_wood_on", {
    tiles = {"camomese_mesecore_wood_on.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	drop = "camomese:mesecore_wood",
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_wood"
	}},
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_wood 8",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:mese_crystal_fragment", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
	}
})
