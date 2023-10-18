return { spideremp = {
  name                   = [[Venom]],
  description            = [[Lightning Riot Spider]],
  acceleration           = 0.78,
  brakeRate              = 4.68,
  buildPic               = [[spideremp.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[38 38 38]],
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    aimposoffset   = [[0 0 0]],
    midposoffset   = [[0 -6 0]],
    bait_level_default = 0,
    modelradius    = [[19]],
    aim_lookahead  = 100,
    set_target_range_buffer = 30,
    set_target_speed_buffer = 8,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 700,
  iconType               = [[spiderriotspecial]],
  leaveTracks            = true,
  maxSlope               = 72,
  maxWaterDepth          = 22,
  metalCost              = 250,
  movementClass          = [[TKBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[venom.s3o]],
  script                 = [[spideremp.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:YELLOW_LIGHTNING_MUZZLE]],
      [[custom:YELLOW_LIGHTNING_GROUNDFLASH]],
    },

  },

  sightDistance          = 440,
  speed                  = 64,
  trackOffset            = 0,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointyShort]],
  trackWidth             = 54,
  turnRate               = 1920,

  weapons                = {

    {
      def                = [[EMG]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER FIXEDWING GUNSHIP]],
    },

  },

  weaponDefs             = {

    EMG           = {
      name                    = [[Anti-Air Autocannon]],
      accuracy                = 712,
      alphaDecay              = 0.7,
      areaOfEffect            = 8,
      canattackground         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

      customParams              = {
        isaa = [[1]],
        
        light_camera_height = 1600,
        light_color = [[0.9 0.86 0.45]],
        light_radius = 140,
      },

      damage                  = {
        default = 8,8,
        planes  = 5.8,
      },

      explosionGenerator      = [[custom:ARCHPLOSION]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.8,
      interceptedByShieldType = 1,
      proximityPriority       = 4,
      range                   = 700,
      reloadtime              = 0.1,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 3.5,
      soundStart              = [[weapon/cannon/brawler_emg]],
      stages                  = 10,
      sweepfire               = false,
      tolerance               = 8192,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1000,
    },
  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      collisionVolumeOffsets = [[0 0 0]],
      collisionVolumeScales  = [[40 30 50]],
      collisionVolumeType    = [[ellipsoid]],
      object           = [[venom_wreck.s3o]],
    },
    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

} }
