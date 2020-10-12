-----------------------------------------------------------------
-- File     : /cdimage/lua/FBPNTProjectiles.lua
-- Author(s): CDRMV 
-- Summary  :
-- Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
-----------------------------------------------------------------

local Projectile = import('/lua/sim/projectile.lua').Projectile
local DefaultProjectileFile = import('/lua/sim/defaultprojectiles.lua')
local EmitterProjectile = DefaultProjectileFile.EmitterProjectile
local SingleBeamProjectile = DefaultProjectileFile.SingleBeamProjectile
local MultiPolyTrailProjectile = DefaultProjectileFile.MultiPolyTrailProjectile
local EffectTemplate = import('/lua/EffectTemplates.lua')

StationaryFlamethrower01 = Class(EmitterProjectile) {
    FxTrails = {'/mods/Future Battlefield Pack Defenses/Effects/Emitters/Stationary_FlamerthrowerTrailFX.bp',},
    
    FxImpactTrajectoryAligned = false,

    FxImpactUnit = EffectTemplate.TNapalmCarpetBombHitLand01,
    FxImpactProp = EffectTemplate.TNapalmCarpetBombHitLand01,
    FxImpactLand = EffectTemplate.TNapalmCarpetBombHitLand01,
    FxImpactWater = EffectTemplate.TNapalmCarpetBombHitWater01,
    FxImpactUnderWater = {},
}
StationaryFlamethrower02 = Class(EmitterProjectile) {
    FxTrails = {'/mods/Future Battlefield Pack Defenses/Effects/Emitters/Stationary_FlamerthrowerTrailFX.bp',},
       FxTrailScale = 0.5,
    
    FxImpactTrajectoryAligned = false,

    FxImpactUnit = EffectTemplate.TNapalmCarpetBombHitLand01,
    FxImpactProp = EffectTemplate.TNapalmCarpetBombHitLand01,
    FxImpactLand = EffectTemplate.TNapalmCarpetBombHitLand01,
    FxImpactWater = EffectTemplate.TNapalmCarpetBombHitWater01,
    FxImpactUnderWater = {},
    FxLandHitScale = 0.5,
    FxPropHitScale = 0.5,
    FxUnitHitScale = 0.5,
    FxNoneHitScale = 0.5,
}

StationaryBlueLightLaserProjectile = Class(MultiPolyTrailProjectile) {

    PolyTrails = {
    		'/mods/Future Battlefield Pack Defenses/effects/Emitters/Stationary_Laserblue001_emit.bp',
	},
	PolyTrailOffset = {0,0},

    # Hit Effects
    FxImpactUnit = EffectTemplate.TRiotGunHitUnit01,
    FxImpactProp = EffectTemplate.TRiotGunHitUnit01,
    FxImpactLand = EffectTemplate.TRiotGunHit01,
    FxImpactAirUnit = EffectTemplate.FireCloudSml04,
    FxImpactNone = EffectTemplate.FireCloudSml04, 
    FxImpactWater = EffectTemplate.WaterSplash01,
    FxImpactUnderWater = {},
}

StationaryBlueLaserProjectile01 = Class(MultiPolyTrailProjectile) {

    PolyTrails = {
    		'/mods/Future Battlefield Pack Defenses/effects/Emitters/Stationary_Laserblue01_emit.bp',
	},
	PolyTrailOffset = {0,0},

    # Hit Effects
    FxImpactUnit = EffectTemplate.TRiotGunHitUnit01,
    FxImpactProp = EffectTemplate.TRiotGunHitUnit01,
    FxImpactLand = EffectTemplate.TRiotGunHit01,
    FxImpactAirUnit = EffectTemplate.FireCloudSml04,
    FxImpactNone = EffectTemplate.FireCloudSml04, 
    FxImpactWater = EffectTemplate.WaterSplash01,
    FxImpactUnderWater = {},
}

StationaryBlueLaserProjectile02 = Class(MultiPolyTrailProjectile) {

    PolyTrails = {
    		'/mods/Future Battlefield Pack Defenses/effects/Emitters/Stationary_Laserblue02_emit.bp',
	},
	PolyTrailOffset = {0,0},

    # Hit Effects
    FxImpactUnit = EffectTemplate.TRiotGunHitUnit01,
    FxImpactProp = EffectTemplate.TRiotGunHitUnit01,
    FxImpactLand = EffectTemplate.TRiotGunHit01,
    FxImpactAirUnit = EffectTemplate.FireCloudSml04,
    FxImpactNone = EffectTemplate.FireCloudSml04, 
    FxImpactWater = EffectTemplate.WaterSplash01,
    FxImpactUnderWater = {},
}

StationaryTFreezerGrenade = Class(MultiPolyTrailProjectile) {
    FxTrails= EffectTemplate.THeavyFragmentationGrenadeFxTrails,
    PolyTrails = EffectTemplate.TGaussCannonPolyTrail,
    PolyTrailOffset = {0,0},
    FxImpactUnit = EffectTemplate.TGaussCannonHitUnit01,
    FxImpactProp = EffectTemplate.TGaussCannonHitUnit01,
	FxImpactWater = EffectTemplate.WaterSplash01,
    FxImpactLand = EffectTemplate.CArtilleryHit01,
    FxTrailOffset = 0,
    FxImpactUnderWater = {},
}

StationaryTHellfireMissile = Class(SingleBeamProjectile) {
    BeamName = '/effects/emitters/missile_munition_exhaust_beam_01_emit.bp',
    FxImpactUnit = EffectTemplate.TMissileHit01,
    FxImpactLand = EffectTemplate.TMissileHit01,
    FxImpactProp = EffectTemplate.TMissileHit01,
	FxImpactWater = EffectTemplate.WaterSplash01,
    FxTrails = EffectTemplate.TMissileExhaust03,
    FxTrailOffset = -1,
    FxImpactUnderWater = {},
}

StationaryTHeavyMaserCannonProjectile = Class(EmitterProjectile) {
    FxTrails = 
	{
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_01_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_02_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_03_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_04_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrails_01_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrails_02_emit.bp',
	},
   	FxTrailScale = 0.5,
    FxImpactTrajectoryAligned = false,
    FxImpactUnit = EffectTemplate.TPlasmaCannonHeavyHitUnit01,
    FxImpactProp = EffectTemplate.TPlasmaCannonHeavyHitUnit01,
    FxImpactLand = EffectTemplate.TPlasmaCannonHeavyHit01,
    FxImpactUnderWater = {},
    FxLandHitScale = 0.7,
    FxPropHitScale = 0.7,
    FxUnitHitScale = 0.7,
    FxNoneHitScale = 0.7,
    FxTrailOffset = 0,
}

StationaryTExperimentalMaserCannonProjectile = Class(EmitterProjectile) {
    FxTrails = 
	{
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_01_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_02_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_03_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrail_04_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrails_01_emit.bp',
		'/mods/Future Battlefield Pack Defenses/Effects/Emitters/stationary_maser_heavy_cannon_fxtrails_02_emit.bp',
	},
   	FxTrailScale = 0.5,
    FxImpactTrajectoryAligned = false,
    FxImpactUnit = EffectTemplate.TPlasmaCannonHeavyHitUnit01,
    FxImpactProp = EffectTemplate.TPlasmaCannonHeavyHitUnit01,
    FxImpactLand = EffectTemplate.TPlasmaCannonHeavyHit01,
    FxImpactUnderWater = {},
    FxLandHitScale = 0.7,
    FxPropHitScale = 0.7,
    FxUnitHitScale = 0.7,
    FxNoneHitScale = 0.7,
    FxTrailOffset = 0,
}

