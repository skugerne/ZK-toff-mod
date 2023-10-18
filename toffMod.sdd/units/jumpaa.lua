return { jumpaa = {
  name                = [[Toad]],
  description         = [[Heavy Anti-Air Jumper]],
  acceleration        = 0.54,
  brakeRate           = 1.2,
  buildPic            = [[jumpaa.png]],
  canMove             = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[30 48 30]],
  collisionVolumeType    = [[cylY]],
  corpse              = [[DEAD]],

  customParams        = {
    bait_level_default = 0,
    canjump            = 1,
    jump_range         = 400,
    jump_speed         = 6,
    jump_reload        = 10,
    jump_from_midair   = 0,
    modelradius    = [[15]],

    outline_x = 80,
    outline_y = 90,
    outline_yoff = 30,
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 2,
  footprintZ          = 2,
  health              = 2100,
  iconType            = [[jumpjetaa]],
  leaveTracks         = true,
  maxSlope            = 36,
  maxWaterDepth       = 22,
  metalCost           = 510,
  movementClass       = [[KBOT2]],
  moveState           = 0,
  noChaseCategory     = [[TERRAFORM LAND SINK TURRET SHIP SATELLITE SWIM FLOAT SUB HOVER]],
  objectName          = [[hunchback.s3o]],
  script              = [[jumpaa.lua]],
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 900, -- over the usual 660 limit on purpose (partly due to hitscan lasers, but also because it's expensive and slow and otherwise only has jump)
  speed               = 60.5,
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ComTrack]],
  trackWidth          = 28,
  turnRate            = 1680,
  upright             = true,

  weapons             = {

    {
      def                = [[NAPALM_BOMBLET]],
      --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[GUNSHIP LAND SINK TURRET SHIP SWIM FLOAT HOVER FIXEDWING]],
    },

    {
      def                = [[EMG]],
      --badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT HOVER GUNSHIP]],
    },

  },

  

  weaponDefs          = {

    NAPALM_BOMBLET = {
      name                    = [[Flame Bomb]],
      accuracy                = 2000,
      areaOfEffect            = 100,
      avoidFeature            = true,
      avoidFriendly           = true,
      burnblow                = true,
      cegTag                  = [[flamer_koda]],
      craterBoost             = 0,
      craterMult              = 0,

      customParams              = {
        setunitsonfire = "1",
        burnchance     = "1",
        burntime       = 30,
        force_ignore_ground = [[1]],

        area_damage = 1,
        area_damage_radius = 54,
        area_damage_dps = 43,
        area_damage_plateau_radius = 20,
        area_damage_duration = 1.6,
        
        light_color = [[1.6 0.8 0.32]],
        light_radius = 320,
      },
      
      damage                  = {
        default = 30,
        planes  = 30,
      },

      explosionGenerator      = [[custom:napalm_koda_small]],
      fireStarter             = 65,
      flameGfxTime            = 0.1,
      impulseBoost            = 0,
      impulseFactor           = 0.2,
      interceptedByShieldType = 1,
      leadLimit               = 90,
      model                   = [[wep_b_fabby.s3o]],
      myGravity               = 0.2,
      noSelfDamage            = true,
      range                   = 464,
      reloadtime              = 0.5,
      soundHit                = [[FireHit]],
      soundHitVolume          = 5,
      soundStart              = [[FireLaunch]],
      soundStartVolume        = 5,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 520,
    },


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
        default = 29.5,
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


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[hunchback_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
    },

  },

} }
