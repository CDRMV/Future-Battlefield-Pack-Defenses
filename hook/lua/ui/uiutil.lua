local version = tonumber( (string.gsub(string.gsub(GetVersion(), '1.5.', ''), '1.6.', '')) )

if version < 3652 then -- All versions below 3652 don't have buildin global icon support, so we need to insert the icons by our own function



LOG('Future Battlefield Pack Defenses: [uiutil.lua '..debug.getinfo(1).currentline..'] - Gameversion is older then 3652. Hooking "UIFile" to add our own unit icons')

local MyUnitIdTable = {
   ueb2103=true, -- Ion Cluster - (Light Lightning Gun)
   ueb3000=true, -- Pionter Mark III - (Heavy Laser Defense)
   ueb2200=true, -- Ion Cluster Mark II - (Lightning Gun)
   ueb2102b=true, -- Pionter - (Light Laser Defense)
   ueb2202b=true, -- Pionter Mark II - (Medium Laser Defense)
   ueb2100=true, -- DAT Priest - (Light Artillery)
   ueb2300=true, -- Ion Cluster Mark III - (Lightning Gun)
   urb2100=true, -- Devastator - (Light Artillery)
}

	local IconPath = "/Mods/Future Battlefield Pack Defenses"
	-- Adds icons to the engeneer/factory buildmenu
	local oldUIFile = UIFile
	function UIFile(filespec)
		local IconName = string.gsub(filespec,'_icon.dds','')
        IconName = string.gsub(IconName,'/icons/units/','')
		if MyUnitIdTable[IconName] then
			local curfile =  IconPath .. filespec
			return curfile
		end
		return oldUIFile(filespec)
	end

else
	LOG('Future Battlefield Pack: [uiutil.lua '..debug.getinfo(1).currentline..'] - Gameversion is 3652 or newer. No need to insert the unit icons by our own function.')
end -- All versions below 3652 don't have buildin global icon support, so we need to insert the icons by our own function