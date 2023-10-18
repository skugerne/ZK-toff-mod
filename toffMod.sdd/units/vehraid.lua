return { vehraid = {
  name                   = [[Scorcher]],
  description            = [[Raider Rover]],
  acceleration           = 0.342,
  brakeRate              = 0.84,
  builder                = false,
  buildPic               = [[vehraid.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND SMALL TOOFAST]],
  collisionVolumeOffsets = [[0 -5 0]],
  collisionVolumeScales  = [[26 26 36]],
  collisionVolumeType    = [[cylZ]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[42 42 51]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    modelradius        = [[10]],
    aim_lookahead      = 80,
    set_target_range_buffer = 30,
    set_target_speed_buffer = 8,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  health                 = 780,
  iconType               = [[vehicleraider]],
  leaveTracks            = true,
  maxSlope               = 18,
  maxWaterDepth          = 22,
  metalCost              = 300,
  movementClass          = [[TANK2]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[corgator_512.s3o]],
  script                 = [[vehraid.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:BEAMWEAPON_MUZZLE_ORANGE_SMALL]],
    },

  },
  sightDistance          = 560,
  speed                  = 101,
  trackOffset            = 5,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 28,
  turninplace            = 0,
  turnRate               = 1125,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[EMG]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    EMG = {
      name                    = [[Pulse MG]],
      alphaDecay              = 0.1,
      areaOfEffect            = 8,
      burst                   = 1,
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
        default = 32.5,
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
      range                   = 770,
      reloadtime              = 0.3,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 3,
      size                    = 1,
      sizeDecay               = 0,
      soundStart              = [[weapon/cannon/outlaw_gun]],
      soundStartVolume        = 6,
      sprayAngle              = 1180,
      stages                  = 10,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 900,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[gatorwreck.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
