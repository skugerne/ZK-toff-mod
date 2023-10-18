return { amphraid = {
  name                   = [[Duck]],
  description            = [[Amphibious Raider (Anti-Sub, Undersea Fire)]],
  acceleration           = 0.54,
  activateWhenBuilt      = true,
  brakeRate              = 2.25,
  buildPic               = [[amphraid.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND SINK TOOFAST SMALL]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[42 42 42]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    bait_level_default = 0,
    amph_regen        = 5,
    amph_submerged_at = 40,
    aim_lookahead     = 80,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  health                 = 480,
  iconType               = [[amphtorpraider]],
  leaveTracks            = true,
  maxSlope               = 36,
  metalCost              = 48,
  movementClass          = [[AKBOT2]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP]],
  objectName             = [[amphraider3.s3o]],
  script                 = [[amphraid.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {
    explosiongenerators = {
    },
  },

  sightDistance          = 760,
  sonarDistance          = 560,
  speed                  = 55,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 2100,
  upright                = true,

  weapons                = {
    {
      def                = [[TORPMISSILE]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[SWIM FIXEDWING HOVER LAND TURRET FLOAT SHIP GUNSHIP]],
    },
    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[SWIM HOVER SINK FLOAT SHIP]],
    },
    
  },

  weaponDefs          = {

    TORPMISSILE = {
      name                    = [[Light Gauss Cannon]],
      alphaDecay              = 0.12,
      areaOfEffect            = 16,
      avoidfeature            = false,
      bouncerebound           = 0.15,
      bounceslip              = 1,
      burst                   = 1,
      cegTag                  = [[gauss_tag_l]],
      craterBoost             = 0,
      craterMult              = 0,

      customParams = {
        burst               = Shared.BURST_RELIABLE,
        single_hit          = true,
        light_camera_height = 1200,
        light_radius        = 180,
      },
      
      damage                  = {
        default = 228.01,
      },
      
      explosionGenerator      = [[custom:gauss_hit_l]],
      groundbounce            = 1,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      leadLimit               = 0,
      noExplode               = true,
      noSelfDamage            = true,
      numbounce               = 40,
      range                   = 770,
      reloadtime              = 6,
      rgbColor                = [[1 0 0]],
      separation              = 0.5,
      size                    = 0.8,
      sizeDecay               = -0.1,
      soundHit                = [[weapon/gauss_hit]],
      soundHitVolume          = 2.5,
      soundStart              = [[weapon/gauss_fire]],
      soundTrigger            = true,
      soundStartVolume        = 2,
      sprayangle              = 400,
      stages                  = 32,
      turret                  = true,
      waterweapon             = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 400,
    },

    TORPEDO = {
      name                    = [[Torpedo]],
      areaOfEffect            = 32,
      avoidFriendly           = false,
      bouncerebound           = 0.5,
      bounceslip              = 0.8,
      canAttackGround         = false,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
      cegTag                  = [[torpedo_trail]],

      customparams = {
        radar_homing_distance = 200,
        stays_underwater = 1,
      },

      damage                  = {
        default = 80.01,
      },

      edgeEffectiveness       = 0.99,
      explosionGenerator      = [[custom:TORPEDO_HIT]],
      flightTime              = 1.3,
      groundbounce            = 1,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      leadlimit               = 0,
      model                   = [[wep_m_ajax.s3o]],
      numbounce               = 4,
      noSelfDamage            = true,
      projectiles             = 1,
      range                   = 160,
      reloadtime              = 2,
      soundHit                = [[explosion/wet/ex_underwater]],
      --soundStart              = [[weapon/torpedo]],
      soundStartVolume        = 0.7,
      soundHitVolume          = 0.7,
      startVelocity           = 140,
      tolerance               = 1000,
      tracks                  = true,
      turnRate                = 25000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 75,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 240,
    },

  },

  featureDefs            = {

    DEAD      = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[amphraider3_dead.s3o]],
    },

    HEAP      = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
