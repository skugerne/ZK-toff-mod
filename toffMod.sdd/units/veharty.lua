return { veharty = {
  name                = [[Badger]],
  description         = [[Artillery Minelayer Rover]],
  acceleration        = 0.168,
  brakeRate           = 0.96,
  builder             = false,
  buildPic            = [[veharty.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[63 63 63]],
  selectionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    selection_scale   = 0.85,
    bait_level_default = 0,

    outline_x = 80,
    outline_y = 80,
    outline_yoff = 12.5,
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  health              = 850,
  highTrajectory      = 1,
  iconType            = [[vehiclearty]],
  leaveTracks         = true,
  maneuverleashlength = [[650]],
  maxSlope            = 18,
  maxWaterDepth       = 22,
  metalCost           = 460,
  movementClass       = [[TANK3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName          = [[corwolv.s3o]],
  script              = "veharty.lua",
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:wolvmuzzle0]],
      [[custom:wolvmuzzle1]],
      [[custom:wolvflash]],
    },

  },
  sightDistance       = 160,
  speed               = 35.5,
  trackOffset         = 6,
  trackStrength       = 5,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 30,
  turninplace         = 0,
  turnRate            = 640, --NB: be wary about large turning circles wandering into HLT.
  workerTime          = 0,

  weapons             = {

    {
      def                = [[PLASMA]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs          = {

    PLASMA = {
      name                    = [[Rapid-Fire Plasma Artillery]],
      accuracy                = 300,
      areaOfEffect            = 70,
      avoidFeature            = false,
      avoidGround             = false,
      craterAreaOfEffect      = 5,
      craterBoost             = 0,
      craterMult              = 0,
      
      customParams            = {
        reaim_time = 15, -- Some sort of bug prevents firing.
        
        gatherradius     = [[240]],
        smoothradius     = [[120]],
        smoothmult       = [[0.5]],
        quickgather      = [[1]],
        lups_noshockwave = [[1]],
        
        light_ground_height = 200,
      },
      
      damage                  = {
        default = 645,
        planes  = 145,
      },
      
      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:tremor]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      myGravity               = 0.1,
      noSelfDamage            = false,
      range                   = 1260,
      reloadtime              = 6,
      soundHit                = [[weapon/cannon/cannon_hit2]],
      soundStart              = [[weapon/cannon/tremor_fire]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 420,
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[corwolv_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
    },

  },

} }
