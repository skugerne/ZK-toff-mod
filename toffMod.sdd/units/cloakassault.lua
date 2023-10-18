return { cloakassault = {
  name                   = [[Sweeper]],
  description            = [[Assault Bot]],
  acceleration           = 0.6,
  brakeRate              = 3.6,
  buildPic               = [[cloakassault.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 7]],
  collisionVolumeScales  = [[35 50 35]],
  collisionVolumeType    = [[cylY]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[68 68 68]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    modelradius    = [[12]],
    cus_noflashlight = 1,
    bait_level_default = 0,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 2857,
  iconType               = [[kbotassault]],
  leaveTracks            = true,
  maxSlope               = 36,
  maxWaterDepth          = 22,
  metalCost              = 470,
  movementClass          = [[KBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING SUB]],
  objectName             = [[spherezeus.s3o]],
  script                 = [[cloakassault.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:zeusmuzzle]],
      [[custom:zeusgroundflash]],
    },

  },

  sightEmitHeight        = 35,
  sightDistance          = 385,
  speed                  = 51,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 0.8,
  trackType              = [[ComTrack]],
  trackWidth             = 24,
  turnRate               = 1680,
  upright                = true,

  weapons                = {

    {
      def                = [[FLECHETTE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs             = {

    FLECHETTE = {
      name                    = [[Flechette]],
      areaOfEffect            = 32,
      burst                   = 3,
      burstRate               = 0.033,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        light_camera_height = 2000,
        light_color = [[0.3 0.3 0.05]],
        light_radius = 120,
      },

      damage                  = {
        default = 26,
      },

      duration                = 0.02,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_YELLOW]],
      fireStarter             = 50,
      heightMod               = 1,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      projectiles             = 3,
      range                   = 564,
      reloadtime              = 0.2,
      rgbColor                = [[0 0 1]],
      soundHit                = [[impacts/shotgun_impactv5]],
      soundStart              = [[weapon/shotgun_firev4]],
      soundStartVolume        = 0.5,
      soundTrigger            = true,
      sprayangle              = 1500,
      thickness               = 2,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 880,
    }

  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[spherezeus_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
