return { tankraid = {
  name                = [[Kodachi]],
  description         = [[Raider Tank]],
  acceleration        = 0.75,
  brakeRate           = 1.65,
  builder             = false,
  buildPic            = [[tankraid.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND TOOFAST]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[34 26 34]],
  collisionVolumeType    = [[ellipsoid]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[63 63 63]],
  selectionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    fireproof      = [[1]],
    --specialreloadtime = [[850]],
    modelradius       = [[20]],
    aimposoffset      = [[0 5 0]],
    selection_scale   = 0.85,
    aim_lookahead     = 140,
    percieved_range   = 270, -- How much range enemy units think Kodachi has

    outline_x = 80,
    outline_y = 80,
    outline_yoff = 12.5,
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  health              = 800,
  iconType            = [[tankscout]],
  idleAutoHeal        = 5,
  idleTime            = 300,
  leaveTracks         = true,
  maxSlope            = 18,
  maxWaterDepth       = 22,
  metalCost           = 320,
  movementClass       = [[TANK3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[logkoda.s3o]],
  script              = [[tankraid.lua]],
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 300,
  speed               = 70,
  trackOffset         = 6,
  trackStrength       = 5,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 30,
  turninplace         = 0,
  turnRate            = 1152,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[EMG]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER GUNSHIP]],
    },
    
    --{
    --  def                = [[BOGUS_FAKE_NAPALM_BOMBLET]],
    --  badTargetCategory  = [[GUNSHIP]],
    --  onlyTargetCategory = [[]],
    --},

  },


  weaponDefs          = {

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
        default = 28.5,
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
      weaponVelocity          = 1100,
    },

  },


  featureDefs         = {

    DEAD = {
      blocking         = true,
      collisionVolumeScales = [[34 26 34]],
	  collisionVolumeType   = [[ellipsoid]],
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[logkoda_dead.s3o]],
    },


    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
