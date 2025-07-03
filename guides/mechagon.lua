DungeonGuide_Guides["Operation: Mechagon"] = {
  id = "dung-mechagon",
  ["Operation: Mechagon"] = {
    id = "enc-mechagon-guide",
    order = 1,
    header = "Guide: Operation: Mechagon",
    ALL = {
      { text = "Interrupts: Detonate (Bomb Tonk), Mega Drill, Giga-Wallop, Tune Up, Short Out.", type = "Interrupt", id = "gui-XX9qYToKY7k" },
      { text = "Dodge beams, mines, and swirls constantly — movement awareness is key.", type = "Mechanic", id = "gui-IyiSc424rZ0" },
      { text = "Use Hammer Pads only to break Platinum Plating — not for damage.", type = "Mechanic", id = "gui-amnC0kSEvE" },
      { text = "Junk Cubes (K.U.-J.0) = Venting Flames safety. Avoid glowing cubes.", type = "Mechanic", id = "gui-t9O30HvZTUc" },
      { text = "Post-2nd boss trash = burst AoE + healing absorbs. Coordinate CDs + kicks.", type = "Mechanic", id = "gui-jcf30VcH2AA" },
      { text = "Maze before Sparkflux is stealth only — use vents to reset. No CC.", type = "Mechanic", id = "gui-RkAFQ3fua70" },
      { text = "Shield Generators reduce damage by 75%. Pull mobs out or stand inside for safety.", type = "Mechanic", id = "gui-Eea2N18HbxM" },
      { text = "Avoid saw blades and piston hammers in first room.", type = "Mechanic", id = "gui-vA2o7qBCrBc" },
      { text = "Trash danger: Mega Drill (Waste Unit), Corrosive Gunk, Short Out (Bot Mk III).", type = "Mechanic", id = "gui-YAJ8NxCsKIA" },
      { text = "Stand behind crate during Venting Flames (K.U.-J.0) — glowing = lethal.", type = "Mechanic", id = "gui-MBJI1X9l65I" }
    },
    TANK = {
      { text = "Many mobs are CC-immune. Kite with positioning if bleeds/DoTs stack.", type = "Mechanic", id = "gui-h1Dog86gM" },
      { text = "Stay in melee on King Mechagon or trigger Protocol: 99 (wipe).", type = "Mechanic", id = "gui-0hwJDE6OQ4" },
      { text = "Avoid pulling trash through hammers or saw blades in Tussle room.", type = "Mechanic", id = "gui-C8M1tfqfaNA" },
      { text = "Pull trash mobs out of Shield Generator fields unless party benefits.", type = "Mechanic", id = "gui-22f7v3VAnms" },
      { text = "Interrupt or position Giga-Wallop (Tinkerer) + Metallic Jaws mobs safely.", type = "Mechanic", id = "gui-ZTu9wvZtGY" }
    },
      HEALER = {
      { text = "Big healing: Ground Pound, Mega Drill, Venting Flames, Magneto Arm.", type = "Mechanic", id = "gui-wQsuVmJ6zM" },
      { text = "Dispel: Blazing Chomp (Tank), Fiery Jaws (Random), Arcing Zap (Trash). Delay Chomp if group is low.", type = "Mechanic", id = "gui-ogvlxWuwtoI" }
    },
    DPS = {
      { text = "Plan CDs for burn windows: Sparkflux plants + Mechagon phase change.", type = "Mechanic", id = "gui-NAbPndFfSq8" },
      { text = "Stun Sparkflux adds till tank picks them up. Kick heals, avoid empower.", type = "Mechanic", id = "gui-u3OohaRktg" }
    }
  },

  ["Route"] = {
    id = "enc-mechagon-route",
    order = 2,
    header = "Route: Operation: Mechagon",
    ALL = {
      { text = "Start pulling right side in first boss room. Safer Bomb Tonk control.", type = "Mechanic", id = "gui-q191ICSTRC4" },
      { text = "Left side second. Then south side of room. Clear full room for boss.", type = "Mechanic", id = "gui-cesGuK4aqKo" },
      { text = "Keep pulls under 3 Bomb Tonks per pull on higher keys.", type = "Mechanic", id = "gui-nlYP4kUqs4" },
      { text = "Watch Rocket Tonk swirlies and Strider Tonk leaps.", type = "Mechanic", id = "gui-rm6kaGZBDA8" },
      { text = "After Tussle Tonks, pull single Waste Processing Unit solo.", type = "Call", id = "gui-dPYQyrU89IQ" },
      { text = "LOS Metal Gunk healing absorbs when possible.", type = "Mechanic", id = "gui-j6i3yBoUgwU" },
      { text = "Chain Metal Gunks into each other carefully. Watch stacking absorbs.", type = "Call", id = "gui-fIzYVJUNi58" },
      { text = "Skip patrolling Waste Processing Unit if safe near pool.", type = "Call", id = "gui-7tyPuXxDFIg" },
      { text = "Clear Junkyard Dogs carefully. Their DoT is brutal without dispels.", type = "Mechanic", id = "gui-j96UyFJqzGE" },
      { text = "Pull Junkyard Dogs solo or small for K.U.-J.O. boss space.", type = "Call", id = "gui-Cdc2FXUUDxA" },
      { text = "After K.U.-J.O., walk conveyor belt. Warlock Gate saves time if available.", type = "Mechanic", id = "gui-HPqKrr7xhI" },
      { text = "Next pull: 2x Mechagon Tinkerers + 2x Guard Dogs.", type = "Call", id = "gui-25FlsRJ2ICQ" },
      { text = "Next Defense Spot pulls: 2x Mark I + 1x Mark II units.", type = "Call", id = "gui-m9YeNCqJs" },
      { text = "Focus Mark I units first to relieve healer pressure.", type = "Mechanic", id = "gui-abfcQWJIXrE" },
      { text = "Fight Blastron X80 stationary. Dodge all telegraphed attacks.", type = "Mechanic", id = "gui-MimSpFWtdk" },
      { text = "Pull Mechanics + Defenders next. Focus Defense Spot interrupts.", type = "Call", id = "gui-DTbEy87vOc" },
      { text = "Defender Barriers are safe zones. Use them for Squirrel explosions.", type = "Mechanic", id = "gui-qPxEAJzs0c" },
      { text = "After Sparkflux, fight Spider Tanks. Single pull unless healer strong.", type = "Call", id = "gui-0YgJOdtt9xg" },
      { text = "Focus top Spider Tank first — it spawns Taxi to next section.", type = "Call", id = "gui-tXs23sS8T4U" },
      { text = "Pull Defenders + Tinkerers into final Defense Spots. Use Barrier.", type = "Call", id = "gui-4aBu1vxomh4" },
      { text = "Expect slight overcount (103–109%) by end. No big deal.", type = "Mechanic", id = "gui-uyJh99ZM" },
    },
  },  

  ["Tussle Tonks"] = {
    id = "enc-mechagon-tussle-tonks",
    order = 3,
    header = "Boss: Tussle Tonks",
    ALL = {
      { text = "Keep bosses close in HP — Electrical Storm if 1 dies early.", type = "Mechanic", id = "gui-PNoNbpCJXGM" },
      { text = "Battle Mines active — stack and rotate zones cleanly.", type = "Call", id = "gui-Io2ceilWzSo" },
      { text = "Faux Flipper incoming — dodge knock into mines.", type = "Call", id = "gui-LMESHFjAj4" }
    },
    TANK = {
      { text = "Face Pummeler away — cleave hits in 6yd cone.", type = "Position", id = "gui-FMiROJVUtI" },
      { text = "Drag boss into Hammer at 100 energy to remove Plating.", type = "Mechanic", id = "gui-EnuMscTu8fg" },
      { text = "Rotate to next Hammer — each goes on 90s cooldown.", type = "Mechanic", id = "gui-RbtdlM9AVM" },
      { text = "Bait Maximum Thrust into wall for cleave uptime.", type = "Mechanic", id = "gui-NJsJ9wxlecc" },
      { text = "Don’t move during Pummel cast — keep positioning clean.", type = "Mechanic", id = "gui-V1W6DbdVbsc" },
      { text = "Keep both bosses close — enables cleave and hammer use.", type = "Position", id = "gui-v4nTwJJsmro" },
      { text = "Balance boss HP — must die together to avoid wipe.", type = "Call", id = "gui-DBPoxYBRiA" }
    },
    HEALER = {
      { text = "CDs for Ground Pound — 4s group-wide AoE.", type = "Call", id = "gui-tprZjqX4OvE" },
      { text = "Top up Faux Flipper targets quickly.", type = "Mechanic", id = "gui-vNH7Zrzn7YQ" }
    },
    DPS = {
      { text = "Even cleave both bosses — split deaths = wipe.", type = "Mechanic", id = "gui-H69rSJJ9YIM" },
      { text = "Stack mines safely. Rotate placement zones.", type = "Mechanic", id = "gui-3WJzmPeRL6s" }
    }
  },
  
  ["K.U.-J.0"] = {
    id = "enc-mechagon-kuj0",
    order = 4,
    header = "Boss: K.U.-J.0",
    ALL = {
      { text = "Avoid glowing Junk Cubes — 2nd hit = lethal explosion.", type = "Mechanic", id = "gui-xP91j9Eyuf8" },
      { text = "Explosive Leap — spread and avoid cubes.", type = "Call", id = "gui-Tu9s8VvlAY" },
      { text = "Venting Flames — hide behind safe cube.", type = "Call", id = "gui-mBimUdXam2g" }
    },
    TANK = {
      { text = "Use defensive for Blazing Chomp — heavy ticking Magic DoT.", type = "Mechanic", id = "gui-mAg8b70a2pI" },
      { text = "Hold near cube before Venting Flames — ensure LoS spot.", type = "Position", id = "gui-lSUzkVsgzZs" },
      { text = "Avoid standing near cubes during Explosive Leap.", type = "Mechanic", id = "gui-Y4XxYtAFt70" },
      { text = "Tiptoe boss near crate to allow DPS to stay in range.", type = "Position", id = "gui-umJMfcTw3Y4" }
    },
    HEALER = {
      { text = "Dispel Blazing Chomp (TANK) after topping group.", type = "Mechanic", id = "gui-cxJgq1CkpI" },
      { text = "Heal through Leap + DoT overlap.", type = "Mechanic", id = "gui-hdUQQivmWFA" }
    },
    DPS = {
      { text = "Spread wide on Leap cast. Don’t heat cubes early.", type = "Mechanic", id = "gui-my77wStWKXg" },
      { text = "Save cubes for future LoS — they don’t respawn fast.", type = "Mechanic", id = "gui-cBD1qVvxdw" },
      { text = "Use vanish/shadowmeld to cancel Leap if targeted.", type = "Mechanic", id = "gui-EiICTDm2goQ" }
    }
  },
  
  ["Head Machinist Sparkflux"] = {
    id = "enc-mechagon-sparkflux",
    order = 5,
    header = "Boss: Head Machinist Sparkflux",
    ALL = {
      { text = "Avoid Self-Trimming Hedge blades — bounce randomly.", type = "Mechanic", id = "gui-sqTSMXtKmyM" },
      { text = "Hidden Flame Cannon — rotate with group.", type = "Call", id = "gui-K0w4t6KSQI" },
      { text = "Discombobulator on me — moving out of AoE.", type = "Call", id = "gui-k5RQtGXMwYU" },
      { text = "Plant spawned — burn Inconspicuous Plant fast.", type = "Call", id = "gui-AjWSQ48kkA" }
    },
    TANK = {
      { text = "Tank boss near plant spawn for cleave.", type = "Position", id = "gui-rLMpmUMpej4" },
      { text = "Drag boss off Platinum Plating quickly.", type = "Mechanic", id = "gui-4Sxselqlrg" },
      { text = "Dodge blade bounces from Self-Trimming Hedge.", type = "Mechanic", id = "gui-KOOdYCAtIYk" },
      { text = "Discombobulator fixate on you — move boss early.", type = "Mechanic", id = "gui-aqQSVDtkTOs" }
    },
    HEALER = {
      { text = "CDs if Cannon + Blossom Blast overlap.", type = "Call", id = "gui-BAKjZYo6FUw" },
      { text = "Dispel Arcing Zap magic DoTs quickly.", type = "Mechanic", id = "gui-8tNAVRHyxHQ" }
    },
    DPS = {
      { text = "Kill Plant fast — avoid ramp-up.", type = "Mechanic", id = "gui-lm5TVZxcx0g" },
      { text = "Dodge blades and oil swirls after plant dies.", type = "Mechanic", id = "gui-h3l8Q5UHQ0" }
    }
  },

  ["The Maze"] = {
    id = "enc-mechagon-maze",
    order = 6,
    header = "Maze: Stealth Section",
    ALL = {
      { text = "Do not use CC or offensive spells — will break stealth instantly.", type = "Mechanic", id = "gui-kt9Wc9obDE" },
      { text = "Hug left wall on first patrol, wait for it to pass before moving.", type = "Mechanic", id = "gui-Az80c8TsL0c" },
      { text = "Vents can reset patrol aggro. Use to save stealth fails.", type = "Mechanic", id = "gui-0VJOgrzQSTg" },
      { text = "Second room: Wait for patrol near console to turn away, then move.", type = "Mechanic", id = "gui-leHTjsP4new" },
      { text = "Final stretch has overlapping patrols. Time your cross with both out of view.", type = "Mechanic", id = "gui-MoKDQXdeeL0" }
    }
  },
 
  ["King Mechagon"] = {
    id = "enc-mechagon-king-mechagon",
    order = 7,
    header = "Boss: King Mechagon",
    ALL = {
      { text = "Recalibrate orbs — dodge across safely.", type = "Call", id = "gui-JS4slfiI7bc" },
      { text = "Mega Zap on me — standing still and using CD.", type = "Call", id = "gui-9gPNRQtVLDU" }
    },
    TANK = {
      { text = "Stay in melee — triggers Protocol: 99 if too far.", type = "Mechanic", id = "gui-2nGXq64Jgz8" },
      { text = "Back to wall if using movement abilities (The Hunt etc.).", type = "Position", id = "gui-edQb8hRcQMM" },
      { text = "Start at left pylon. Coordinate safe pathing early.", type = "Call", id = "gui-507f7VR4258" },
      { text = "CD if Giga-Wallop hits while bots are active.", type = "Mechanic", id = "gui-p8p9czMWHI" },
      { text = "Move boss to edge after Shockwave clears.", type = "Position", id = "gui-fBfwF9qWGas" },
      { text = "Interrupt Tune Up / Giga-Wallop if mechanic survives.", type = "Interrupt", id = "gui-71XSd2CByzM" },
      { text = "Avoid Shockwave + bot overlap — adjust position.", type = "Mechanic", id = "gui-cEknKjkWBs" }
    },
    HEALER = {
      { text = "Prep CDs for Cutting Beam or Magneto Arm.", type = "Call", id = "gui-92wchx6cxGA" },
      { text = "Dispel Arc Zap + Overclock buffs in Phase 1.", type = "Mechanic", id = "gui-Pq1aDox9foU" }
    },
    DPS = {
      { text = "Dodge Mega Zap + Plasma Orbs — 3x zap in Phase 2.", type = "Mechanic", id = "gui-J1Papqg12Ks" },
      { text = "Run out hard during Magneto Arm pull.", type = "Mechanic", id = "gui-rgUaUAnDwA" }
    }
  }
}