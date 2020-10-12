#****************************************************************************
#**
#**  File     :  /cdimage/units/UEL0101/UEL0101_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  UEF Land Scout Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local FBPNTWeaponFile = import('/mods/Future Battlefield Pack Defenses/lua/FBPDweapons.lua')
local TStationaryDualMaserBeamWeapon = FBPNTWeaponFile.TStationaryDualMaserBeamWeapon


UEB2307 = Class(TStructureUnit) {
    
    Weapons = {
        MaserWeapon = Class(TStationaryDualMaserBeamWeapon) {
        },
		
		OnKilled = function(self)
            local wep1 = self:GetWeaponByLabel('MaserWeapon')
            local bp1 = wep1:GetBlueprint()
            if bp1.Audio.BeamStop then
                wep1:PlaySound(bp1.Audio.BeamStop)
            end
            if bp1.Audio.BeamLoop and wep1.Beams[1].Beam then
                wep1.Beams[1].Beam:SetAmbientSound(nil, nil)
            end
            for k, v in wep1.Beams do
                v.Beam:Disable()
            end     
                  
            TStructureUnit.OnKilled(self)
        end,   
    },  

}


TypeClass = UEB2307
