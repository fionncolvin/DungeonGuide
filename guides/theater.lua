DungeonGuide_Guides["Theater of Pain"] = {
  ["Theater of Pain"] = {
    order = 1,
    header = "Guide: Theater of Pain",
    ALL = {
      { text = "Combatants on platform edges will knock players back — avoid stepping too close in any boss arena.", type = "Mechanic" },
      { text = "High-priority interrupts: Necrotic Bolt (Sathel/Bonecasters), Demoralizing Shout (Captain), Withering Discharge (Sludge-Spewer), Bone Spear (Bone Magus).", type = "Interrupt" },
      { text = "Soothe or purge Death Wish (Contender), Raging Tantrum (Bloodhorn), Swift Strikes (Rek), Shadow Vulnerability (Portal Guardian), Bone Shield (Magus).", type = "Interrupt" },
      { text = "Use line-of-sight to avoid Ricocheting Blade from Harugia or Advent — position near stairs or corners.", type = "Mechanic" },
      { text = "Mini-boss duels before Xav vary per run — learn and plan interrupts for the active one.", type = "Mechanic" },
      { text = "Many abilities apply bleeds, magic DoTs, or healing absorbs — dispels and defensives must be planned around stacking effects.", type = "Mechanic" },
      { text = "Mordretha: interrupt Death Bolts from spawned adds, dodge Echoes of Carnage swirlies and charge lines.", type = "Mechanic" }
    },
    TANK = {
      { text = "Major tank busters: Mortal Strike (Dessia), Reaping Scythe (Mordretha), Unbalancing Blow (Rek), Hateful Strike (Gorechop), Colossus Smash (Heavin).", type = "Mechanic" },
      { text = "Face frontal casts away from group: Necrotic Eruption, Ground Smash, Death Winds, Bone Storm. Position with safe gaps in mind.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Big healing events: Mighty Smash (Dessia), Soulstorm (Guardian), Death Spiral + Well of Darkness (Kul’tharok), Manifest Death + adds (Mordretha).", type = "Mechanic" },
      { text = "Dispel priority: Withering Touch, Necrotic Blight, Poison/Curse from trash, Manifest Death overlap, Swift Strikes targets.", type = "Mechanic" }
    },
    DPS = {
      { text = "Save CDs for Monstrosity burn phase, Xav combo phases, Mordretha phase 2, and clearing Draw Soul adds.", type = "Mechanic" },
      { text = "Kill banners on Xav, cleave adds on Gorechop, and manage ricocheting blades by spreading/LoS.", type = "Mechanic" }
    }
  },  

  ["An Affront of Challengers"] = {
    order = 2,
    header = "Boss: An Affront of Challengers",
    ALL = {
      { text = "Searing Death. Spread and pop personal if overlap.", type = "Call" },
      { text = "Noxious Spores. Bait puddles and rotate with group.", type = "Call" },
      { text = "Interrupt Necromantic Bolt from Sathel.", type = "Interrupt" }
    },
    TANK = {
      { text = "Use defensive for Mortal Strike — big hit + 50% healing debuff.", type = "Mechanic" },
      { text = "Position bosses near entrance, rotate during Spore puddles.", type = "Position" }
    },
    HEALER = {
      { text = "Dispel Withering Touch quickly. Watch for overlap.", type = "Mechanic" },
      { text = "Prep CDs for Mighty Smash and Searing overlap.", type = "Call" }
    },
    DPS = {
      { text = "Dodge Decaying Breath frontal from Paceran.", type = "Mechanic" },
      { text = "Focus Sathel to remove caster early.", type = "Mechanic" }
    }
  },

  ["Gorechop"] = {
    order = 3,
    header = "Boss: Gorechop",
    ALL = {
      { text = "Hooks soon. Find gap and dodge both waves.", type = "Call" },
      { text = "Pulled in! Running out fast before smash.", type = "Call" },
      { text = "Interrupt Withering Discharge from Sludge-spewers.", type = "Interrupt" }
    },
    TANK = {
      { text = "Use CD for Hateful Strike — massive phys hit.", type = "Mechanic" },
      { text = "Position boss near cleared puddle zone pre-smash.", type = "Position" }
    },
    HEALER = {
      { text = "Top group before Smash + Hooks combo. Heavy burst.", type = "Mechanic" },
      { text = "Dispel Withering or Filth debuffs from group.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stay loosely spread for Leaping Thrash from adds.", type = "Mechanic" },
      { text = "Kill Leftovers near same spot to conserve space.", type = "Position" }
    }
  },

  ["Xav the Unfallen"] = {
    order = 4,
    header = "Boss: Xav the Unfallen",
    ALL = {
      { text = "Banner up. Cleave it with boss ASAP.", type = "Call" },
      { text = "Blood and Glory. Win duel fast to get buff.", type = "Call" },
      { text = "Interrupt Demoralizing Shout from Captain trash.", type = "Interrupt" }
    },
    TANK = {
      { text = "Use CD for Brutal Combo — stacked physical hits.", type = "Mechanic" },
      { text = "Face boss toward edge pre-combo. Avoid party cleave.", type = "Position" }
    },
    HEALER = {
      { text = "Prepare group CDs for Might of Maldraxxus combo.", type = "Call" },
      { text = "Top returning duel players quickly.", type = "Mechanic" }
    },
    DPS = {
      { text = "Avoid Cleave/Crush/Crash combos. Move early.", type = "Mechanic" },
      { text = "Kill Banner on spawn. Avoid combo while slowed.", type = "Mechanic" }
    }
  },

  ["Kul'tharok"] = {
    order = 5,
    header = "Boss: Kul'tharok",
    ALL = {
      { text = "Draw Soul phase. Stack at edge to drop adds.", type = "Call" },
      { text = "Well of Darkness. Spread out from others.", type = "Call" },
      { text = "Interrupt Necrotic Bolt/Bone Spear from trash.", type = "Interrupt" }
    },
    TANK = {
      { text = "Point Necrotic Eruption frontal away from group.", type = "Mechanic" },
      { text = "Stay out of boss puddle. Position safely.", type = "Position" }
    },
    HEALER = {
      { text = "Prep CDs for Draw Soul + add wave damage.", type = "Call" },
      { text = "Dispel Shadow Vulnerability from Soulstorm debuff.", type = "Mechanic" }
    },
    DPS = {
      { text = "Burn adds dropped from Draw Soul quickly.", type = "Mechanic" },
      { text = "Avoid Death Spiral orbs rotating arena.", type = "Mechanic" }
    }
  },

  ["Mordretha, the Endless Empress"] = {
    order = 6,
    header = "Boss: Mordretha, the Endless Empress",
    ALL = {
      { text = "Manifest Death. Spread and interrupt add.", type = "Call" },
      { text = "Echoes of Carnage phase. Dodge swirls + charges.", type = "Call" },
      { text = "Interrupt Death Bolt from Deathwalker adds.", type = "Interrupt" }
    },
    TANK = {
      { text = "Defensive for Reaping Scythe every 15s.", type = "Mechanic" },
      { text = "Tank boss near center to allow movement away from Rift.", type = "Position" }
    },
    HEALER = {
      { text = "Prep CDs for Echoes of Carnage + Manifest Death.", type = "Call" },
      { text = "Dispel Death Grasp curse if caught in Rift.", type = "Mechanic" }
    },
    DPS = {
      { text = "Interrupt your add fast after Manifest Death.", type = "Mechanic" },
      { text = "Avoid Dark Devastation frontal beam.", type = "Mechanic" }
    }
  }
}