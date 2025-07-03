DungeonGuide_Guides["The Rookery"] = {
  id = "dung-rookery",
  ["The Rookery"] = {
    id = "enc-rookery-guide",
    order = 1,
    header = "Guide: The Rookery",
    ALL = {
      { text = "Interrupts: Lightning Bolt (Thunderers), Lightning Surge (Rooktenders), Void Bolt (Oracles/Ascendants).", type = "Interrupt", id = "gui-jACtGQKZI" },
      { text = "Stormrooks cast Energized Barrage — spread + dodge swirlies.", type = "Mechanic", id = "gui-OHdznq0AmbY" },
      { text = "Void Diffusers: Interrupt Attracting Shadows, avoid Arcing Void cleave.", type = "Mechanic", id = "gui-oc2UNftmcDk" },
      { text = "Gorren: Pass Chaotic Corruption debuff, place Crush puddles at edges.", type = "Mechanic", id = "gui-eyRR3zJeu5Q" },
      { text = "Monstrosity: Burn at 80% — 20s stun + 100% dmg taken. Line up CDs.", type = "Mechanic", id = "gui-YZTbIKVhGFs" },
      { text = "Assign players to shatter Voidstone Fragments with Stormrider’s Charge after Upheaval.", type = "Mechanic", id = "gui-Eog56kRtif4" }
    },
    TANK = {
      { text = "Void Claw (Crushers) reduces healing. Kite to reset.", type = "Mechanic", id = "gui-UdrQPzHDC64" },
      { text = "Face Oblivion Wave away (Monstrosity). Stay in melee — prevent Entropy casts.", type = "Mechanic", id = "gui-O6dkB0GBW4" },
      { text = "Keep mobs out of Entropy fields and AoE puddles when possible.", type = "Mechanic", id = "gui-0XEMYdlfOI" }
    },
    HEALER = {
      { text = "Big healing: Lightning Torrent (Kyrioss), Arcing Void, Unleash Darkness, Upheaval.", type = "Mechanic", id = "gui-kuf4hO9pPJg" },
      { text = "Dispel: Chaotic Corruption (Gorren), Seeping Corruption (Oracles), Feasting Void (Ascendants), Unleash Corruption (Monstrosity).", type = "Mechanic", id = "gui-0273WTlIiE" }
    },
    DPS = {
      { text = "Kill priority: Void Diffusers, Stormrooks, Ascendants.", type = "Mechanic", id = "gui-PcHTIgE7Os" },
      { text = "Use movement buffs to rotate during beam phase.", type = "Mechanic", id = "gui-n9frkwintA" },
      { text = "Assign shard duty: 1 per platform. Pop Charge after Upheaval swirls clear.", type = "Call", id = "gui-XhH8hYKjB4U" }
    }
  },

  ["Route"] = {
    id = "enc-rookery-route",
    order = 2,
    header = "Route: The Rookery",
    ALL = {
      { text = "Pull Quartermaster Corti + right-side guards for extra count.", type = "Call", id = "gui-KsZDSRTIow" },
      { text = "Focus Corti quickly. Watch Bounding Void frontal.", type = "Mechanic", id = "gui-5CnFPSceC4" },
      { text = "Move into Storm’s Roost: right side first, grab patrol + adjacent pack.", type = "Call", id = "gui-vnjfOAC0nw" },
      { text = "Kick Cursed Thunderers. Watch Storm Rook unavoidable group damage.", type = "Mechanic", id = "gui-1UTBeFhEmSI" },
      { text = "Clear around Storm’s Roost room one pack at a time.", type = "Call", id = "gui-Qgl0kn3APYM" },
      { text = "Optional: Skip triple-caster pack if group coordination is low.", type = "Mechanic", id = "gui-RMcy8ta5rCE" },
      { text = "First boss: Cryos Kyrios next.", type = "Call", id = "gui-f4FIdRWRzFg" },
      { text = "After boss, pull patrol + adjacent pack downstairs.", type = "Call", id = "gui-EPpkidq44fw" },
      { text = "Ignore corner pack after boss. Not needed for count.", type = "Call", id = "gui-yJdatMZ6tzM" },
      { text = "One pack at a time after patrol. Respect Attracting Shadows damage.", type = "Mechanic", id = "gui-xSH2xTeRc8" },
      { text = "Walk past sleeping Void Crushers safely. Short aggro radius.", type = "Call", id = "gui-RJen33yyZ8U" },
      { text = "Next key pull: double Void Diffuser pack. Focus one fast.", type = "Call", id = "gui-eQS76l50FgM" },
      { text = "Leading into Gorak Goran: pull 8 trash onto boss.", type = "Call", id = "gui-aevbSI8g3VE" },
      { text = "After Gorak Goran, pull two Crushers + Void Ascendant together.", type = "Call", id = "gui-BhKTWA8rNdM" },
      { text = "Ascendant orb projectiles: melee position carefully.", type = "Mechanic", id = "gui-XzQHeKe3Z2c" },
      { text = "Head downstairs. Mass pull Afflicted Civilians for cleave.", type = "Call", id = "gui-LEEshVyusRc" },
      { text = "Skip Crushers in lower section if safe on count.", type = "Mechanic", id = "gui-G1tDdQ6DWA0" },
      { text = "Pull Radiating Voidstone solo. Avoid damage debuff stacking.", type = "Call", id = "gui-afBdIaIc5c0" },
      { text = "Kill 3 Void Ascendants to spawn final boss.", type = "Call", id = "gui-bx8BYL4wWg" },
      { text = "Pull Crushers + Voidstone if short on count at end.", type = "Call", id = "gui-QoQqFgxTGc" },
    },
  },
    
  ["Kyrioss"] = {
    id = "enc-rookery-kyrioss",
    order = 3,
    header = "Boss: Kyrioss",
    ALL = {
      { text = "Crashing Thunder — spread 8yds. Use minor defensives.", type = "Call", id = "gui-vISN8oa9X9M" },
      { text = "Wild Lightning — stack in melee after Thunder to control line spawns.", type = "Mechanic", id = "gui-q1woDK8Vs" },
      { text = "Lightning Torrent phase — group near grates, rotate as a unit.", type = "Call", id = "gui-BjdCHJr9F6E" },
      { text = "Watch for Grounding Bolts — circles drop under each player.", type = "Mechanic", id = "gui-oYR6OvMfUhE" },
      { text = "Avoid Lightning Dash at phase end — 12yd AoE on random player.", type = "Mechanic", id = "gui-jSqUXMZK8o" }
    },
    TANK = {
      { text = "Face boss away during melee phase. Maintain safe space.", type = "Position", id = "gui-PyKv7b2c6lc" },
      { text = "Hold boss near mid for phase transition positioning.", type = "Position", id = "gui-iieV2nXuvw" }
    },
    HEALER = {
      { text = "CDs for Lightning Torrent — heavy ticking AoE + ground effects.", type = "Call", id = "gui-IUGxteikpw" },
      { text = "Top group after Crashing Thunder and Dash phase.", type = "Mechanic", id = "gui-jJMvdk3aTc8" }
    },
    DPS = {
      { text = "Stack after Thunder to align Wild Lightning paths.", type = "Mechanic", id = "gui-M9LEw6i1nzE" },
      { text = "Dodge into safe space during Lightning Torrent beams.", type = "Mechanic", id = "gui-S3puXGEBfNw" }
    }
  },
  
  ["Stormguard Gorren"] = {
    id = "enc-rookery-stormguard-gorren",
    order = 4,
    header = "Boss: Stormguard Gorren",
    ALL = {
      { text = "Crush Reality targeting soon — move to edge to soak. Avoid beam lines.", type = "Call", id = "gui-P6uxsPqzckI" },
      { text = "Corruption DoT on me. Passing to tank, then safe player.", type = "Call", id = "gui-3476UGN3M4" },
      { text = "Spread ranged around edges to control Crush placement.", type = "Mechanic", id = "gui-hmkA5rEigiU" },
      { text = "Run from boss during Dark Gravity — 10yd explosion radius.", type = "Mechanic", id = "gui-zDwFLgN5BBM" },
      { text = "Interrupt Void Bolt from Corrupted Oracles.", type = "Interrupt", id = "gui-RJx83fKVoE8" }
    },
    TANK = {
      { text = "Soak 2nd Corruption stack if needed — use defensive for Vulnerability hit.", type = "Mechanic", id = "gui-ZJ0kaTriiqM" },
      { text = "Face away before Crush leap — prevent beam cleave on group.", type = "Position", id = "gui-2mw1V17GI9s" },
      { text = "Help soak puddles at edge. Rotate position post-leap.", type = "Position", id = "gui-UpLyTvzUk" }
    },
    HEALER = {
      { text = "CDs for Dark Gravity + Crush overlap — high spike.", type = "Call", id = "gui-8N5H8H3J5C4" },
      { text = "Top players holding Corruption — especially if soaking Crush too.", type = "Mechanic", id = "gui-PRPRSdjZfQI" },
      { text = "Dispel Seeping Corruption (curse) if players don’t have CDs.", type = "Mechanic", id = "gui-9ElFhlGqh3Y" }
    },
    DPS = {
      { text = "Help pass Corruption debuff safely — avoid bouncing to same player twice.", type = "Mechanic", id = "gui-qTi6eWhQ1Ao" },
      { text = "Dodge beam lines after Crush. Save space near edges.", type = "Mechanic", id = "gui-jBxE8cuPBEo" },
      { text = "Hold CDs for clean post-jump phase when safe.", type = "Call", id = "gui-YINS4uKh0ps" }
    }
  },
 
  ["Voidstone Monstrosity"] = {
    id = "enc-rookery-voidstone-monstrosity",
    order = 5,
    header = "Boss: Voidstone Monstrosity",
    ALL = {
      { text = "Null Upheaval soon — spread, pop defensive, dodge swirlies.", type = "Call", id = "gui-tzLscDZxxk" },
      { text = "Void Shell breaks at 80% — burn phase with 100% damage amp.", type = "Call", id = "gui-RNOHujHBYFs" },
      { text = "Stormrider’s Charge on me — running to my shard.", type = "Call", id = "gui-4Etd7GicpQs" },
      { text = "Stand clear of Oblivion Wave frontal — wide line AoE.", type = "Mechanic", id = "gui-PcHYdtFKab4" },
      { text = "Destroy all 3 Voidstone Fragments within 15s or adds spawn.", type = "Mechanic", id = "gui-DkWKe204dLs" }
    },
    TANK = {
      { text = "Never leave melee. Entropy wipe if boss idle.", type = "Mechanic", id = "gui-0eU2ID1AB7U" },
      { text = "Face boss away for Oblivion Wave. Never leave melee or boss spams Entropy.", type = "Mechanic", id = "gui-To4GlTNTeN0" },
      { text = "Major CD on Oblivion Wave — heavy shadow damage to all in line.", type = "Mechanic", id = "gui-RJH0EHm0Sxw" },
      { text = "Reposition boss slightly each cycle to control puddle zones.", type = "Position", id = "gui-txaU9fwusZw" }
    },
    HEALER = {
      { text = "CDs for Null Upheaval + Unleash Darkness overlap.", type = "Call", id = "gui-1t5DfIoUEbU" },
      { text = "Dispel Unleash Corruption quickly — position player to avoid melee puddles.", type = "Mechanic", id = "gui-EOZrxHGA8ws" },
      { text = "Float between shard platforms if a runner fails.", type = "Mechanic", id = "gui-PhRDSuJDJMQ" }
    },
    DPS = {
      { text = "Hold CDs for Storm’s Vengeance burn phase (20s window).", type = "Call", id = "gui-UwCVB7xx8Eg" },
      { text = "Assigned shard runner — wait for swirlies, then charge platform.", type = "Mechanic", id = "gui-JNphiCesux4" },
      { text = "Destroy Fragments fast — avoid add spawns from Corruption Overload.", type = "Mechanic", id = "gui-kIuDGPRti5k" }
    }
  }
}