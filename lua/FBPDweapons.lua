-----------------------------------------------------------------
-- File     : /cdimage/lua/FBPNTProjectiles.lua
-- Author(s): CDRMV 
-- Summary  :
-- Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
-----------------------------------------------------------------

local WeaponFile = import('/lua/sim/DefaultWeapons.lua')
local FBPDCollisionBeams = import('/mods/Future Battlefield Pack Defenses/lua/FBPDcollisionbeams.lua')
local BareBonesWeapon = WeaponFile.BareBonesWeapon
local DefaultBeamWeapon = WeaponFile.DefaultBeamWeapon
local DefaultProjectileWeapon = WeaponFile.DefaultProjectileWeapon
local EffectTemplate = import('/lua/EffectTemplates.lua')
local StationaryAtomicRayCollisionBeam = FBPDCollisionBeams.StationaryAtomicRayCollisionBeam
local StationaryReflectCollisionBeam = FBPDCollisionBeams.StationaryReflectCollisionBeam
local StationaryMiniBlueCollisionBeam = FBPDCollisionBeams.StationaryMiniBlueCollisionBeam
local StationaryElectricMaserCollisionBeam = FBPDCollisionBeams.StationaryElectricMaserCollisionBeam
local StationaryHeavyMaserCollisionBeam = FBPDCollisionBeams.StationaryHeavyMaserCollisionBeam
local StationaryExperimentalMaserCollisionBeam = FBPDCollisionBeams.StationaryExperimentalMaserCollisionBeam
local StationaryLightMaserCollisionBeam = FBPDCollisionBeams.StationaryLightMaserCollisionBeam
local StationaryMaserCollisionBeam = FBPDCollisionBeams.StationaryMaserCollisionBeam
local StationaryHyperMaserCollisionBeam = FBPDCollisionBeams.StationaryHyperMaserCollisionBeam
local StationaryDualMaserCollisionBeam = FBPDCollisionBeams.StationaryDualMaserCollisionBeam
local StationaryLightHyperMaserCollisionBeam = FBPDCollisionBeams.StationaryLightHyperMaserCollisionBeam
local TStationaryLightningCollisionBeam = FBPDCollisionBeams.TStationaryLightningCollisionBeam

TStationaryMiniBlueBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryMiniBlueCollisionBeam,
    FxMuzzleFlash = {'/mods/Future Battlefield Pack Defenses/effects/emitters/stationary_mini_blue_beam_muzzle_01_emit.bp'},
}

TStationaryLightningWeapon01 = Class(DefaultBeamWeapon) {
    BeamType = TStationaryLightningCollisionBeam,
    FxMuzzleFlash = {'/effects/emitters/cannon_muzzle_flash_01_emit.bp',},
}

TDFStationaryLaserArtWeapon = Class(DefaultProjectileWeapon) {
    FxMuzzleFlash = {'/effects/emitters/flash_02_emit.bp' },
}

TDFStationaryLaserLightWeapon = Class(DefaultProjectileWeapon) {
    FxMuzzleFlash = {'/effects/emitters/flash_02_emit.bp' },
    PolyTrail = {'/effects/emitters/aeon_laser_trail_01_emit.bp'},
}

ADFQuadLaserLightWeapon = Class(DefaultProjectileWeapon) {
    FxMuzzleFlash = {'/effects/emitters/flash_04_emit.bp' },
}

ADFLaserLightWeapon = Class(DefaultProjectileWeapon) {
    FxMuzzleFlash = {'/effects/emitters/flash_04_emit.bp' },
}

ADFSonicPulsarWeapon = Class(DefaultProjectileWeapon) {
    FxMuzzleFlash = {'/effects/emitters/flash_02_emit.bp' },
    FxMuzzleFlashScale = 0.5,
}

ADFLaserHeavyWeapon = Class(DefaultProjectileWeapon) {
    FxChargeMuzzleFlash = {},
}

TStationaryAtomicRayBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryAtomicRayCollisionBeam,
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        local army = self.unit:GetArmy()
        local bp = self:GetBlueprint()
        for k, v in self.FxUpackingChargeEffects do
            for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
            end
        end
        DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
    end,
}

TStationaryReflectBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryReflectCollisionBeam,
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        local army = self.unit:GetArmy()
        local bp = self:GetBlueprint()
        for k, v in self.FxUpackingChargeEffects do
            for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
            end
        end
        DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
    end,
}

TStationaryElectricMaserBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryElectricMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

TStationaryHyperMaserBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryHyperMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

TStationaryLightHyperMaserBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryLightHyperMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

TStationaryLightMaserBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryLightMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

TStationaryMaserBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

TStationaryDualMaserBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryDualMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

TStationaryHeavyMaserBeamWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryHeavyMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

TDFStationaryHeavyMaserCannonWeapon = Class(DefaultProjectileWeapon) {
    FxMuzzleFlash = {'/mods/Future Battlefield Pack Defenses/effects/emitters/mini_blue_beam_muzzle_01_emit.bp'},
}

TStationaryExperimentalMaserCannonWeapon = Class(DefaultBeamWeapon) {
    BeamType = StationaryExperimentalMaserCollisionBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = {},
    FxUpackingChargeEffectScale = 1,

    PlayFxWeaponUnpackSequence = function( self )
        if not self.ContBeamOn then
            local army = self.unit:GetArmy()
            local bp = self:GetBlueprint()
            for k, v in self.FxUpackingChargeEffects do
                for ek, ev in bp.RackBones[self.CurrentRackSalvoNumber].MuzzleBones do
                    CreateAttachedEmitter(self.unit, ev, army, v):ScaleEmitter(self.FxUpackingChargeEffectScale)
                end
            end
            DefaultBeamWeapon.PlayFxWeaponUnpackSequence(self)
        end
    end,
}

