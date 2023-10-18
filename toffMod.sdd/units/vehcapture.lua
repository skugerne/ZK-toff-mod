return { vehcapture = {
  name                = [[Dominatrix]],
  description         = [[Capture Rover]],
  acceleration        = 0.266,
  brakeRate           = 0.462,
  builder             = false,
  buildPic            = [[vehcapture.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[26 26 50]],
  collisionVolumeType    = [[cylZ]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[60 60 75]],
  selectionVolumeType    = [[cylZ]],
  corpse              = [[DEAD]],

  customParams        = {
    bait_level_default = 1,
    modelradius    = [[13]],
    turnatfullspeed = [[1]],
    cus_noflashlight = 1,
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  health              = 820,
  iconType            = [[vehiclespecial]],
  leaveTracks         = true,
  maxSlope            = 35,
  maxWaterDepth       = 602,
  metalCost           = 320,
  movementClass       = [[TANK3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP DRONE]],
  objectName          = [[corvrad_big.s3o]],
  script              = [[vehcapture.lua]],
  selfDestructAs      = [[BIG_UNITEX]],
  sightDistance       = 1190,
  speed               = 58.5,
  trackOffset         = -7,
  trackStrength       = 5,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 28,
  turninplace         = 0,
  turnRate            = 672,
  workerTime          = 0,
  radarDistance       = 2400,
  radarDistanceJam    = 700,
  


  featureDefs         = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      collisionVolumeOffsets = [[0 0 0]],
      collisionVolumeScales  = [[26 26 50]],
      collisionVolumeType    = [[cylZ]],
      object           = [[corvrad_big_dead.s3o]],
    },


    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
