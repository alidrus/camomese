-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Sandstone (off state) node
minetest.register_node("camomese:mesecore_sandstone", {
    description = S("Mese Core Sandstone"),
    tiles = {"camomese_mesecore_sandstone.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_sandstone.png"),
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_sandstone_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Sandstone (on state) node
minetest.register_node("camomese:mesecore_sandstone_on", {
    tiles = {"camomese_mesecore_sandstone_on.png"},
	is_ground_content = false,
	groups = {crumbly = 1, cracky = 3},
	drop = "camomese:mesecore_sandstone",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_sandstone"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_sandstone 8",
	recipe = {
		{"default:sandstone", "default:sandstone", "default:sandstone"},
		{"default:sandstone", "default:mese_crystal_fragment", "default:sandstone"},
		{"default:sandstone", "default:sandstone", "default:sandstone"},
	}
})
