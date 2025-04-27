DungeonGuide_Guides["Operation: Mechagon"] = {
  ["Operation: Mechagon"] = {
    order = 1,
    header = "Guide: Operation: Mechagon",
    ALL = {
      { text = "Interrupts: Detonate (Bomb Tonk), Mega Drill, Giga-Wallop, Tune Up, Short Out.", type = "Interrupt" },
      { text = "Dodge beams, mines, and swirls constantly — movement awareness is key.", type = "Mechanic" },
      { text = "Use Hammer Pads only to break Platinum Plating — not for damage.", type = "Mechanic" },
      { text = "Junk Cubes (K.U.-J.0) = Venting Flames safety. Avoid glowing cubes.", type = "Mechanic" },
      { text = "Post-2nd boss trash = burst AoE + healing absorbs. Coordinate CDs + kicks.", type = "Mechanic" },
      { text = "Maze before Sparkflux is stealth only — use vents to reset. No CC.", type = "Mechanic" },
      { text = "Shield Generators reduce damage by 75%. Pull mobs out or stand inside for safety.", type = "Mechanic" },
      { text = "Avoid saw blades and piston hammers in first room.", type = "Mechanic" },
      { text = "Trash danger: Mega Drill (Waste Unit), Corrosive Gunk, Short Out (Bot Mk III).", type = "Mechanic" },
      { text = "Stand behind crate during Venting Flames (K.U.-J.0) — glowing = lethal.", type = "Mechanic" }
    },
    TANK = {
      { text = "Many mobs are CC-immune. Kite with positioning if bleeds/DoTs stack.", type = "Mechanic" },
      { text = "Stay in melee on King Mechagon or trigger Protocol: 99 (wipe).", type = "Mechanic" },
      { text = "Avoid pulling trash through hammers or saw blades in Tussle room.", type = "Mechanic" },
      { text = "Pull trash mobs out of Shield Generator fields unless party benefits.", type = "Mechanic" },
      { text = "Interrupt or position Giga-Wallop (Tinkerer) + Metallic Jaws mobs safely.", type = "Mechanic" }
    },
      HEALER = {
      { text = "Big healing: Ground Pound, Mega Drill, Venting Flames, Magneto Arm.", type = "Mechanic" },
      { text = "Dispel: Blazing Chomp (Tank), Fiery Jaws (Random), Arcing Zap (Trash). Delay Chomp if group is low.", type = "Mechanic" }
    },
    DPS = {
      { text = "Plan CDs for burn windows: Sparkflux plants + Mechagon phase change.", type = "Mechanic" },
      { text = "Stun Sparkflux adds till tank picks them up. Kick heals, avoid empower.", type = "Mechanic" }
    }
  },

  ["Route"] = {
    order = 2,
    header = "Route: Operation: Mechagon",
    ALL = {
      { text = "Start pulling right side in first boss room. Safer Bomb Tonk control.", type = "Mechanic" },
      { text = "Left side second. Then south side of room. Clear full room for boss.", type = "Mechanic" },
      { text = "Keep pulls under 3 Bomb Tonks per pull on higher keys.", type = "Mechanic" },
      { text = "Watch Rocket Tonk swirlies and Strider Tonk leaps.", type = "Mechanic" },
      { text = "After Tussle Tonks, pull single Waste Processing Unit solo.", type = "Call" },
      { text = "LOS Metal Gunk healing absorbs when possible.", type = "Mechanic" },
      { text = "Chain Metal Gunks into each other carefully. Watch stacking absorbs.", type = "Call" },
      { text = "Skip patrolling Waste Processing Unit if safe near pool.", type = "Call" },
      { text = "Clear Junkyard Dogs carefully. Their DoT is brutal without dispels.", type = "Mechanic" },
      { text = "Pull Junkyard Dogs solo or small for K.U.-J.O. boss space.", type = "Call" },
      { text = "After K.U.-J.O., walk conveyor belt. Warlock Gate saves time if available.", type = "Mechanic" },
      { text = "Next pull: 2x Mechagon Tinkerers + 2x Guard Dogs.", type = "Call" },
      { text = "Next Defense Spot pulls: 2x Mark I + 1x Mark II units.", type = "Call" },
      { text = "Focus Mark I units first to relieve healer pressure.", type = "Mechanic" },
      { text = "Fight Blastron X80 stationary. Dodge all telegraphed attacks.", type = "Mechanic" },
      { text = "Pull Mechanics + Defenders next. Focus Defense Spot interrupts.", type = "Call" },
      { text = "Defender Barriers are safe zones. Use them for Squirrel explosions.", type = "Mechanic" },
      { text = "After Sparkflux, fight Spider Tanks. Single pull unless healer strong.", type = "Call" },
      { text = "Focus top Spider Tank first — it spawns Taxi to next section.", type = "Call" },
      { text = "Pull Defenders + Tinkerers into final Defense Spots. Use Barrier.", type = "Call" },
      { text = "Expect slight overcount (103–109%) by end. No big deal.", type = "Mechanic" },
    },
  },  

  ["Tussle Tonks"] = {
    order = 3,
    header = "Boss: Tussle Tonks",
    ALL = {
      { text = "Keep bosses close in HP — Electrical Storm if 1 dies early.", type = "Mechanic" },
      { text = "Battle Mines active — stack and rotate zones cleanly.", type = "Call" },
      { text = "Faux Flipper incoming — dodge knock into mines.", type = "Call" }
    },
    TANK = {
      { text = "Face Pummeler away — cleave hits in 6yd cone.", type = "Position" },
      { text = "Drag boss into Hammer at 100 energy to remove Plating.", type = "Mechanic" },
      { text = "Rotate to next Hammer — each goes on 90s cooldown.", type = "Mechanic" },
      { text = "Bait Maximum Thrust into wall for cleave uptime.", type = "Mechanic" },
      { text = "Don’t move during Pummel cast — keep positioning clean.", type = "Mechanic" },
      { text = "Keep both bosses close — enables cleave and hammer use.", type = "Position" },
      { text = "Balance boss HP — must die together to avoid wipe.", type = "Call" }
    },
    HEALER = {
      { text = "CDs for Ground Pound — 4s group-wide AoE.", type = "Call" },
      { text = "Top up Faux Flipper targets quickly.", type = "Mechanic" }
    },
    DPS = {
      { text = "Even cleave both bosses — split deaths = wipe.", type = "Mechanic" },
      { text = "Stack mines safely. Rotate placement zones.", type = "Mechanic" }
    }
  },
  
  ["K.U.-J.0"] = {
    order = 4,
    header = "Boss: K.U.-J.0",
    ALL = {
      { text = "Avoid glowing Junk Cubes — 2nd hit = lethal explosion.", type = "Mechanic" },
      { text = "Explosive Leap — spread and avoid cubes.", type = "Call" },
      { text = "Venting Flames — hide behind safe cube.", type = "Call" }
    },
    TANK = {
      { text = "Use defensive for Blazing Chomp — heavy ticking Magic DoT.", type = "Mechanic" },
      { text = "Hold near cube before Venting Flames — ensure LoS spot.", type = "Position" },
      { text = "Avoid standing near cubes during Explosive Leap.", type = "Mechanic" },
      { text = "Tiptoe boss near crate to allow DPS to stay in range.", type = "Position" }
    },
    HEALER = {
      { text = "Dispel Blazing Chomp (TANK) after topping group.", type = "Mechanic" },
      { text = "Heal through Leap + DoT overlap.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread wide on Leap cast. Don’t heat cubes early.", type = "Mechanic" },
      { text = "Save cubes for future LoS — they don’t respawn fast.", type = "Mechanic" },
      { text = "Use vanish/shadowmeld to cancel Leap if targeted.", type = "Mechanic" }
    }
  },
  
  ["Head Machinist Sparkflux"] = {
    order = 5,
    header = "Boss: Head Machinist Sparkflux",
    ALL = {
      { text = "Avoid Self-Trimming Hedge blades — bounce randomly.", type = "Mechanic" },
      { text = "Hidden Flame Cannon — rotate with group.", type = "Call" },
      { text = "Discombobulator on me — moving out of AoE.", type = "Call" },
      { text = "Plant spawned — burn Inconspicuous Plant fast.", type = "Call" }
    },
    TANK = {
      { text = "Tank boss near plant spawn for cleave.", type = "Position" },
      { text = "Drag boss off Platinum Plating quickly.", type = "Mechanic" },
      { text = "Dodge blade bounces from Self-Trimming Hedge.", type = "Mechanic" },
      { text = "Discombobulator fixate on you — move boss early.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs if Cannon + Blossom Blast overlap.", type = "Call" },
      { text = "Dispel Arcing Zap magic DoTs quickly.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill Plant fast — avoid ramp-up.", type = "Mechanic" },
      { text = "Dodge blades and oil swirls after plant dies.", type = "Mechanic" }
    }
  },

  ["The Maze"] = {
    order = 6,
    header = "Maze: Stealth Section",
    ALL = {
      { text = "Do not use CC or offensive spells — will break stealth instantly.", type = "Mechanic" },
      { text = "Hug left wall on first patrol, wait for it to pass before moving.", type = "Mechanic" },
      { text = "Vents can reset patrol aggro. Use to save stealth fails.", type = "Mechanic" },
      { text = "Second room: Wait for patrol near console to turn away, then move.", type = "Mechanic" },
      { text = "Final stretch has overlapping patrols. Time your cross with both out of view.", type = "Mechanic" }
    }
  },
 
  ["King Mechagon"] = {
    order = 7,
    header = "Boss: King Mechagon",
    ALL = {
      { text = "Recalibrate orbs — dodge across safely.", type = "Call" },
      { text = "Mega Zap on me — standing still and using CD.", type = "Call" }
    },
    TANK = {
      { text = "Stay in melee — triggers Protocol: 99 if too far.", type = "Mechanic" },
      { text = "Back to wall if using movement abilities (The Hunt etc.).", type = "Position" },
      { text = "Start at left pylon. Coordinate safe pathing early.", type = "Call" },
      { text = "CD if Giga-Wallop hits while bots are active.", type = "Mechanic" },
      { text = "Move boss to edge after Shockwave clears.", type = "Position" },
      { text = "Interrupt Tune Up / Giga-Wallop if mechanic survives.", type = "Interrupt" },
      { text = "Avoid Shockwave + bot overlap — adjust position.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Prep CDs for Cutting Beam or Magneto Arm.", type = "Call" },
      { text = "Dispel Arc Zap + Overclock buffs in Phase 1.", type = "Mechanic" }
    },
    DPS = {
      { text = "Dodge Mega Zap + Plasma Orbs — 3x zap in Phase 2.", type = "Mechanic" },
      { text = "Run out hard during Magneto Arm pull.", type = "Mechanic" }
    }
  }
}