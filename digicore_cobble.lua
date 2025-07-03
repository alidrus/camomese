-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Digiline Core Cobblestone (off state) node
minetest.register_node("camomese:digicore_cobble", {
    description = S("Digiline Core Cobblestone"),
    tiles = {"camomese_digicore_cobble.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_digicore_cobble.png"),
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
    digilines = {
        wire = {
            rules = {
                { x =  0, y =  0, z = -1 },
                { x =  1, y =  0, z =  0 },
                { x = -1, y =  0, z =  0 },
                { x =  0, y =  0, z =  1 },
                { x =  0, y =  1, z =  0 },
                { x =  0, y = -1, z =  0 }
            },
        },
    },
})

-- Register the recipe
minetest.register_craft({
	output = "camomese:digicore_cobble 8",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "digilines:wire_std_00000000", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
	}
})
