return { vehheavyarty = {
  name                = [[Impaler]],
  description         = [[Precision Artillery Rover]],
  acceleration        = 0.252,
  brakeRate           = 0.96,
  builder             = false,
  buildPic            = [[vehheavyarty.png]],
  canMove             = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[40 20 40]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],

  customParams        = {
    chase_everything = 1, -- don't ignore solars. Doesn't chase mobiles anyway
    target_stupid_targets = 1, -- ditto, don't deprioritize solars (mobile stupid targets already deprioritized)

    bait_level_default = 2,
    dontfireatradarcommand = '0',
  },

  explodeAs           = [[BIG_UNITEX_MERL]],
  footprintX          = 3,
  footprintZ          = 3,
  health              = 1100,
  iconType            = [[vehiclelrarty]],
  leaveTracks         = true,
  maxSlope            = 18,
  metalCost           = 700,
  movementClass       = [[TANK3]],
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP MOBILE]],
  objectName          = [[core_diplomat.s3o]],
  script              = [[vehheavyarty.lua]],
  selfDestructAs      = [[BIG_UNITEX_MERL]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:NONE]],
    },

  },

  sightDistance       = 660,
  speed               = 60,
  trackOffset         = 15,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 44,
  turninplace         = 0,
  turnRate            = 736,

  weapons             = {

    {
      def                = [[MISSILE]],
      badTargetCategory  = [[MOBILE]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

  },

  weaponDefs          = {

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
        default = 20.01,
        planes  = 720.1,
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
      range                   = 1300,
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
      weaponVelocity          = 900,
    },

  },

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      collisionVolumeScales  = [[40 20 40]],
      collisionVolumeType    = [[box]],
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[core_diplomat_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
    },

  },

} }
