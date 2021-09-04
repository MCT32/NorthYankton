local ipls = { -- IPLs used in north yankton, prologue and burry the hatchet
	"prologue01",
	"prologue01c",
	"prologue01c_lod",
	"prologue01d",
	"prologue01d_lod",
	"prologue01e",
	"prologue01e_lod",
	"prologue01f",
	"prologue01f_lod",
	"prologue01g",
	"prologue01h",
	"prologue01h_lod",
	"prologue01i",
	"prologue01i_lod",
	"prologue01j",
	"prologue01j_lod",
	"prologue01k",
	"prologue01k_lod",
	"prologue01z",
	"prologue01z_lod",
	"prologue01_lod",
	"prologue02",
	"prologue02_lod",
	"prologue03",
	"prologue03b",
	"prologue03b_lod",
	"prologue03_grv_cov",
	"prologue03_grv_cov_lod",
	"prologue03_grv_dug",
	"prologue03_grv_dug_lod",
	"prologue03_grv_fun",
	"prologue03_lod",
	"prologue04",
	"prologue04b",
	"prologue04b_lod",
	"prologue04_cover",
	"prologue04_lod",
	"prologue05",
	"prologue05b",
	"prologue05b_lod",
	"prologue05_lod",
	"prologue06",
	"prologue06b",
	"prologue06b_lod",
	"prologue06_int",
	"prologue06_int_lod",
	"prologue06_lod",
	"prologue06_pannel",
	"prologue06_pannel_lod",
	"prologuerd",
	"prologuerdb",
	"prologuerd_lod",
	"prologue_distantlights",
	"prologue_grv_torch",
	"prologue_lodlights",
	"prologue_m2_door",
	"prologue_m2_door_lod",
	"prologue_occl"
}

function load()
	for k, v in pairs(ipls) do -- Loop through the items in the IPL list
		RequestIpl(v) -- Load the IPL from the list
	end

	SetMinimapInPrologue(true) -- Set the minimap to north
end

function unload()
	for k, v in pairs(ipls) do -- Loop through the items in the IPL list
		RemoveIpl(v) -- Unload the IPL from the list
	end

	SetMinimapInPrologue(false) -- Set the minimap to north
end

load()
AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
		return
	end
	
	unload()
end)