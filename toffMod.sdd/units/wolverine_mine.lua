return { wolverine_mine = {
  name                   = [[Claw]],
  description            = [[Badger Mine]],
  activateWhenBuilt      = false,
  builder                = false,
  buildPic               = [[wolverine_mine.png]],
  canGuard               = false,
  canMove                = false,
  canPatrol              = false,
  category               = [[FLOAT MINE STUPIDTARGET]],
  cloakCost              = 0,
  collisionVolumeOffsets = [[0 -4 0]],
  collisionVolumeScales  = [[20 20 20]],
  collisionVolumeType    = [[ellipsoid]],

  customParams           = {
    bait_level_default = 0,
    bait_level_target  = 1, -- Just for safety.
    dontcount = [[1]],
    mobilebuilding = [[1]],
    idle_cloak = 1,
    has_parent_unit = 1,
	very_low_priority_target = 1,
  },

  explodeAs              = [[NOWEAPON]],
  footprintX             = 1,
  footprintZ             = 1,
  health                 = 40,
  levelGround            = false,
  iconType               = [[mine]],
  idleAutoHeal           = 10,
  idleTime               = 3000,
  initCloaked            = true,
  maxSlope               = 255,
  metalCost              = 5,
  minCloakDistance       = 10,
  noAutoFire             = false,
  noChaseCategory        = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName             = [[claw.s3o]],
  onoffable              = false,
  reclaimable            = false,
  repairable             = false, -- mostly not to waste constructor attention on area-repair; has regen anyway
  script                 = [[wolverine_mine.lua]],
  selfDestructAs         = [[NOWEAPON]],
  selfDestructCountdown  = 0,
  sightDistance          = 120,
  stealth                = true,
  waterline              = 1,
  workerTime             = 0,
  yardMap                = [[y]],

  weapons                = {

    {
      def                = [[PLASMA]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER GUNSHIP]],
    },

  },


  weaponDefs             = {

    PLASMA = {
      name                    = [[Rapid-Fire Plasma Artillery]],
      accuracy                = 100,
      areaOfEffect            = 140,
      avoidFeature            = false,
      avoidGround             = false,
      craterAreaOfEffect      = 5,
      craterBoost             = 0,
      craterMult              = 0,
      
      customParams            = {
        reaim_time = 15, -- Some sort of bug prevents firing.
        
        gatherradius     = [[240]],
        smoothradius     = [[120]],
        smoothmult       = [[0.5]],
        quickgather      = [[1]],
        lups_noshockwave = [[1]],
        
        light_ground_height = 200,
      },
      
      damage                  = {
        default = 305,
        planes  = 145,
      },
      
      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:tremor]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      myGravity               = 0.1,
      noSelfDamage            = false,
      range                   = 40,
      reloadtime              = 6,
      soundHit                = [[weapon/cannon/cannon_hit2]],
      soundStart              = [[weapon/cannon/tremor_fire]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 420,
    },

  },

} }
