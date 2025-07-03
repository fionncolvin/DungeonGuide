DungeonGuide_Guides["Theater of Pain"] = {
  id = "dung-theater",
  ["Theater of Pain"] = {
    id = "enc-theater-guide",
    order = 1,
    header = "Guide: Theater of Pain",
    ALL = {
      { text = "Platform edges knock — stay clear during fights.", type = "Mechanic", id = "gui-rTn7Sfkc99s" },
      { text = "High-priority kicks: Necrotic Bolt, Bone Spear, Discharge, Shout.", type = "Interrupt", id = "gui-ihU6zmS8LEA" },
      { text = "Purge/Soothe: Death Wish, Tantrum, Swift Strikes, Shadow Vulnerability, Bone Shield.", type = "Mechanic", id = "gui-tzXMD0iiDws" },
      { text = "LoS Blade throws near stairs or pillars.", type = "Mechanic", id = "gui-9OqWIZFNlg" },
      { text = "Trash duels before Xav change weekly — learn and assign kicks.", type = "Mechanic", id = "gui-CtfzrkaeTPo" },
      { text = "Stacking bleeds/DoTs require layered dispels and defensives.", type = "Mechanic", id = "gui-YKmDIpxg2g0" },
      { text = "Mordretha: interrupt Death Bolts, dodge charge lines + carnage swirls.", type = "Mechanic", id = "gui-yPGg4cvtzeo" }
    },
    TANK = {
      { text = "Big hits: Mortal Strike, Scythe, Unbalancing Blow, Hateful Strike, Smash.", type = "Mechanic", id = "gui-ASF3OniRGw" },
      { text = "Face all frontals away: Bone Storm, Smash, Death Winds, Eruption.", type = "Position", id = "gui-yRko2ew1oIg" }
    },
    HEALER = {
      { text = "Heavy AoE: Mighty Smash, Soulstorm, Death Spiral, Manifest Death.", type = "Mechanic", id = "gui-NYuYAZZFvFI" },
      { text = "Dispel priority: Withering Touch, Necrotic Blight, Curse/Poison, Manifest stacks.", type = "Mechanic", id = "gui-1U6oqkzfUtU" }
    },
    DPS = {
      { text = "CD timings: Monstrosity burn, Xav combos, Mordretha p2, Draw Soul adds.", type = "Call", id = "gui-O9g4sZjs6NA" },
      { text = "Kill banners (Xav), cleave adds (Gorechop), and LoS blades.", type = "Mechanic", id = "gui-88rLua7ZIbE" }
    }
  },
  
  ["Route"] = {
    id = "enc-theater-route",    
    order = 2,    
    header = "Route: Theater of Pain",
    ALL = {
      { text = "Can skip first trash pack. Stay tight on LEFT and follow me.", type = "Call", id = "gui-1YPffLjdwU0" },
      { text = "Pulling first trash into Bloodhorn for cleave.", type = "Call", id = "gui-zxxVDL29AcU" },
      { text = "Going to Xav's wing first after An Affront of Challengers.", type = "Call", id = "gui-LiNzIidodLQ" },
      { text = "Respect Arbalists bleed. Use personals if targeted.", type = "Call", id = "gui-bPN0lhEoUj4" },
      { text = "Nekthara mini first. Watch for Whirlwinds and interrupting roars.", type = "Call", id = "gui-Pa82uN8XDO4" },
      { text = "Harugia next. LOS on stairs if targeted by Ricocheting Blade.", type = "Call", id = "gui-WhI0Ooc511Q" },
      { text = "Focus Captain fast. Pull mobs out of aura if needed.", type = "Call", id = "gui-LwNlZMVqXlc" },
      { text = "Skipping Advent mini if we can, Warlock Gate if up.", type = "Call", id = "gui-YtwnpacEY" },
      { text = "Pulling Advent to stairs for LOS.", type = "Call", id = "gui-UPeRsAgLadA" },
      { text = "After Xav, heading Gorechop side next.", type = "Call", id = "gui-M7Exb8rielY" },
      { text = "Big pull with Sludge Spewers first. Kick Withering Discharge.", type = "Call", id = "gui-0BH2qgRqJIg" },
      { text = "Avoid Gasbag patrol by hugging left wall at top platform.", type = "Call", id = "gui-2IsS3mG6mmc" },
      { text = "Pulling hallway mobs into Gorechop for cleave.", type = "Call", id = "gui-pf2l70YWcXI" },
      { text = "After Gorechop, moving into Ossuary wing (Kul'tharok).", type = "Call", id = "gui-RNAxVh5qT4" },
      { text = "Grouping souls with LOS up to 1st Guardian. Let me agro.", type = "Call", id = "gui-6osMfh9Jl8k" },
      { text = "Taking right-left-right portals.", type = "Call", id = "gui-avACROFhTyA" },
      { text = "Focus Bone Magi shields with Purge or heavy single-target.", type = "Call", id = "gui-F4gThntmqkg" },
      { text = "Avoid pulling Dark Speakers unless we need for count.", type = "Call", id = "gui-KrjQlEiAPYU" },
      { text = "Kill extra trash near final portal if short on count.", type = "Call", id = "gui-KdvW1vtTDB4" }
    }
  },

  ["An Affront of Challengers"] = {
    id = "enc-theater-an-affront-of-challengers",
    order = 3,
    header = "Boss: An Affront of Challengers",
    ALL = {
      { text = "Loosely spread before Searing Death — use defensive if also hit by AoE.", type = "Call", id = "gui-ASDbNxH2ztA" },
      { text = "Bait and rotate during Noxious Spores — drop puddles safely.", type = "Mechanic", id = "gui-YFDB5dNcFYg" },
      { text = "Interrupt Necromantic Bolt — reduces tank pressure.", type = "Interrupt", id = "gui-LgE3qBqQSw" },
      { text = "Keep boss HPs even — Final Will stacks on survivors.", type = "Mechanic", id = "gui-6VQ6pUbhex0" },
      { text = "Avoid arena edges — outside combatants will knock you back.", type = "Mechanic", id = "gui-EPzp100mTIc" }
    },
    TANK = {
      { text = "Use defensive on Mortal Strike — heavy hit + 50% healing debuff.", type = "Mechanic", id = "gui-JDkZOhw3Pag" },
      { text = "Will pull bosses near entrance. Rotating clockwise as group after Spores.", type = "Call", id = "gui-zZm3e3Huyxo" },
      { text = "Face Paceran away — random frontal breath can be lethal.", type = "Position", id = "gui-t4zdueRrEWM" }
    },
    HEALER = {
      { text = "Dispel Withering Touch ASAP. Two players affected at once.", type = "Mechanic", id = "gui-H1xsgaZ63kA" },
      { text = "Prep CDs for Searing Death + Mighty Smash overlap.", type = "Call", id = "gui-dpYMZBK2SgY" }
    },
    DPS = {
      { text = "Focus Sathel early to reduce magic pressure.", type = "Mechanic", id = "gui-0metjn3tAI0" },
      { text = "Dodge Decaying Breath frontal from Paceran.", type = "Mechanic", id = "gui-AvQ7DMhw4Ys" }
    }
  },
  
  ["Xav the Unfallen"] = {
    id = "enc-theater-xav-the-unfallen",
    order = 4,
    header = "Boss: Xav the Unfallen",
    ALL = {
      { text = "Oppressive Banner up — drag boss to cleave ASAP.", type = "Call", id = "gui-jhlTWv9BrG0" },
      { text = "Avoid combo: Cleave (frontal), Slam (line), Crash (AoE silence).", type = "Mechanic", id = "gui-AGwg554U" },
      { text = "Blood and Glory — duel in pit. End fast for buff.", type = "Call", id = "gui-vvMVJ7zZrKI" },
      { text = "Interrupt Demoralizing Shout from Captains (trash).", type = "Interrupt", id = "gui-UA0Osmltb3w" }
    },
    TANK = {
      { text = "CD for Brutal Combo — heavy phys channel.", type = "Mechanic", id = "gui-N0GW5Uptq50" },
      { text = "Pre-position boss near banner spawn and away from group.", type = "Position", id = "gui-dCoGJu0M1nI" },
      { text = "Rotate boss between phases to avoid clipping party.", type = "Mechanic", id = "gui-E6jvjq8hug" }
    },
    HEALER = {
      { text = "CDs for Might of Maldraxxus combo (3 overlapping hits).", type = "Call", id = "gui-NlvLX2zJeMI" },
      { text = "Top duel players after return — they re-enter with damage taken.", type = "Mechanic", id = "gui-NPr9nc09HC4" }
    },
    DPS = {
      { text = "Kill Banner fast — slow makes combo phase lethal.", type = "Mechanic", id = "gui-jsRX9ZEWsdE" },
      { text = "Win duel fast — Glorified buff = big damage.", type = "Call", id = "gui-RsIf2SZZFFY" },
      { text = "Avoid all 3 combo casts — spread + move early.", type = "Mechanic", id = "gui-Rk6fn8EVOjs" }
    }
  },
  
  ["Kul'tharok"] = {
    id = "enc-theater-kultharok",
    order = 5,
    header = "Boss: Kul'tharok",
    ALL = {
      { text = "Draw Soul: Stack at edge to drop adds, then AoE + CC fast.", type = "Call", id = "gui-Xz5fWns9d0Y" },
      { text = "Well of Darkness on you — spread 4yds, use personal.", type = "Call", id = "gui-xpu2903zLsQ" },
      { text = "Avoid Death Spiral — orbs rotate arena, heavy damage.", type = "Mechanic", id = "gui-ou8BxdzJJyg" },
      { text = "Interrupt Necrotic Bolt casts throughout fight.", type = "Interrupt", id = "gui-7FdFImQtw4U" }
    },
    TANK = {
      { text = "Face boss away. Avoid standing in central puddle — high shadow dmg.", type = "Mechanic", id = "gui-Zu1aIVWit5I" },
      { text = "Pull slightly off-center to give melee orb room.", type = "Position", id = "gui-Qvu8RcCRK4" },
      { text = "No tank buster — save CDs for Draw Soul if needed.", type = "Call", id = "gui-Dr4oicTHgfQ" }
    },
    HEALER = {
      { text = "Prep CDs for Draw Soul — 8s ticking + post-add pressure.", type = "Call", id = "gui-jfITevLI0xM" },
      { text = "Dispel Shadow Vulnerability from Well of Darkness.", type = "Mechanic", id = "gui-l5lbArtCcBk" }
    },
    DPS = {
      { text = "Burn adds from Draw Soul fast — don’t let them reach boss.", type = "Mechanic", id = "gui-92gH9eMQEP0" },
      { text = "Stay loose — don’t overlap Well DoTs or orbs.", type = "Mechanic", id = "gui-Lz2c0xY6qW8" }
    }
  },

  ["Gorechop"] = {
    id = "enc-theater-gorechop",
    order = 6,
    header = "Boss: Gorechop",
    ALL = {
      { text = "Meat Hooks: Find the gap — dodge both waves cleanly.", type = "Call", id = "gui-oLnC6vc2Kf8" },
      { text = "Tenderizing Smash: Run out when pulled — avoid frontal slam.", type = "Call", id = "gui-3Uay5K1v4Os" },
      { text = "Kill adds near same location to control puddle sprawl.", type = "Mechanic", id = "gui-2zEBYumHQGU" },
      { text = "Interrupt Withering Discharge from Sludge-spewers.", type = "Interrupt", id = "gui-6p76xeAywg" }
    },
    TANK = {
      { text = "Use defensive on Hateful Strike — massive phys hit.", type = "Mechanic", id = "gui-Nz3WkkFiJXw" },
      { text = "Pull boss near wall or cleared area before Smash.", type = "Position", id = "gui-utSmf7GeRDg" },
      { text = "Drag adds to boss for cleave. Control puddle zones.", type = "Mechanic", id = "gui-Thvx3mUVHr4" },
      { text = "Face boss away after Smash — avoid cleaving group.", type = "Position", id = "gui-hLftPstS8uA" }
    },
    HEALER = {
      { text = "Top group before Smash + Hooks combo — heavy burst.", type = "Call", id = "gui-VcMhm3NXp54" },
      { text = "Dispel Withering Touch and Filth from party.", type = "Mechanic", id = "gui-mqAqgTEliDo" }
    },
    DPS = {
      { text = "Spread for Leaping Thrash from adds.", type = "Mechanic", id = "gui-1pRhXuAxjG0" },
      { text = "Burn Leftovers fast — kill near edge to conserve space.", type = "Mechanic", id = "gui-MZ6Io76So4" }
    }
  },
  
  ["Mordretha, the Endless Empress"] = {
    id = "enc-theater-mordretha",
    order = 7,
    header = "Boss: Mordretha, the Endless Empress",
    ALL = {
      { text = "Manifest Death: Spread out. Kick your Deathwalker, cleave them up.", type = "Call", id = "gui-XgE7g0qQQw8" },
      { text = "Echoes of Carnage: Dodge charge lines and swirlies.", type = "Call", id = "gui-kFz60wpzX0o" },
      { text = "Grasping Rift: Move out fast — avoid curse + stun pull.", type = "Mechanic", id = "gui-HbdNOOcZYDM" },
      { text = "Avoid Dark Devastation — frontal sweeps during cast.", type = "Mechanic", id = "gui-a5HEYRbg5FU" },
      { text = "Don't hug arena edge — knockback risk from surrounding mobs.", type = "Mechanic", id = "gui-NQVz719lJ7s" }
    },
    TANK = {
      { text = "CD for every Reaping Scythe — huge Shadow + physical hit.", type = "Mechanic", id = "gui-QbTTTAcsWVY" },
      { text = "Pulling boss to side — gives room to avoid Rift/Devastation.", type = "Call", id = "gui-sGklOwRLpJE" },
      { text = "Drag Deathwalkers into cleave. Group them fast.", type = "Call", id = "gui-flmG3qRjM" }
    },
    HEALER = {
      { text = "CDs for Manifest Death + Deathwalker add phase.", type = "Call", id = "gui-nQl5SBxHPXY" },
      { text = "Dispel Death Grasp curse if player is pulled by Rift.", type = "Mechanic", id = "gui-THYQp54aAtk" }
    },
    DPS = {
      { text = "Interrupt your Deathwalker fast. Group them under boss.", type = "Mechanic", id = "gui-6UTFukRxkI" },
      { text = "Save CDs for grouped adds and Echoes overlap.", type = "Call", id = "gui-AdS2XL2iYI" }
    }
  }
}