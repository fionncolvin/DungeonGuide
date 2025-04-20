DungeonGuide_Guides["Mechagon Workshop"] = {
  ["Mechagon Workshop"] = {
    order = 1,
    header = "Guide: Mechagon Workshop",
    ALL = {
      { text = "Interrupt priorities: Detonate (Bomb Tonk), Mega Drill (Waste Unit), Giga-Wallop (Tinkerer), Tune Up (Mechanic), Short Out (Defense Bot Mk III).", type = "Interrupt" },
      { text = "Beams, swirls, and mines dominate this dungeon — constant movement and spatial awareness required.", type = "Mechanic" },
      { text = "Hammer Pads (first boss area) are key. Use them only to break Platinum Plating, not for damage.", type = "Mechanic" },
      { text = "Junk Cubes (K.U.-J.0) are lifelines. Venting Flames requires LoS behind a fresh cube. Glowing cubes = death.", type = "Mechanic" },
      { text = "Most trash packs post-second boss contain burst AoE and healing absorbs. Coordinate kicks and CDs.", type = "Mechanic" },
      { text = "Maze section before Sparkflux is a stealth gauntlet. Use vents to reset patrols — no CC works here.", type = "Mechanic" },
      { text = "Shield Generators (Defenders) reduce damage by 75%. Pull mobs out — players may stand in for safety.", type = "Mechanic" }
    },
    TANK = {
      { text = "Many mobs are CC-immune. Use positioning to help kite, especially when bleeds or magic DoTs stack.", type = "Mechanic" },
      { text = "For King Mechagon, never leave melee range or you’ll trigger Protocol: 99 and wipe the group.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Major healing moments: Ground Pound (Tussle Tonks), Mega Drill + Gunk, Venting Flames, Magneto Arm (Mechagon).", type = "Mechanic" },
      { text = "Dispel priorities: Blazing Chomp (Tank), Fiery Jaws (Random), Arcing Zap (Trash). Delay Chomp if group is low.", type = "Mechanic" }
    },
    DPS = {
      { text = "Most bosses have large cleave potential — plan CDs for burn windows like Sparkflux plants and Mechagon phase transitions.", type = "Mechanic" },
      { text = "Keep Sparkflux adds stunned until tank can get aggro. Interrupt heals and avoid empowering mechs.", type = "Mechanic" }
    }
  },

  ["Tussle Tonks"] = {
    order = 2,
    header = "Boss: Tussle Tonks",
    ALL = {
      { text = "Battle Mines active. Cluster and rotate cleanly.", type = "Call" },
      { text = "Faux Flipper cast. Avoid knock into mines.", type = "Call" },
      { text = "Interrupt Detonate from Bomb Tonks.", type = "Interrupt" }
    },
    TANK = {
      { text = "Platinum Pummel cleaves 6yds. Face away from group.", type = "Position" },
      { text = "Use Hammer to break Platinum Plating at 100 energy.", type = "Mechanic" },
      { text = "Bait Maximum Thrust into wall for mine control.", type = "Mechanic" },
      { text = "Focus Tonk Buster during Double Zap phase.", type = "Call" },
      { text = "Tonk Buster fixates — kite away from Spark Channels.", type = "Mechanic" },
      { text = "Watch for Discombobulate overlap. Use CDs if stunned near bots.", type = "Mechanic" },
      { text = "Pull boss to center to keep room space for Tonk movement.", type = "Position" },
    },
    HEALER = {
      { text = "Use CDs for Ground Pound — 4s of group-wide AoE.", type = "Call" },
      { text = "Top Faux Flipper targets quickly.", type = "Mechanic" }
    },
    DPS = {
      { text = "Even cleave both bosses — split deaths wipes group.", type = "Mechanic" },
      { text = "Stack to drop Battle Mines safely and rotate zones.", type = "Mechanic" }
    }
  },

  ["K.U.-J.0"] = {
    order = 3,
    header = "Boss: K.U.-J.0",
    ALL = {
      { text = "Explosive Leap. Spread out and avoid cubes.", type = "Call" },
      { text = "Venting Flames cast. Hide behind safe cube.", type = "Call" },
      { text = "Interrupt Junkyard D.O.G. casts pre-boss.", type = "Interrupt" }
    },
    TANK = {
      { text = "Use defensive for Blazing Chomp. Dispel when safe.", type = "Mechanic" },
      { text = "Position boss near safe cube pre-Venting Flames.", type = "Position" }
    },
    HEALER = {
      { text = "Dispel Blazing Chomp after topping group.", type = "Mechanic" },
      { text = "Prep healing for Explosive Leap + DoT overlap.", type = "Mechanic" }
    },
    DPS = {
      { text = "Avoid glowing cubes — second hit = explosion.", type = "Mechanic" },
      { text = "Use combat drops to cancel Explosive Leap if targeted.", type = "Mechanic" }
    }
  },

  ["Head Machinist Sparkflux"] = {
    order = 4,
    header = "Boss: Head Machinist Sparkflux",
    ALL = {
      { text = "Hidden Flame Cannon. Rotate with group.", type = "Call" },
      { text = "Discombobulator on me. Moving out of AoE.", type = "Call" },
      { text = "Inconspicuous Plant spawned. Kill quickly.", type = "Call" },
      { text = "Interrupt Giga-Wallop from trash near boss.", type = "Interrupt" }
    },
    TANK = {
      { text = "Bring boss to plant spawn for fast cleave.", type = "Position" },
      { text = "Watch for blade bounce from Self-Trimming Hedge.", type = "Mechanic" },
      { text = "Mega Drill targets you? Sidestep then reposition boss.", type = "Mechanic" },
      { text = "Move boss off Platinum Plating fast.", type = "Mechanic" },
      { text = "I will bait Mega Drill to safe edge. Stay behind.", type = "Call" },
      { text = "Pop minor CD if Drill + Shock combo overlaps.", type = "Mechanic" },
    },
    HEALER = {
      { text = "Prepare CDs for Cannon + Blossom Blast overlap.", type = "Call" },
      { text = "Dispel Arcing Zap Magic DoTs quickly.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill Inconspicuous Plant fast before it ramps.", type = "Mechanic" },
      { text = "Avoid blades and oil swirls post-plant kill.", type = "Mechanic" }
    }
  },

  ["King Mechagon"] = {
    order = 5,
    header = "Boss: King Mechagon",
    ALL = {
      { text = "Recalibrate orbs incoming. Dodge across safely.", type = "Call" },
      { text = "Mega Zap fixate on me. Standing still and CD.", type = "Call" },
      { text = "Interrupt Tune Up from Mechagon Mechanics near boss.", type = "Interrupt" }
    },
    TANK = {
      { text = "Stay in melee at all times or trigger wipe.", type = "Mechanic" },
      { text = "Back to wall if using mobility (e.g. The Hunt).", type = "Position" },
      { text = "Starting on left pylon.", type = "Call" },
      { text = "Use major CD if Giga-Wallop hits with bots still up.", type = "Mechanic" },
      { text = "Pull boss to edge after each Shockwave.", type = "Position" },
      { text = "Interrupt Tune Up and Giga-Wallop if tanking mechanic survives.", type = "Mechanic" },
      { text = "Avoid overlapping bots and Shockwave. Adjust boss pathing.", type = "Mechanic" },
    },
    HEALER = {
      { text = "Prep CDs for Cutting Beam or Magneto Arm phases.", type = "Call" },
      { text = "Dispel Arc Zap or Overclock Magic buffs in P1.", type = "Mechanic" }
    },
    DPS = {
      { text = "Dodge Mega Zap and Plasma Orbs — 3x zap in P2.", type = "Mechanic" },
      { text = "Avoid Magneto Arm center pull. Run out hard.", type = "Mechanic" }
    }
  }
}