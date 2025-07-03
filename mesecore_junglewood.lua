-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Jungle Wood Planks (off state) node
minetest.register_node("camomese:mesecore_junglewood", {
    description = S("Mese Core Jungle Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_junglewood.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_junglewood.png"),
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_junglewood_on"
	}},
})

-- Register the Mese Core Jungle Wood Planks (on state) node
minetest.register_node("camomese:mesecore_junglewood_on", {
    tiles = {"camomese_mesecore_junglewood_on.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	drop = "camomese:mesecore_junglewood",
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_junglewood"
	}},
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_junglewood 8",
	recipe = {
		{"default:junglewood", "default:junglewood", "default:junglewood"},
		{"default:junglewood", "default:mese_crystal_fragment", "default:junglewood"},
		{"default:junglewood", "default:junglewood", "default:junglewood"},
	}
})
