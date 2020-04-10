#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB2205/UEB2205_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  UEF Heavy Torpedo Launcher Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local TANTorpedoAngler = import('/lua/terranweapons.lua').TANTorpedoAngler
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

UEB2400 = Class(TStructureUnit) {

    UpsideDown = false,

    Weapons = {
         Torpedo = Class(TANTorpedoAngler) {},
		 MissileRack01 = Class(TSAMLauncher) {},
    },

}

TypeClass = UEB2400