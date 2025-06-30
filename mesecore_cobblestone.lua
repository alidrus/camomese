core.register_node("camomese:mesecore_cobblestone", {
    description = S("Mese Core Cobblestone"),
    tiles = {"camomese_mesecore_cobblestone.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_cobblestone.png"),
	groups = {cracky = 3},
	sounds = mesecon.node_sound.stone,
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_cobblestone_on"
	}},
	on_blast = mesecon.on_blastnode,
})

core.register_node("camomese:mesecore_cobblestone_on", {
    description = S("Mese Core Cobblestone"),
    tiles = {"camomese_mesecore_cobblestone_on.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = mesecon.node_sound.stone,
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_cobblestone"
	}},
	on_blast = mesecon.on_blastnode,
})

core.register_craft({
	output = "camomese:mesecore_cobblestone 8",
	recipe = {
		{"default:cobblestone", "default:cobblestone", "default:cobblestone"},
		{"default:cobblestone", "default:mese_crystal_fragment", "default:cobblestone"},
		{"default:cobblestone", "default:cobblestone", "default:cobblestone"},
	}
})
