DungeonGuide_Guides["The Rookery"] = {
  ["The Rookery"] = {
    order = 1,
    header = "Guide: The Rookery",
    ALL = {
      { text = "Interrupts: Lightning Bolt (Thunderers), Lightning Surge (Rooktenders), Void Bolt (Oracles/Ascendants).", type = "Interrupt" },
      { text = "Stormrooks cast Energized Barrage — spread + dodge swirlies.", type = "Mechanic" },
      { text = "Void Diffusers: Interrupt Attracting Shadows, avoid Arcing Void cleave.", type = "Mechanic" },
      { text = "Gorren: Pass Chaotic Corruption debuff, place Crush puddles at edges.", type = "Mechanic" },
      { text = "Monstrosity: Burn at 80% — 20s stun + 100% dmg taken. Line up CDs.", type = "Mechanic" },
      { text = "Assign players to shatter Voidstone Fragments with Stormrider’s Charge after Upheaval.", type = "Mechanic" }
    },
    TANK = {
      { text = "Void Claw (Crushers) reduces healing. Kite to reset.", type = "Mechanic" },
      { text = "Face Oblivion Wave away (Monstrosity). Stay in melee — prevent Entropy casts.", type = "Mechanic" },
      { text = "Keep mobs out of Entropy fields and AoE puddles when possible.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Big healing: Lightning Torrent (Kyrioss), Arcing Void, Unleash Darkness, Upheaval.", type = "Mechanic" },
      { text = "Dispel: Chaotic Corruption (Gorren), Seeping Corruption (Oracles), Feasting Void (Ascendants), Unleash Corruption (Monstrosity).", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill priority: Void Diffusers, Stormrooks, Ascendants.", type = "Mechanic" },
      { text = "Use movement buffs to rotate during beam phase.", type = "Mechanic" },
      { text = "Assign shard duty: 1 per platform. Pop Charge after Upheaval swirls clear.", type = "Call" }
    }
  },

  ["Route"] = {
    order = 2,
    header = "Route: The Rookery",
    ALL = {
      { text = "Pull Quartermaster Corti + right-side guards for extra count.", type = "Call" },
      { text = "Focus Corti quickly. Watch Bounding Void frontal.", type = "Mechanic" },
      { text = "Move into Storm’s Roost: right side first, grab patrol + adjacent pack.", type = "Call" },
      { text = "Kick Cursed Thunderers. Watch Storm Rook unavoidable group damage.", type = "Mechanic" },
      { text = "Clear around Storm’s Roost room one pack at a time.", type = "Call" },
      { text = "Optional: Skip triple-caster pack if group coordination is low.", type = "Mechanic" },
      { text = "First boss: Cryos Kyrios next.", type = "Call" },
      { text = "After boss, pull patrol + adjacent pack downstairs.", type = "Call" },
      { text = "Ignore corner pack after boss. Not needed for count.", type = "Call" },
      { text = "One pack at a time after patrol. Respect Attracting Shadows damage.", type = "Mechanic" },
      { text = "Walk past sleeping Void Crushers safely. Short aggro radius.", type = "Call" },
      { text = "Next key pull: double Void Diffuser pack. Focus one fast.", type = "Call" },
      { text = "Leading into Gorak Goran: pull 8 trash onto boss.", type = "Call" },
      { text = "After Gorak Goran, pull two Crushers + Void Ascendant together.", type = "Call" },
      { text = "Ascendant orb projectiles: melee position carefully.", type = "Mechanic" },
      { text = "Head downstairs. Mass pull Afflicted Civilians for cleave.", type = "Call" },
      { text = "Skip Crushers in lower section if safe on count.", type = "Mechanic" },
      { text = "Pull Radiating Voidstone solo. Avoid damage debuff stacking.", type = "Call" },
      { text = "Kill 3 Void Ascendants to spawn final boss.", type = "Call" },
      { text = "Pull Crushers + Voidstone if short on count at end.", type = "Call" },
    },
  },
    
  ["Kyrioss"] = {
    order = 3,
    header = "Boss: Kyrioss",
    ALL = {
      { text = "Crashing Thunder — spread 8yds. Use minor defensives.", type = "Call" },
      { text = "Wild Lightning — stack in melee after Thunder to control line spawns.", type = "Mechanic" },
      { text = "Lightning Torrent phase — group near grates, rotate as a unit.", type = "Call" },
      { text = "Watch for Grounding Bolts — circles drop under each player.", type = "Mechanic" },
      { text = "Avoid Lightning Dash at phase end — 12yd AoE on random player.", type = "Mechanic" }
    },
    TANK = {
      { text = "Face boss away during melee phase. Maintain safe space.", type = "Position" },
      { text = "Hold boss near mid for phase transition positioning.", type = "Position" }
    },
    HEALER = {
      { text = "CDs for Lightning Torrent — heavy ticking AoE + ground effects.", type = "Call" },
      { text = "Top group after Crashing Thunder and Dash phase.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stack after Thunder to align Wild Lightning paths.", type = "Mechanic" },
      { text = "Dodge into safe space during Lightning Torrent beams.", type = "Mechanic" }
    }
  },
  
  ["Stormguard Gorren"] = {
    order = 4,
    header = "Boss: Stormguard Gorren",
    ALL = {
      { text = "Crush Reality targeting soon — move to edge to soak. Avoid beam lines.", type = "Call" },
      { text = "Corruption DoT on me. Passing to tank, then safe player.", type = "Call" },
      { text = "Spread ranged around edges to control Crush placement.", type = "Mechanic" },
      { text = "Run from boss during Dark Gravity — 10yd explosion radius.", type = "Mechanic" },
      { text = "Interrupt Void Bolt from Corrupted Oracles.", type = "Interrupt" }
    },
    TANK = {
      { text = "Soak 2nd Corruption stack if needed — use defensive for Vulnerability hit.", type = "Mechanic" },
      { text = "Face away before Crush leap — prevent beam cleave on group.", type = "Position" },
      { text = "Help soak puddles at edge. Rotate position post-leap.", type = "Position" }
    },
    HEALER = {
      { text = "CDs for Dark Gravity + Crush overlap — high spike.", type = "Call" },
      { text = "Top players holding Corruption — especially if soaking Crush too.", type = "Mechanic" },
      { text = "Dispel Seeping Corruption (curse) if players don’t have CDs.", type = "Mechanic" }
    },
    DPS = {
      { text = "Help pass Corruption debuff safely — avoid bouncing to same player twice.", type = "Mechanic" },
      { text = "Dodge beam lines after Crush. Save space near edges.", type = "Mechanic" },
      { text = "Hold CDs for clean post-jump phase when safe.", type = "Call" }
    }
  },
 
  ["Voidstone Monstrosity"] = {
    order = 5,
    header = "Boss: Voidstone Monstrosity",
    ALL = {
      { text = "Null Upheaval soon — spread, pop defensive, dodge swirlies.", type = "Call" },
      { text = "Void Shell breaks at 80% — burn phase with 100% damage amp.", type = "Call" },
      { text = "Stormrider’s Charge on me — running to my shard.", type = "Call" },
      { text = "Stand clear of Oblivion Wave frontal — wide line AoE.", type = "Mechanic" },
      { text = "Destroy all 3 Voidstone Fragments within 15s or adds spawn.", type = "Mechanic" }
    },
    TANK = {
      { text = "Never leave melee. Entropy wipe if boss idle.", type = "Mechanic" },
      { text = "Face boss away for Oblivion Wave. Never leave melee or boss spams Entropy.", type = "Mechanic" },
      { text = "Major CD on Oblivion Wave — heavy shadow damage to all in line.", type = "Mechanic" },
      { text = "Reposition boss slightly each cycle to control puddle zones.", type = "Position" }
    },
    HEALER = {
      { text = "CDs for Null Upheaval + Unleash Darkness overlap.", type = "Call" },
      { text = "Dispel Unleash Corruption quickly — position player to avoid melee puddles.", type = "Mechanic" },
      { text = "Float between shard platforms if a runner fails.", type = "Mechanic" }
    },
    DPS = {
      { text = "Hold CDs for Storm’s Vengeance burn phase (20s window).", type = "Call" },
      { text = "Assigned shard runner — wait for swirlies, then charge platform.", type = "Mechanic" },
      { text = "Destroy Fragments fast — avoid add spawns from Corruption Overload.", type = "Mechanic" }
    }
  }
}