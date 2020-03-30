#****************************************************************************
#**
#**  File     :  /cdimage/units/UAB2101/UAB2101_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  Aeon Light Laser Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************


local AShieldStructureUnit = import('/lua/aeonunits.lua').AShieldStructureUnit

UAB2102 = Class(AShieldStructureUnit) {
    ShieldEffects = {
        '/effects/emitters/aeon_shield_generator_t2_01_emit.bp',
        '/effects/emitters/aeon_shield_generator_t2_02_emit.bp',
        '/effects/emitters/aeon_shield_generator_t3_03_emit.bp',
        '/effects/emitters/aeon_shield_generator_t3_04_emit.bp',
    },
    
    OnStopBeingBuilt = function(self,builder,layer)
        AShieldStructureUnit.OnStopBeingBuilt(self,builder,layer)
		self.ShieldEffectsBag = {}
    end,

    OnShieldEnabled = function(self)
        AShieldStructureUnit.OnShieldEnabled(self)
        if not self.OrbManip1 then
            self.OrbManip1 = CreateRotator(self, 'Spinner', 'y', nil, 10, 5, 10)
            self.Trash:Add(self.OrbManip1)
        end
        self.OrbManip1:SetTargetSpeed(-45)
        if self.ShieldEffectsBag then
            for k, v in self.ShieldEffectsBag do
                v:Destroy()
            end
		    self.ShieldEffectsBag = {}
		end
        for k, v in self.ShieldEffects do
            table.insert( self.ShieldEffectsBag, CreateAttachedEmitter( self, 0, self:GetArmy(), v ):ScaleEmitter(0.22) )
        end
    end,

    OnShieldDisabled = function(self)
        AShieldStructureUnit.OnShieldDisabled(self)
        if self.OrbManip1 then
            self.OrbManip1:SetSpinDown(true)
            self.OrbManip1:SetTargetSpeed(0)
        end
        if self.ShieldEffectsBag then
            for k, v in self.ShieldEffectsBag do
                v:Destroy()
            end
		    self.ShieldEffectsBag = {}
		end
    end,
    
    OnKilled = function(self, instigator, type, overkillRatio)
        AShieldStructureUnit.OnKilled(self, instigator, type, overkillRatio)
        if self.OrbManip1 then
            self.OrbManip1:Destroy()
            self.OrbManip1 = nil
        end
        if self.OrbManip2 then
            self.OrbManip2:Destroy()
            self.OrbManip2 = nil
        end
    end,    
}

TypeClass = UAB2102