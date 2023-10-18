return { hoverassault = {
  name                = [[Halberd]],
  description         = [[Blockade Runner Hover]],
  acceleration        = 0.288,
  activateWhenBuilt   = true,
  brakeRate           = 0.516,
  builder             = false,
  buildPic            = [[hoverassault.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[HOVER TOOFAST]],
  collisionVolumeOffsets = [[0 -8 0]],
  collisionVolumeScales  = [[30 34 36]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],

  customParams        = {
    bait_level_default = 0,
    bait_level_target_armor = 1,
    modelradius       = [[25]],
    turnatfullspeed_hover = [[1]],
  },

  damageModifier      = 0.333,
  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  health              = 1550,
  iconType            = [[hoverassault]],
  maxSlope            = 36,
  metalCost           = 510,
  movementClass       = [[HOVER3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB DRONE]],
  objectName          = [[hoverassault.s3o]],
  script              = [[hoverassault.lua]],
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:HEAVYHOVERS_ON_GROUND]],
      [[custom:plasma_cannon_muzzle_blue]],
    },

  },

  sightDistance       = 385,
  sonarDistance       = 385,
  speed               = 96,
  turninplace         = 0,
  turnRate            = 985,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[SHOTGUN]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs             = {

    SHOTGUN = {
      name                    = [[Shotgun]],
      areaOfEffect            = 32,
      burst                   = 4,
      burstRate               = 0.033,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
      
      customParams            = {
          muzzleEffectFire = [[custom:HEAVY_CANNON_MUZZLE]],
          miscEffectFire = [[custom:RIOT_SHELL_L]],
      },
      
      damage                  = {
          default = 36,
          planes  = 36,
      },
      
      duration                = 0.02,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_YELLOW]],
      fireStarter             = 50,
      heightMod               = 1,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      projectiles             = 4,
      range                   = 505,
      reloadtime              = 3,
      rgbColor                = [[0 0 1]],
      soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/cannon/cannon_fire4]],
      soundStartVolume        = 0.6,
      soundTrigger            = true,
      sprayangle              = 2400,
      thickness               = 2,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 880,
     },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[hoverassault_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
    },

  },

} }
