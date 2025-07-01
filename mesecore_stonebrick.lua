-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Stone Brick (off state) node
minetest.register_node("camomese:mesecore_stonebrick", {
    description = S("Mese Core Stone Brick"),
    tiles = {"camomese_mesecore_stone_brick.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_stone_brick.png"),
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_stonebrick_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Stone Brick (on state) node
minetest.register_node("camomese:mesecore_stonebrick_on", {
    tiles = {"camomese_mesecore_stone_brick_on.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	drop = "camomese:mesecore_stonebrick",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_stonebrick"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_stonebrick 8",
	recipe = {
		{"default:stonebrick", "default:stonebrick", "default:stonebrick"},
		{"default:stonebrick", "default:mese_crystal_fragment", "default:stonebrick"},
		{"default:stonebrick", "default:stonebrick", "default:stonebrick"},
	}
})
