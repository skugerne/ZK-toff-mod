return { amphfloater = {
  name                   = [[Buoy]],
  description            = [[Amphibious assault Bot]],
  acceleration           = 0.6,
  activateWhenBuilt      = true,
  brakeRate              = 2.4,
  buildPic               = [[amphfloater.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND SINK]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[63 63 63]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    bait_level_default = 0,
    aim_lookahead      = 60,
    amph_regen         = 60,
    amph_submerged_at  = 30,
    sink_on_emp        = 0,
    floattoggle        = [[1]],
    selection_scale    = 0.85,

    outline_x = 80,
    outline_y = 80,
    outline_yoff = 12.5,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  health                 = 1500,
  iconType               = [[amphskirm]],
  leaveTracks            = true,
  maxSlope               = 36,
  metalCost              = 450,
  movementClass          = [[AKBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP]],
  objectName             = [[can.s3o]],
  script                 = [[amphfloater.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {
    explosiongenerators = {
      [[custom:THUDMUZZLE]],
      [[custom:THUDSHELLS]],
      [[custom:THUDDUST]],
    },
  },

  sightDistance          = 400,
  sonarDistance          = 400,
  speed                  = 41,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 1320,
  upright                = true,

  weapons                = {
    {
      def                = [[DISRUPTOR_BEAM]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
    {
      def                = [[FAKE_CANNON]],
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
            default = 900.1,
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
        reloadtime              = 23,
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


    FAKE_CANNON = {
      name                    = [[Fake Disruption Cannon]],
      accuracy                = 200,
      areaOfEffect            = 32,
      avoidFriendly           = false,
      cegTag                  = [[beamweapon_muzzle_purple]],
      craterBoost             = 1,
      craterMult              = 2,

      customparams = {
        timeslow_damagefactor = 1.7,
        bogus = 1,
      },

      damage                  = {
        default = 150,
      },

      explosionGenerator      = [[custom:flashslowwithsparks]],
      fireStarter             = 180,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.2,
      interceptedByShieldType = 2,
      myGravity               = 0.2,
      range                   = 450,
      reloadtime              = 1.8,
      rgbcolor                = [[0.9 0.1 0.9]],
      soundHit                = [[weapon/laser/small_laser_fire]],
      soundHitVolume          = 2.2,
      soundStart              = [[weapon/laser/small_laser_fire3]],
      soundStartVolume        = 3.5,
      soundTrigger            = true,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 340,
    },

  },

  featureDefs            = {

    DEAD      = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[can_dead.s3o]],
    },

    HEAP      = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
