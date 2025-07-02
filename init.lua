-- Camouflaged Mesecons (camomese) Mod by WoGoMo

local version = "0.1.13"

camomese = {  }

function camomese.version ()
	return version
end

local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

-- add mese core nodes
dofile(path .. "mesecore_stone.lua")
dofile(path .. "mesecore_cobble.lua")
dofile(path .. "mesecore_stonebrick.lua")
dofile(path .. "mesecore_stone_block.lua")
dofile(path .. "mesecore_mossycobble.lua")
dofile(path .. "mesecore_desert_stone.lua")
dofile(path .. "mesecore_desert_cobble.lua")
dofile(path .. "mesecore_desert_stonebrick.lua")
dofile(path .. "mesecore_desert_stone_block.lua")
dofile(path .. "mesecore_sandstone.lua")
dofile(path .. "mesecore_sandstonebrick.lua")
dofile(path .. "mesecore_sandstone_block.lua")
dofile(path .. "mesecore_desert_sandstone.lua")
dofile(path .. "mesecore_desert_sandstone_brick.lua")
dofile(path .. "mesecore_desert_sandstone_block.lua")
dofile(path .. "mesecore_silver_sandstone.lua")
dofile(path .. "mesecore_silver_sandstone_brick.lua")
dofile(path .. "mesecore_silver_sandstone_block.lua")
dofile(path .. "mesecore_obsidian.lua")
dofile(path .. "mesecore_obsidianbrick.lua")
dofile(path .. "mesecore_obsidian_block.lua")
dofile(path .. "mesecore_tree.lua")
dofile(path .. "mesecore_wood.lua")
dofile(path .. "mesecore_apple.lua")
dofile(path .. "mesecore_jungletree.lua")
dofile(path .. "mesecore_junglewood.lua")
dofile(path .. "mesecore_pine_tree.lua")
dofile(path .. "mesecore_pine_wood.lua")
dofile(path .. "mesecore_acacia_tree.lua")
dofile(path .. "mesecore_acacia_wood.lua")
dofile(path .. "mesecore_aspen_tree.lua")
dofile(path .. "mesecore_aspen_wood.lua")

print("[MOD] Camomese loaded")
