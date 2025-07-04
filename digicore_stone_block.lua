-- Translation support
local S = minetest.get_translator("camomese")

-- Register the Digiline Core Stone Block (off state) node
minetest.register_node("camomese:digicore_stone_block", {
    description = S("Digiline Core Stone Block"),
    tiles = {"camomese_digicore_stone_block.png"},
	is_ground_content = false,
	inventory_image = minetest.inventorycube("camomese_digicore_stone_block.png"),
	groups = {cracky = 3},
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
	output = "camomese:digicore_stone_block 8",
	recipe = {
		{"default:stone_block", "default:stone_block", "default:stone_block"},
		{"default:stone_block", "digilines:wire_std_00000000", "default:stone_block"},
		{"default:stone_block", "default:stone_block", "default:stone_block"},
	}
})
