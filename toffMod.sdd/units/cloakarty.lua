return { cloakarty = {
  name                   = [[Sling]],
  description            = [[Light Artillery Bot]],
  acceleration           = 0.75,
  brakeRate              = 4.5,
  buildPic               = [[cloakarty.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[28 43 28]],
  collisionVolumeType    = [[cylY]],
  corpse                 = [[DEAD]],

  customParams           = {
    bait_level_default = 0,
    modelradius       = [[14]],
    selection_scale   = 0.85,

    outline_x = 80,
    outline_y = 80,
    outline_yoff = 15.5,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 440,
  iconType               = [[kbotarty]],
  leaveTracks            = true,
  maxSlope               = 36,
  maxWaterDepth          = 22,
  metalCost              = 350,
  movementClass          = [[KBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP SMALL]],
  objectName             = [[cloakarty.s3o]],
  script                 = [[cloakarty.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:THUDMUZZLE]],
      [[custom:THUDSHELLS]],
      [[custom:THUDDUST]],
    },

  },

  sightDistance          = 460,
  speed                  = 45,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 0.9,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 1800,
  upright                = true,

  weapons                = {

    {
      def                = [[COR_GOL]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs          = {

    COR_GOL             = {
      name                    = [[Tankbuster Cannon]],
      areaOfEffect            = 300,
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
        default = 300.1,
      },

      explosionGenerator      = [[custom:TESS]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 1000,
      reloadtime              = 9.5,
      soundHit                = [[weapon/cannon/supergun_bass_boost]],
      soundStart              = [[weapon/cannon/pillager_fire]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 300,
    },
    
  

  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[cloakarty_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
