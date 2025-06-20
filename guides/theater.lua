DungeonGuide_Guides["Theater of Pain"] = {
  ["Theater of Pain"] = {
    order = 1,
    header = "Guide: Theater of Pain",
    ALL = {
      { text = "Platform edges knock — stay clear during fights.", type = "Mechanic" },
      { text = "High-priority kicks: Necrotic Bolt, Bone Spear, Discharge, Shout.", type = "Interrupt" },
      { text = "Purge/Soothe: Death Wish, Tantrum, Swift Strikes, Shadow Vulnerability, Bone Shield.", type = "Mechanic" },
      { text = "LoS Blade throws near stairs or pillars.", type = "Mechanic" },
      { text = "Trash duels before Xav change weekly — learn and assign kicks.", type = "Mechanic" },
      { text = "Stacking bleeds/DoTs require layered dispels and defensives.", type = "Mechanic" },
      { text = "Mordretha: interrupt Death Bolts, dodge charge lines + carnage swirls.", type = "Mechanic" }
    },
    TANK = {
      { text = "Big hits: Mortal Strike, Scythe, Unbalancing Blow, Hateful Strike, Smash.", type = "Mechanic" },
      { text = "Face all frontals away: Bone Storm, Smash, Death Winds, Eruption.", type = "Position" }
    },
    HEALER = {
      { text = "Heavy AoE: Mighty Smash, Soulstorm, Death Spiral, Manifest Death.", type = "Mechanic" },
      { text = "Dispel priority: Withering Touch, Necrotic Blight, Curse/Poison, Manifest stacks.", type = "Mechanic" }
    },
    DPS = {
      { text = "CD timings: Monstrosity burn, Xav combos, Mordretha p2, Draw Soul adds.", type = "Call" },
      { text = "Kill banners (Xav), cleave adds (Gorechop), and LoS blades.", type = "Mechanic" }
    }
  },
  
  ["Route"] = {    
    order = 2,    
    header = "Route: Theater of Pain",
    ALL = {
      { text = "Can skip first trash pack. Stay tight on LEFT and follow me.", type = "Call" },
      { text = "Pulling first trash into Bloodhorn for cleave.", type = "Call" },
      { text = "Going to Xav's wing first after An Affront of Challengers.", type = "Call" },
      { text = "Respect Arbalists bleed. Use personals if targeted.", type = "Call" },
      { text = "Nekthara mini first. Watch for Whirlwinds and interrupting roars.", type = "Call" },
      { text = "Harugia next. LOS on stairs if targeted by Ricocheting Blade.", type = "Call" },
      { text = "Focus Captain fast. Pull mobs out of aura if needed.", type = "Call" },
      { text = "Skipping Advent mini if we can, Warlock Gate if up.", type = "Call" },
      { text = "Pulling Advent to stairs for LOS.", type = "Call" },
      { text = "After Xav, heading Gorechop side next.", type = "Call" },
      { text = "Big pull with Sludge Spewers first. Kick Withering Discharge.", type = "Call" },
      { text = "Avoid Gasbag patrol by hugging left wall at top platform.", type = "Call" },
      { text = "Pulling hallway mobs into Gorechop for cleave.", type = "Call" },
      { text = "After Gorechop, moving into Ossuary wing (Kul'tharok).", type = "Call" },
      { text = "Grouping souls with LOS up to 1st Guardian. Let me agro.", type = "Call" },
      { text = "Taking right-left-right portals.", type = "Call" },
      { text = "Focus Bone Magi shields with Purge or heavy single-target.", type = "Call" },
      { text = "Avoid pulling Dark Speakers unless we need for count.", type = "Call" },
      { text = "Kill extra trash near final portal if short on count.", type = "Call" }
    }
  },

  ["An Affront of Challengers"] = {
    order = 3,
    header = "Boss: An Affront of Challengers",
    ALL = {
      { text = "Loosely spread before Searing Death — use defensive if also hit by AoE.", type = "Call" },
      { text = "Bait and rotate during Noxious Spores — drop puddles safely.", type = "Mechanic" },
      { text = "Interrupt Necromantic Bolt — reduces tank pressure.", type = "Interrupt" },
      { text = "Keep boss HPs even — Final Will stacks on survivors.", type = "Mechanic" },
      { text = "Avoid arena edges — outside combatants will knock you back.", type = "Mechanic" }
    },
    TANK = {
      { text = "Use defensive on Mortal Strike — heavy hit + 50% healing debuff.", type = "Mechanic" },
      { text = "Will pull bosses near entrance. Rotating clockwise as group after Spores.", type = "Call" },
      { text = "Face Paceran away — random frontal breath can be lethal.", type = "Position" }
    },
    HEALER = {
      { text = "Dispel Withering Touch ASAP. Two players affected at once.", type = "Mechanic" },
      { text = "Prep CDs for Searing Death + Mighty Smash overlap.", type = "Call" }
    },
    DPS = {
      { text = "Focus Sathel early to reduce magic pressure.", type = "Mechanic" },
      { text = "Dodge Decaying Breath frontal from Paceran.", type = "Mechanic" }
    }
  },
  
  ["Xav the Unfallen"] = {
    order = 4,
    header = "Boss: Xav the Unfallen",
    ALL = {
      { text = "Oppressive Banner up — drag boss to cleave ASAP.", type = "Call" },
      { text = "Avoid combo: Cleave (frontal), Slam (line), Crash (AoE silence).", type = "Mechanic" },
      { text = "Blood and Glory — duel in pit. End fast for buff.", type = "Call" },
      { text = "Interrupt Demoralizing Shout from Captains (trash).", type = "Interrupt" }
    },
    TANK = {
      { text = "CD for Brutal Combo — heavy phys channel.", type = "Mechanic" },
      { text = "Pre-position boss near banner spawn and away from group.", type = "Position" },
      { text = "Rotate boss between phases to avoid clipping party.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs for Might of Maldraxxus combo (3 overlapping hits).", type = "Call" },
      { text = "Top duel players after return — they re-enter with damage taken.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill Banner fast — slow makes combo phase lethal.", type = "Mechanic" },
      { text = "Win duel fast — Glorified buff = big damage.", type = "Call" },
      { text = "Avoid all 3 combo casts — spread + move early.", type = "Mechanic" }
    }
  },
  
  ["Kul'tharok"] = {
    order = 5,
    header = "Boss: Kul'tharok",
    ALL = {
      { text = "Draw Soul: Stack at edge to drop adds, then AoE + CC fast.", type = "Call" },
      { text = "Well of Darkness on you — spread 4yds, use personal.", type = "Call" },
      { text = "Avoid Death Spiral — orbs rotate arena, heavy damage.", type = "Mechanic" },
      { text = "Interrupt Necrotic Bolt casts throughout fight.", type = "Interrupt" }
    },
    TANK = {
      { text = "Face boss away. Avoid standing in central puddle — high shadow dmg.", type = "Mechanic" },
      { text = "Pull slightly off-center to give melee orb room.", type = "Position" },
      { text = "No tank buster — save CDs for Draw Soul if needed.", type = "Call" }
    },
    HEALER = {
      { text = "Prep CDs for Draw Soul — 8s ticking + post-add pressure.", type = "Call" },
      { text = "Dispel Shadow Vulnerability from Well of Darkness.", type = "Mechanic" }
    },
    DPS = {
      { text = "Burn adds from Draw Soul fast — don’t let them reach boss.", type = "Mechanic" },
      { text = "Stay loose — don’t overlap Well DoTs or orbs.", type = "Mechanic" }
    }
  },

  ["Gorechop"] = {
    order = 6,
    header = "Boss: Gorechop",
    ALL = {
      { text = "Meat Hooks: Find the gap — dodge both waves cleanly.", type = "Call" },
      { text = "Tenderizing Smash: Run out when pulled — avoid frontal slam.", type = "Call" },
      { text = "Kill adds near same location to control puddle sprawl.", type = "Mechanic" },
      { text = "Interrupt Withering Discharge from Sludge-spewers.", type = "Interrupt" }
    },
    TANK = {
      { text = "Use defensive on Hateful Strike — massive phys hit.", type = "Mechanic" },
      { text = "Pull boss near wall or cleared area before Smash.", type = "Position" },
      { text = "Drag adds to boss for cleave. Control puddle zones.", type = "Mechanic" },
      { text = "Face boss away after Smash — avoid cleaving group.", type = "Position" }
    },
    HEALER = {
      { text = "Top group before Smash + Hooks combo — heavy burst.", type = "Call" },
      { text = "Dispel Withering Touch and Filth from party.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread for Leaping Thrash from adds.", type = "Mechanic" },
      { text = "Burn Leftovers fast — kill near edge to conserve space.", type = "Mechanic" }
    }
  },
  
  ["Mordretha, the Endless Empress"] = {
    order = 7,
    header = "Boss: Mordretha, the Endless Empress",
    ALL = {
      { text = "Manifest Death: Spread out. Kick your Deathwalker, cleave them up.", type = "Call" },
      { text = "Echoes of Carnage: Dodge charge lines and swirlies.", type = "Call" },
      { text = "Grasping Rift: Move out fast — avoid curse + stun pull.", type = "Mechanic" },
      { text = "Avoid Dark Devastation — frontal sweeps during cast.", type = "Mechanic" },
      { text = "Don't hug arena edge — knockback risk from surrounding mobs.", type = "Mechanic" }
    },
    TANK = {
      { text = "CD for every Reaping Scythe — huge Shadow + physical hit.", type = "Mechanic" },
      { text = "Pulling boss to side — gives room to avoid Rift/Devastation.", type = "Call" },
      { text = "Drag Deathwalkers into cleave. Group them fast.", type = "Call" }
    },
    HEALER = {
      { text = "CDs for Manifest Death + Deathwalker add phase.", type = "Call" },
      { text = "Dispel Death Grasp curse if player is pulled by Rift.", type = "Mechanic" }
    },
    DPS = {
      { text = "Interrupt your Deathwalker fast. Group them under boss.", type = "Mechanic" },
      { text = "Save CDs for grouped adds and Echoes overlap.", type = "Call" }
    }
  }
}