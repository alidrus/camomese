-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Aspen Wood Planks (off state) node
minetest.register_node("camomese:mesecore_aspen_wood", {
    description = S("Mese Core Aspen Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
    tiles = {"camomese_mesecore_aspen_wood.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_aspen_wood.png"),
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_aspen_wood_on"
	}},
})

-- Register the Mese Core Aspen Wood Planks (on state) node
minetest.register_node("camomese:mesecore_aspen_wood_on", {
    tiles = {"camomese_mesecore_aspen_wood_on.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	drop = "camomese:mesecore_aspen_wood",
	sounds = default.node_sound_wood_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_aspen_wood"
	}},
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_aspen_wood 8",
	recipe = {
		{"default:aspen_wood", "default:aspen_wood", "default:aspen_wood"},
		{"default:aspen_wood", "default:mese_crystal_fragment", "default:aspen_wood"},
		{"default:aspen_wood", "default:aspen_wood", "default:aspen_wood"},
	}
})
