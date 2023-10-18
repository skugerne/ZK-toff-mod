return { tankassault = {
  name                = [[Minotaur]],
  description         = [[Assault Tank]],
  acceleration        = 0.144,
  brakeRate           = 0.576,
  builder             = false,
  buildPic            = [[tankassault.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[50 50 50]],
  collisionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    bait_level_default = 0,
    aimposoffset      = [[0 0 0]],
    midposoffset      = [[0 0 0]],
    modelradius       = [[25]],
    selection_scale   = 0.92,

    outline_x = 110,
    outline_y = 110,
    outline_yoff = 13.5,
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 4,
  footprintZ          = 4,
  health              = 7600,
  iconType            = [[tankassault]],
  leaveTracks         = true,
  maxSlope            = 18,
  maxWaterDepth       = 22,
  metalCost           = 900,
  movementClass       = [[TANK4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB DRONE]],
  objectName          = [[correap.s3o]],
  script              = [[tankassault.lua]],
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:LARGE_MUZZLE_FLASH_FX]],
    },

  },
  sightDistance       = 206,
  speed               = 73.5,
  trackOffset         = 8,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 42,
  turninplace         = 0,
  turnRate            = 583,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[LASER]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    LASER = {
      name                    = [[High-Energy Laserbeam]],
      areaOfEffect            = 14,
      beamTime                = 0.15,
      beamttl                 = 1,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        burst = Shared.BURST_UNRELIABLE,

        light_color = [[0.5 0.5 1.5]],
        light_radius = 180,
      },

      damage                  = {
        default = 28.1,
        planes  = 28.1,
      },

      explosionGenerator      = [[custom:flash1bluedark]],
      fireTolerance           = 8192, -- 45 degrees
      fireStarter             = 90,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 10.4,
      leadLimit               = 18,
      minIntensity            = 1,
      noSelfDamage            = true,
      projectiles             = 2,
      range                   = 700,
      reloadtime              = 0.6,
      rgbColor                = [[1 0.1 0]],
      scrollSpeed             = 5,
      soundStart              = [[weapon/laser/heavy_laser3]],
      soundStartVolume        = 3,
      sweepfire               = false,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 3.4024486300101,
      tileLength              = 300,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 2250,
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      collisionVolumeOffsets = [[0 0 0]],
      collisionVolumeScales  = [[50 50 50]],
      collisionVolumeType    = [[ellipsoid]],
      object           = [[correap_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3b.s3o]],
    },

  },

} }
