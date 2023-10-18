return { amphsupport = {
  name                   = [[Bulkhead]],
  description            = [[Deployable Amphibious Fire Support (must stop to fire)]],
  acceleration           = 0.4,
  activateWhenBuilt      = true,
  brakeRate              = 2.4,
  builder                = false,
  buildPic               = [[amphsupport.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND SINK]],
  collisionVolumeOffsets = [[0 6 0]],
  collisionVolumeScales  = [[38 50 38]],
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    bait_level_default = 0,
    amph_regen        = 15,
    amph_submerged_at = 30,
    sink_on_emp       = 0,
    floattoggle       = [[1]],
    modelradius       = [[13]],
    aimposoffset      = [[0 10 0]],
    chase_everything  = [[1]], -- Does not get stupidtarget added to noChaseCats
    selection_scale   = 0.85,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 2540,
  iconType               = [[amphsupport]],
  leaveTracks            = true,
  maxSlope               = 36,
  metalCost              = 280,
  movementClass          = [[AKBOT3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB]],
  objectName             = [[amphdeploy.s3o]],
  script                 = [[amphsupport.lua]],
  pushResistant          = 0,
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:RAIDDUST]],
      [[custom:THUDDUST]],
      [[custom:bubbles_small]],
    },

  },

  sightDistance          = 660,
  sonarDistance          = 660,
  speed                  = 38,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 32,
  turnRate               = 1100,
  upright                = true,

  weapons                = {
    {
      def                = [[EMG]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
    {
      def                = [[FAKE_CANNON]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
  },

  weaponDefs             = {

    EMG = {
      name                    = [[Pulse MG]],
      alphaDecay              = 0.1,
      areaOfEffect            = 8,
      burst                   = 3,
      burstrate               = 0.1,
      colormap                = [[1 0.95 0.4 1   1 0.95 0.4 1    0 0 0 0.01    1 0.7 0.2 1]],
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
        light_camera_height = 1200,
        light_color = [[0.8 0.76 0.38]],
        light_radius = 120,
      },

      damage                  = {
        default = 8.5,
      },

      explosionGenerator      = [[custom:FLASHPLOSION]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 1,
      leadLimit               = 0,
      noGap                   = false,
      noSelfDamage            = true,
      range                   = 750,
      reloadtime              = 0.1,
      rgbColor                = [[1 0 0.]],
      separation              = 3,
      size                    = 2,
      sizeDecay               = 0,
      soundStart              = [[weapon/emg]],
      soundStartVolume        = 4,
      sprayAngle              = 1180,
      stages                  = 10,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 500,
    },

    FAKE_CANNON = {
      name                    = [[Fake Plasma Cannon]],
      accuracy                = 480,
      areaOfEffect            = 40,
      avoidFriendly           = false,
      craterBoost             = 0,
      craterMult              = 0,

      customparams = {
        bogus = 1,
      },

      damage                  = {
        default = 165.1,
        planes  = 165.1,
      },

      edgeEffectiveness       = 0.1,
      explosionGenerator      = [[custom:INGEBORG]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      myGravity               = 0.12,
      noSelfDamage            = true,
      range                   = 600,
      reloadtime              = 1.8,
      soundHit                = [[explosion/ex_med5]],
      soundStart              = [[weapon/cannon/cannon_fire1]],
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 320,
    },

  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[amphdeploy_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
    },

  },

} }
