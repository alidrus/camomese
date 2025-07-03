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
dofile(path .. "mesecore_jungletree.lua")
dofile(path .. "mesecore_junglewood.lua")
dofile(path .. "mesecore_pine_tree.lua")
dofile(path .. "mesecore_pine_wood.lua")
dofile(path .. "mesecore_acacia_tree.lua")
dofile(path .. "mesecore_acacia_wood.lua")
dofile(path .. "mesecore_aspen_tree.lua")
dofile(path .. "mesecore_aspen_wood.lua")

if minetest.global_exists ("digilines") then
    dofile(path .. "digicore_stone.lua")
    dofile(path .. "digicore_cobble.lua")
    dofile(path .. "digicore_stonebrick.lua")
    dofile(path .. "digicore_stone_block.lua")
    dofile(path .. "digicore_mossycobble.lua")
    dofile(path .. "digicore_desert_stone.lua")
    dofile(path .. "digicore_desert_cobble.lua")
    dofile(path .. "digicore_desert_stonebrick.lua")
    dofile(path .. "digicore_desert_stone_block.lua")
    dofile(path .. "digicore_sandstone.lua")
    dofile(path .. "digicore_sandstonebrick.lua")
    dofile(path .. "digicore_sandstone_block.lua")
    dofile(path .. "digicore_desert_sandstone.lua")
    dofile(path .. "digicore_desert_sandstone_brick.lua")
    dofile(path .. "digicore_desert_sandstone_block.lua")
    dofile(path .. "digicore_silver_sandstone.lua")
    dofile(path .. "digicore_silver_sandstone_brick.lua")
    dofile(path .. "digicore_silver_sandstone_block.lua")
    dofile(path .. "digicore_obsidian.lua")
    dofile(path .. "digicore_obsidianbrick.lua")
    dofile(path .. "digicore_obsidian_block.lua")
    dofile(path .. "digicore_tree.lua")
    dofile(path .. "digicore_wood.lua")
    dofile(path .. "digicore_jungletree.lua")
    dofile(path .. "digicore_junglewood.lua")
    dofile(path .. "digicore_pine_tree.lua")
    dofile(path .. "digicore_pine_wood.lua")
    dofile(path .. "digicore_acacia_tree.lua")
    dofile(path .. "digicore_acacia_wood.lua")
    dofile(path .. "digicore_aspen_tree.lua")
    dofile(path .. "digicore_aspen_wood.lua")
end

print("[MOD] Camomese loaded")
