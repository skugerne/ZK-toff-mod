return { shieldarty = {
  name                   = [[Racketeer]],
  description            = [[Disarming Artillery]],
  acceleration           = 0.75,
  brakeRate              = 4.5,
  buildPic               = [[SHIELDARTY.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  corpse                 = [[DEAD]],

  customParams           = {
    bait_level_default = 1,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  health                 = 780,
  iconType               = [[walkerlrarty]],
  leaveTracks            = true,
  maxSlope               = 36,
  maxWaterDepth          = 22,
  metalCost              = 490,
  movementClass          = [[KBOT2]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP UNARMED]],
  objectName             = [[dominator.s3o]],
  script                 = [[shieldarty.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:STORMMUZZLE]],
      [[custom:STORMBACK]],
    },

  },

  sightDistance          = 225,
  speed                  = 32.5,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 2160,
  upright                = true,

  weapons                = {

    {
      def                = [[CORTRUCK_ROCKET]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },

  weaponDefs             = {
    
    CORTRUCK_ROCKET = {
      name                    = [[Kinetic Missile]],
      areaOfEffect            = 274,
      cegTag                  = [[raventrail]],
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,

      customParams        = {
        burst = Shared.BURST_RELIABLE,
        reaim_time = 15, -- Some script bug. It does not need fast aim updates anyway.
        light_camera_height = 2500,
        light_color = [[1 0.8 0.2]],
      },

      damage         = {
        default = 500.1,
      },

      texture1=[[null]], --flare, reference: http://springrts.com/wiki/Weapon_Variables#Texture_Tags
      --texture2=[[null]], --smoketrail
      --texture3=[[null]], --flame

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:DOT_Merl_Explo]],
      fireStarter             = 100,
      flightTime              = 10,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      metalpershot            = 0,
      model                   = [[wep_merl.s3o]],
      noSelfDamage            = true,
      range                   = 1000,
      reloadtime              = 10,
      smokeTrail              = false,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch_short]],
      soundStartVolume        = 10,
      soundHitVolume          = 10,
      tolerance               = 4000,
      turnrate                = 16000,
      weaponAcceleration      = 280,
      weaponTimer             = 2.1,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 8000,
    },
  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[dominator_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
