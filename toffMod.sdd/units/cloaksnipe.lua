return { cloaksnipe = {
  name                   = [[Ghost]],
  description            = [[Cloaked Skirmish/Anti-Heavy]],
  acceleration           = 0.9,
  brakeRate              = 1.2,
  buildPic               = [[cloaksnipe.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  cloakCost              = 1,
  cloakCostMoving        = 5,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[30 60 30]],
  collisionVolumeType    = [[cylY]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[68 68 68]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    bait_level_default = 1,
    modelradius    = [[15]],
    dontfireatradarcommand = '0',
    no_decloak_on_weapon_fire = 1,
    reload_move_penalty = 0.66,

    outline_x = 120,
    outline_y = 120,
    outline_yoff = 32.5,
  },

  decloakOnFire          = false,
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 900,
  iconType               = [[sniper]],
  leaveTracks            = true,
  initCloaked            = true,
  maxSlope               = 36,
  maxWaterDepth          = 22,
  metalCost              = 950,
  minCloakDistance       = 355,
  movementClass          = [[KBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP SUB]],
  objectName             = [[sharpshooter.s3o]],
  script                 = [[cloaksnipe.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:WEAPEXP_PUFF]],
      [[custom:MISSILE_EXPLOSION]],
    },

  },

  sightEmitHeight        = 40,
  sightDistance          = 400,
  speed                  = 42,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 2500,
  upright                = true,

  weapons                = {

    {
      def                = [[DISRUPTOR_BEAM]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },

  weaponDefs             = {

    DISRUPTOR_BEAM = {
      name                    = [[Disruptor Pulse Beam]],
        areaOfEffect            = 32,
        beamdecay               = 0.9,
        beamTime                = 1/30,
        beamttl                 = 30,
        coreThickness           = 0.25,
        craterBoost             = 0,
        craterMult              = 0,
  
        customparams = {
          burst = Shared.BURST_RELIABLE,
  
          timeslow_damagefactor = 4,
          timeslow_overslow_frames = 2*30,
  
          light_color = [[1.88 0.63 2.5]],
          light_radius = 320,
        },
  
        damage                  = {
            default = 1000.1,
            planes  = 102,
           },
  
        explosionGenerator      = [[custom:heavy_disruptor_beam_hit]],
        fireStarter             = 30,
        impactOnly              = true,
        impulseBoost            = 0,
        impulseFactor           = 0.4,
        interceptedByShieldType = 1,
        largeBeamLaser          = true,
        laserFlareSize          = 4.33,
        minIntensity            = 1,
        noSelfDamage            = true,
        range                   = 667,
        reloadtime              = 21,
        rgbColor                = [[0.3 0 0.4]],
        soundStart              = [[weapon/laser/heavy_laser5]],
        soundStartVolume        = 3.8,
        soundTrigger            = true,
        texture1                = [[largelaser]],
        texture2                = [[flare]],
        texture3                = [[flare]],
        texture4                = [[smallflare]],
        thickness               = 12,
        tolerance               = 18000,
        turret                  = true,
        weaponType              = [[BeamLaser]],
        weaponVelocity          = 500,
      },

  },

  featureDefs            = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[sharpshooter_dead.s3o]],
    },

    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
    },

  },

} }
