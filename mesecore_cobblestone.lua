-- Translation support
local S = minetest.get_translator("camomese")


-- Register the Mese Core Cobblestone (off state) node
minetest.register_node("camomese:mesecore_cobblestone", {
    description = S("Mese Core Cobblestone"),
    tiles = {"camomese_mesecore_cobblestone.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_cobblestone.png"),
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_cobblestone_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Cobblestone (on state) node
minetest.register_node("camomese:mesecore_cobblestone_on", {
    tiles = {"camomese_mesecore_cobblestone_on.png"},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_cobblestone"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_cobblestone 8",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:mese_crystal_fragment", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
	}
})
