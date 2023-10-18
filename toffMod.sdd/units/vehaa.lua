return { vehaa = {
  name                   = [[Crasher]],
  description            = [[Fast Anti-Air Rover]],
  acceleration           = 0.36,
  brakeRate              = 1.8,
  builder                = false,
  buildPic               = [[vehaa.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND TOOFAST]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[18 20 40]],
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
    bait_level_default = 0,
    modelradius    = [[9]],
    okp_damage = 280.1,

    outline_x = 80,
    outline_y = 80,
    outline_yoff = 12.5,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 1500,
  iconType               = [[vehicleaa]],
  leaveTracks            = true,
  maneuverleashlength    = [[30]],
  maxSlope               = 18,
  maxWaterDepth          = 22,
  metalCost              = 450,
  movementClass          = [[TANK3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SATELLITE SWIM FLOAT SUB HOVER]],
  objectName             = [[vehaa.s3o]],
  script                 = [[vehaa.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  
  sfxtypes               = {

  explosiongenerators = {
      [[custom:STORMMUZZLE]],
      [[custom:STORMBACK]],
    },

  },
  sightDistance          = 460,
  speed                  = 90,
  trackOffset            = 6,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 32,
  turninplace            = 0,
  turnRate               = 1044,
  upright                = false,
  workerTime             = 0,

  weapons                       = {

    {
      def                = [[MISSILE]],
      onlyTargetCategory = [[FIXEDWING LAND SWIM FLOAT SHIP HOVER GUNSHIP]],
    },

  },


  weaponDefs                    = {

    MISSILE = {
      name                    = [[Heavy Missile]],
      areaOfEffect            = 302,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

      customParams              = {
        burst = Shared.BURST_RELIABLE,

        isaa = [[1]],
        light_color = [[0.5 0.6 0.6]],
      },

      damage                  = {
        default = 320.01,
        planes  = 320.1,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fixedlauncher           = true,
      fireStarter             = 70,
      flightTime              = 3,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_m_phoenix.s3o]], -- Model radius 150 for QuadField fix.
      noSelfDamage            = true,
      range                   = 730,
      reloadtime              = 15,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/sabot_hit]],
      soundStart              = [[weapon/missile/missile_fire]],
      startVelocity           = 300,
      texture1                = [[flarescale01]],
      texture2                = [[AAsmoketrail]],
      tolerance               = 9000,
      tracks                  = true,
      turnRate                = 63000,
      turret                  = true,
      weaponAcceleration      = 250,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 700,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      collisionVolumeOffsets = [[0 0 0]],
      collisionVolumeScales  = [[18 20 40]],
      collisionVolumeType    = [[box]],
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[vehaa_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

} }
