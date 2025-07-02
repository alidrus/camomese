-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Mese Core Desert Stone Brick (off state) node
minetest.register_node("camomese:mesecore_desert_stonebrick", {
    description = S("Mese Core Desert Stone Brick"),
    tiles = {"camomese_mesecore_desert_stone_brick.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_mesecore_desert_stone_brick.png"),
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.off,
		rules = mesecon.rules.alldirs,
		onstate = "camomese:mesecore_desert_stonebrick_on"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the Mese Core Desert Stone Brick (on state) node
minetest.register_node("camomese:mesecore_desert_stonebrick_on", {
    tiles = {"camomese_mesecore_desert_stone_brick_on.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	drop = "camomese:mesecore_desert_stonebrick",
	sounds = default.node_sound_stone_defaults(),
	mesecons = {conductor = {
		state = mesecon.state.on,
		rules = mesecon.rules.alldirs,
		offstate = "camomese:mesecore_desert_stonebrick"
	}},
	on_blast = mesecon.on_blastnode,
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:mesecore_desert_stonebrick 8",
	recipe = {
		{"default:desert_stonebrick", "default:desert_stonebrick", "default:desert_stonebrick"},
		{"default:desert_stonebrick", "default:mese_crystal_fragment", "default:desert_stonebrick"},
		{"default:desert_stonebrick", "default:desert_stonebrick", "default:desert_stonebrick"},
	}
})
