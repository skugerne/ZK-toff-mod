return { tankriot = {
  name                = [[Ogre]],
  description         = [[Heavy Riot Support Tank]],
  acceleration        = 0.132,
  brakeRate           = 0.516,
  builder             = false,
  buildPic            = [[tankriot.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[83 83 83]],
  selectionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    bait_level_default = 0,
    cus_noflashlight  = 1,
    selection_scale   = 0.92,
    aim_lookahead     = 160,
    set_target_range_buffer = 40,

    outline_x = 110,
    outline_y = 110,
    outline_yoff = 13.5,
  },

  sfxtypes            = {

    explosiongenerators = {
      [[custom:wolvmuzzle0]],
      [[custom:wolvmuzzle1]],
      [[custom:wolvflash]],
    },

  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 4,
  footprintZ          = 4,
  health              = 2800,2,
  iconType            = [[tankriot]],
  leaveTracks         = true,
  maxSlope            = 18,
  maxWaterDepth       = 22,
  metalCost           = 800,
  movementClass       = [[TANK4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE SUB]],
  objectName          = [[corbanish.s3o]],
  script              = [[tankriot.lua]],
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 220,
  speed               = 40,
  trackOffset         = 8,
  trackStrength       = 10,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 50,
  turninplace         = 0,
  turnRate            = 568,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[BOT_ROCKET]],
      mainDir            = [[0 0 1]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    BOT_ROCKET = {
      name                    = [[Rocket]],
      accuracy                = 600,
      areaOfEffect            = 76,
      burnblow                = true,
      cegTag                  = [[rocket_trail_bar]],
      craterBoost             = 0,
      craterMult              = 0,

      customParams        = {
        reaim_time = 1, -- Keep aiming at target to prevent sideways gun, which can lead to teamkill.
        burst = Shared.BURST_RELIABLE,

        light_camera_height = 1600,
        light_color = [[0.90 0.65 0.30]],
        light_radius = 250,
        reload_move_mod_time = 3,
      },

      damage                  = {
        default = 332,
      },

      explosionGenerator      = [[custom:tremor]],
      fireStarter             = 70,
      flightTime              = 2.45,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[corbanishrk.s3o]],
      noSelfDamage            = true,
      range                   = 800,
      reloadtime              = 2.5,
      smokeTrail              = false,
      soundHit                = [[weapon/missile/sabot_hit]],
      soundHitVolume          = 8,
      soundStart              = [[weapon/missile/sabot_fire]],
      soundStartVolume        = 7,
      startVelocity           = 1200,
      tracks                  = false,
      turret                  = true,
      weaponAcceleration      = 2000,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 200,
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[corbanish_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3a.s3o]],
    },

  },

} }
