DungeonGuide_Guides["The Rookery"] = {
  ["The Rookery"] = {
    order = 1,
    header = "Guide: The Rookery",
    ALL = {
      { text = "Quartermaster mini-boss casts Bounding Void + Entropy Shield. Avoid orbs and rotate behind shield to keep DPS uptime.", type = "Mechanic" },
      { text = "Interrupt Lightning Bolt (Thunderers), Lightning Surge (Rooktenders), Void Bolt (Oracles/Ascendants).", type = "Interrupt" },
      { text = "Avoid Energized Barrage (Stormrooks) and Wild Lightning (Voidriders). Dodge AoE and stay spread if targeted.", type = "Mechanic" },
      { text = "Void Diffusers cast Attracting Shadows (pulls + AoE) and Arcing Void (targeted cleave) — dangerous overlaps.", type = "Mechanic" },
      { text = "Stormguard Gorren requires coordinated debuff passing (Chaotic Corruption) and puddle placement (Crush Reality).", type = "Mechanic" },
      { text = "Voidstone Monstrosity burn phase at 80% HP — 20s stun, 100% damage amp. Line up cooldowns here.", type = "Mechanic" },
      { text = "Break Voidstone Fragments after Upheaval with Stormrider’s Charge. Assign lanes in advance to avoid add spawns.", type = "Mechanic" }
    },
    TANK = {
      { text = "Void Claw from Crushers reduces healing. Kite when needed to reset. Position Oblivion Wave away from group.", type = "Mechanic" },
      { text = "Keep boss in melee (Voidstone Monstrosity) or it will cast Entropy repeatedly and wipe the group.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Big healing moments: Lightning Torrent (Kyrioss), Attracting Shadows + Arcing Void (Diffusers), Unleash Darkness, and Upheaval burst.", type = "Mechanic" },
      { text = "Dispel: Chaotic Corruption (Gorren), Seeping Corruption (Oracles), Feasting Void (Ascendants), Unleash Corruption (Monstrosity).", type = "Mechanic" }
    },
    DPS = {
      { text = "Focus fire high-danger mobs: Void Diffusers, Ascendants, Stormrooks. Save CDs for Monstrosity burn phase.", type = "Mechanic" },
      { text = "Pre-assign players to break Voidstone Fragments using Stormrider’s Charge — one per platform.", type = "Mechanic" }
    }
  },

  ["Kyrioss"] = {
    order = 2,
    header = "Boss: Kyrioss",
    ALL = {
      { text = "Crashing Thunder cast. Spread and use small CD.", type = "Call" },
      { text = "Lightning Torrent phase. DONT start on grates and rotate with beams.", type = "Call" },
      { text = "Interrupt Lightning Bolt from trash Thunderers.", type = "Interrupt" }
    },
    TANK = {
      { text = "Face boss to edge during dash phase to avoid overlaps.", type = "Position" },
      { text = "Pick up any remaining adds before intermission begins.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Prep CDs for Lightning Torrent + Wild Lightning combo.", type = "Call" },
      { text = "Top group after Crashing Thunder burst.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stack in melee to align Wild Lightning swirlies.", type = "Position" },
      { text = "Spread immediately after Lightning Dash ends.", type = "Mechanic" }
    }
  },

  ["Stormguard Gorren"] = {
    order = 3,
    header = "Boss: Stormguard Gorren",
    ALL = {
      { text = "Corruption debuff on me. Passing to safe target.", type = "Call" },
      { text = "Crush Reality leaping soon. Moving to soak at edge.", type = "Call" },
      { text = "Interrupt Void Bolt from Corrupted Oracles.", type = "Interrupt" }
    },
    TANK = {
      { text = "Soak 2nd Corruption stack with defensive if needed.", type = "Mechanic" },
      { text = "Face away during jump to avoid beam cleaves.", type = "Position" }
    },
    HEALER = {
      { text = "Use CDs during Dark Gravity + Crush combo.", type = "Call" },
      { text = "Dispel curse from Seeping Corruption if no defensive used.", type = "Mechanic" }
    },
    DPS = {
      { text = "Avoid Crush Reality puddle and beam spawns.", type = "Mechanic" },
      { text = "Hold CDs for clean platform phase after jump.", type = "Mechanic" }
    }
  },

  ["Voidstone Monstrosity"] = {
    order = 4,
    header = "Boss: Voidstone Monstrosity",
    ALL = {
      { text = "Stormrider’s Charge on me. Running to assigned shard.", type = "Call" },
      { text = "Null Upheaval. Spread and pop defensive.", type = "Call" },
      { text = "Interrupt Void Bolt from trash Ascendants.", type = "Interrupt" }
    },
    TANK = {
      { text = "Face Oblivion Wave away from party. Use major CD.", type = "Mechanic" },
      { text = "Never leave melee or Entropy wipe will occur.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Prep CDs for Unleash Darkness after Void Extraction stacks.", type = "Call" },
      { text = "Dispel Unleash Corruption when player is out of melee.", type = "Mechanic" }
    },
    DPS = {
      { text = "Pop shard with Stormrider’s Charge after swirlies fade.", type = "Mechanic" },
      { text = "Hold Dam CDs for Storm’s Vengeance burn window.", type = "Call" }
    }
  }
}