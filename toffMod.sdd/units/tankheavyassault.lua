return { tankheavyassault = {
  name                = [[Cyclops]],
  description         = [[Very Heavy Tank Buster]],
  acceleration        = 0.17,
  brakeRate           = 0.624,
  builder             = false,
  buildPic            = [[tankheavyassault.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[96 96 96]],
  selectionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    bait_level_default = 0,
    decloak_footprint     = 5,

    outline_x = 110,
    outline_y = 110,
    outline_yoff = 13.5,
  },

  explodeAs           = [[BIG_UNIT]],
  footprintX          = 4,
  footprintZ          = 4,
  health              = 13000,
  iconType            = [[tankskirm]],
  leaveTracks         = true,
  maxSlope            = 18,
  maxWaterDepth       = 22,
  metalCost           = 200,
  movementClass       = [[TANK4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[corgol_512.s3o]],
  script              = [[tankheavyassault.lua]],
  selfDestructAs      = [[BIG_UNIT]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
    },

  },
  sightDistance       = 240,
  speed               = 57,
  trackOffset         = 8,
  trackStrength       = 10,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 50,
  turninplace         = 0,
  turnRate            = 500,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[COR_GOL]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },
    {
      def                = [[LASER]],
      badTargetCategory  = [[FIXEDWING UNARMED]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs          = {

    COR_GOL             = {
      name                    = [[Tankbuster Cannon]],
      areaOfEffect            = 200,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        burst = Shared.BURST_RELIABLE,
        gatherradius = [[105]],
        smoothradius = [[70]],
        smoothmult   = [[0.4]],
        force_ignore_ground = [[1]],
        
        light_color = [[3 2.33 1.5]],
        light_radius = 150,
      },
      
      damage                  = {
        default = 700.1,
      },

      explosionGenerator      = [[custom:lrpc_expl]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 600,
      reloadtime              = 3.5,
      soundHit                = [[weapon/cannon/supergun_bass_boost]],
      soundStart              = [[weapon/cannon/rhino]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 270,
    },
    
    LASER = {
      name                    = [[Mini Laser]],
      accuracy                = 1400,
      areaOfEffect            = 8,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
        light_camera_height = 1200,
        light_radius = 120,
      },

      damage                  = {
        default = 8.64,
        planes  = 8.64,
      },

      duration                = 0.02,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 50,
      heightMod               = 1,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.2,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 770,
      reloadtime              = 0.2,
      rgbColor                = [[0 1 0]],
      soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/laser/lasercannon_fire]],
      soundTrigger            = true,
      thickness               = 2.5,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 880,
    },

  },


  featureDefs         = {

    DEAD       = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[golly_d.s3o]],
    },

    
    HEAP       = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
    },

  },

} }
