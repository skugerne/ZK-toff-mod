return { tankcon = {
  name                   = [[Welder]],
  description            = [[Armed Construction Tank]],
  acceleration           = 0.4,
  brakeRate              = 18.0,
  buildDistance          = 180,
  builder                = true,

  buildoptions           = {
  },

  buildPic               = [[tankcon.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 6 0]],
  collisionVolumeScales  = [[34 18 46]],
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
    aimposoffset   = [[0 0 0]],
    midposoffset   = [[0 -4 0]],
    modelradius    = [[30]],
    selection_scale = 1.2,

    outline_x = 80,
    outline_y = 80,
    outline_yoff = 12.5,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  health                 = 2400,
  iconType               = [[builder]],
  leaveTracks            = true,
  maxSlope               = 18,
  maxWaterDepth          = 22,
  metalCost              = 405,
  movementClass          = [[TANK3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[welder.s3o]],
  script                 = [[tankcon.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
        [[custom:THUDMUZZLE]],
        [[custom:THUDSHELLS]],
        [[custom:THUDDUST]],
    },

  },

  showNanoSpray          = false,
  sightDistance          = 300,
  speed                  = 63,
  trackOffset            = 3,
  trackStrength          = 6,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 38,
  turninplace            = 0,
  turnRate               = 1000,
  workerTime             = 7.5,

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
        default = 10.5,
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
      reloadtime              = 0.1,
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
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[welder_dead.s3o]],
      collisionVolumeOffsets        = [[0 -2 0]],
      collisionVolumeScales         = [[34 18 46]],
      collisionVolumeType           = [[box]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3b.s3o]],
    },

  },

} }
