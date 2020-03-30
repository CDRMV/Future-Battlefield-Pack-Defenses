#****************************************************************************
#**
#**  File     :  /cdimage/units/UAB2101/UAB2101_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  Aeon Light Laser Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************


local TShieldStructureUnit = import('/lua/terranunits.lua').TShieldStructureUnit

UEB2102 = Class(TShieldStructureUnit) {
    ShieldEffects = {
        '/effects/emitters/terran_shield_generator_mobile_01_emit.bp',
        '/effects/emitters/terran_shield_generator_mobile_02_emit.bp',
    },
    
    OnStopBeingBuilt = function(self,builder,layer)
        TShieldStructureUnit.OnStopBeingBuilt(self,builder,layer)
		self.ShieldEffectsBag = {}
    end,

    OnShieldEnabled = function(self)
        TShieldStructureUnit.OnShieldEnabled(self)
        KillThread( self.DestroyManipulatorsThread )
        if not self.RotatorManipulator then
            self.RotatorManipulator = CreateRotator( self, 'Spinner01', 'y', nil, 10, 5, 10)
            self.Trash:Add( self.RotatorManipulator )
        end
        self.RotatorManipulator:SetTargetSpeed( 15 )
        if not self.AnimationManipulator then
            local myBlueprint = self:GetBlueprint()
            #LOG( 'it is ', repr(myBlueprint.Display.AnimationOpen) )
            self.AnimationManipulator = CreateAnimator(self)
            self.AnimationManipulator:PlayAnim( myBlueprint.Display.AnimationOpen )
            self.Trash:Add( self.AnimationManipulator )
        end
        self.AnimationManipulator:SetRate(1)
        
        if self.ShieldEffectsBag then
            for k, v in self.ShieldEffectsBag do
                v:Destroy()
            end
		    self.ShieldEffectsBag = {}
		end
        for k, v in self.ShieldEffects do
            table.insert( self.ShieldEffectsBag, CreateAttachedEmitter( self, 'AttachPoint', self:GetArmy(), v ) )
        end
    end,

    OnShieldDisabled = function(self)
        TShieldStructureUnit.OnShieldDisabled(self)
        KillThread( self.DestroyManipulatorsThread )
        self.DestroyManipulatorsThread = self:ForkThread( self.DestroyManipulators )
        
        if self.ShieldEffectsBag then
            for k, v in self.ShieldEffectsBag do
                v:Destroy()
            end
		    self.ShieldEffectsBag = {}
		end
    end,

    DestroyManipulators = function(self)
        if self.RotatorManipulator then
            self.RotatorManipulator:SetTargetSpeed( 0 )
            # Unless it goes smoothly back to its original position,
            # it will snap there when the manipulator is destroyed.
            # So for now, we'll just keep it on.
            #WaitFor( self.RotatorManipulator )
            #self.RotatorManipulator:Destroy()
            #self.RotatorManipulator = nil
        end
        if self.AnimationManipulator then
            self.AnimationManipulator:SetRate(-1)
            WaitFor( self.AnimationManipulator )
            self.AnimationManipulator:Destroy()
            self.AnimationManipulator = nil
        end
    end,
}

TypeClass = UEB2102