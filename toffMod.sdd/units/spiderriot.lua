return { spiderriot = {
  name                   = [[Redback]],
  description            = [[Riot Spider]],
  acceleration           = 0.66,
  brakeRate              = 3.96,
  buildPic               = [[spiderriot.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 5 0]],
  collisionVolumeScales  = [[40 36 48]],
  collisionVolumeType    = [[ellipsoid]],
  selectionVolumeOffsets = [[0 0 4]],
  selectionVolumeScales  = [[68 45 76]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    aimposoffset       = [[0 10 0]],
    aim_lookahead      = 80,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 1333,
  iconType               = [[spiderriot]],
  leaveTracks            = true,
  maxSlope               = 72,
  maxWaterDepth          = 22,
  metalCost              = 350,
  movementClass          = [[TKBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING SUB]],
  objectName             = [[spiderriot.s3o]],
  script                 = [[spiderriot.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 366,
  speed                  = 42.5,
  trackOffset            = 0,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointyShort]],
  trackWidth             = 55,
  turnRate               = 1938,

  weapons                = {

    {
      def                = [[SONICGUN]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },
  
  weaponDefs             = {

    SONICGUN         = {
      name                    = [[Sonic Blaster]],
      areaOfEffect            = 30,
      accuracy                = 700,
      avoidFeature            = true,
      avoidFriendly           = true,
      burnblow                = true,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
          slot = [[5]],
          muzzleEffectFire = [[custom:HEAVY_CANNON_MUZZLE]],
          miscEffectFire   = [[custom:RIOT_SHELL_L]],
          lups_explodelife = 1.5,
          lups_explodespeed = 0.44,
      },

      damage                  = {
          default = 25,
          planes  = 25,
      },
      
      cegTag                  = [[sonictrail]],
      explosionGenerator      = [[custom:sonic]],
      edgeEffectiveness       = 0.75,
      fireStarter             = 150,
      impulseBoost            = 60,
      impulseFactor           = 0.5,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 703,
      reloadtime              = 0.1,
      soundStart              = [[weapon/sonicgun2]],
      soundHit                = [[weapon/sonicgun_hit]],
      soundStartVolume        = 6,
      soundHitVolume          = 10,
      texture1                = [[sonic_glow]],
      texture2                = [[null]],
      texture3                = [[null]],
      rgbColor                = {0, 0.5, 1},
      thickness               = 3,
      corethickness           = 1,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 700,
      waterweapon             = true,
      duration                = 0.15,
  },

    
  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[tarantula_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3a.s3o]],
    },

  },

} }
