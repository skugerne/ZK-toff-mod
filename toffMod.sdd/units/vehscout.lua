return { vehscout = {
  name                   = [[Dart]],
  description            = [[Disruptor Raider/Scout Rover]],
  acceleration           = 0.84,
  brakeRate              = 1.866,
  builder                = false,
  buildPic               = [[vehscout.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND SMALL TOOFAST]],
  collisionVolumeOffsets = [[0 0 2]],
  collisionVolumeScales  = [[14 14 40]],
  collisionVolumeType    = [[cylZ]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[38 38 45]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    modelradius    = [[7]],
    aim_lookahead  = 80,
  },

  explodeAs              = [[SMALL_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  health                 = 120,
  iconType               = [[vehiclescout]],
  leaveTracks            = true,
  maxSlope               = 18,
  maxWaterDepth          = 22,
  metalCost              = 80,
  movementClass          = [[TANK2]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[vehscout.s3o]],
  script                 = [[vehscout.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],
  sightDistance          = 660,
  speed                  = 152.7,
  trackOffset            = 0,
  trackStrength          = 1,
  trackStretch           = 1,
  trackType              = [[Motorbike]],
  trackWidth             = 24,
  turninplace            = 0,
  turnRate               = 1755,
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
      range                   = 700,
      reloadtime              = 0.8,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 3,
      size                    = 1,
      sizeDecay               = 0,
      soundStart              = [[weapon/cannon/outlaw_gun]],
      soundStartVolume        = 4,
      sprayAngle              = 1180,
      stages                  = 10,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 500,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = false,
      collisionVolumeOffsets = [[0 0 2]],
      collisionVolumeScales  = [[14 14 40]],
      collisionVolumeType    = [[cylZ]],
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[vehscout_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

} }
