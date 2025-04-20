DungeonGuide_Guides["Darkflame Cleft"] = {
  ["Darkflame Cleft"] = {
    order = 1,
    header = "Guide: Darkflame Cleft",
    ALL = {
      { text = "Menial Laborers stack bleeds on melee — they are killed by minecarts, Reckless Charge, or Cave-In.", type = "Mechanic" },
      { text = "Rank Overseer’s Wild Wallop knocks back mobs — avoid chaining packs accidentally.", type = "Mechanic" },
      { text = "Moleherd’s Mole Frenzy enrages Pack Moles — must be interrupted or you’ll get overwhelmed.", type = "Mechanic" },
      { text = "Wicklighters and Fiends should be interrupted when possible — Explosive Flame + Flashpoint stack badly with Quenching Blast.", type = "Mechanic" },
      { text = "Wandering Candles + Blazikon mechanics are a fire damage combo — time defensives carefully.", type = "Mechanic" },
      { text = "Before Candle King: Mini-boss combo of One-Hand Headlock + Ceaseless Flame can one-shot players if not dodged.", type = "Mechanic" },
      { text = "Paranoid Mind on Candle King must be interrupted or party-wide fear happens.", type = "Mechanic" },
      { text = "Escort section: Cart stops moving without heat and a nearby player. Wax runners should be pre-assigned.", type = "Mechanic" },
      { text = "The Darkness fight requires candle heat management. Missed pickups or Drain Light casts will wipe the group.", type = "Mechanic" }
    },
    TANK = {
      { text = "Crude Weapons from Laborers and Shadow Fang from Creepers stack fast — kite and rotate cooldowns.", type = "Mechanic" },
      { text = "Position bosses to cleave down adds (Waxbeard) or manage safe zones (Blazikon/Candle King).", type = "Mechanic" },
      { text = "Pull Overseers away from other packs to prevent Wild Wallop knockbacks pulling extras.", type = "Mechanic" },
      { text = "Route plan: Skip double Wicklighter if possible. Dangerous unless well-coordinated.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Big healing events: Dousing Breath, Incite Flames combo, Eternal Darkness, multiple stacks of Explosive Flame.", type = "Mechanic" },
      { text = "Dispels: Flashpoint (Magic), Flaming Tether (Magic Root), healing absorbs on Darkflame debuffs.", type = "Mechanic" }
    },
    DPS = {
      { text = "Use environmental tools: minecarts, boss charges, and wax puddles to eliminate Laborers and manage space.", type = "Mechanic" },
      { text = "Assign candle extinguishers during Blazikon and ensure safe zone creation for Incite Flames.", type = "Mechanic" }
    }
  },

  ["Ol' Waxbeard"] = {
    order = 2,
    header = "Boss: Ol' Waxbeard",
    ALL = {
      { text = "Interrupt Underhanded Track-tics cart or group wipe.", type = "Interrupt" }
    },
    TANK = {
      { text = "Pick up Menial Laborers quickly. Use defensives if high bleed stacks.", type = "Mechanic" },
      { text = "If Luring Candleflame targets you, kite Laborers and use movement/CDs.", type = "Mechanic" },
      { text = "Use defensive on Rock Buster. 25% phys dmg taken amp.", type = "Mechanic" },
      { text = "Drag boss near track for minecart cleave and cart damage.", type = "Position" },
      { text = "Reckless Charge incoming. Bait near track to clear adds.", type = "Call" },
      { text = "When cart spawns I will drag boss over for cleave to help nuke.", type = "Call" },
      { text = "Avoid Cave-In. Position group to dodge post-charge swirls.", type = "Mechanic" },
      { text = "Start pull at edge to avoid aggro from overhead patrol Laborers.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Watch Luring Candleflame fixate. Top target being chased.", type = "Mechanic" },
      { text = "Prep for DoT after Underhanded Track-tics failure.", type = "Call" }
    },
    DPS = {
      { text = "Help kite fixated Laborers to track. CC or slow adds.", type = "Mechanic" },
      { text = "Dodge Cave-In swirls after Reckless Charge.", type = "Mechanic" }
    }
  },

  ["Blazikon"] = {
    order = 3,
    header = "Boss: Blazikon",
    ALL = {
      { text = "Light candles during Barrage. Spread swirlies carefully.", type = "Call" },
      { text = "Extinguish 1–2 candles with Gust to create safe zone.", type = "Call" },
      { text = "Interrupt Explosive Flame from trash near boss.", type = "Interrupt" }
    },
    TANK = {
      { text = "Never leave melee or boss melees group—stay glued to hitbox.", type = "Position" },
      { text = "Re-enter melee fast after tornadoes to prevent Blazing Storms wipe.", type = "Mechanic" },
      { text = "Communicate when boss phase loops to help team coordinate safe zones.", type = "Mechanic" },
      { text = "After Gust, reposition to safe zone near extinguished candles.", type = "Position" },
      { text = "Pop a CD on Dousing Breath if high Enkindling stacks hit.", type = "Mechanic" },
      { text = "DPS aim swirlies to candles. I will stay on boss.", type = "Call" }
    },
    HEALER = {
      { text = "Use CDs for Dousing Breath + DoT stacks if many candles unlit.", type = "Call" },
      { text = "Top group during Incite Flames fire puddle phase.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread Barrage swirlies to light as many candles as possible.", type = "Mechanic" },
      { text = "Avoid tornadoes from Gust and fire lines from Incite Flames.", type = "Mechanic" }
    }
  },

  ["The Candle King"] = {
    order = 4,
    header = "Boss: The Candle King",
    ALL = {
      { text = "Interrupt Paranoid Mind or entire party is feared.", type = "Interrupt" },
      { text = "Pickaxe cast. Line it up with wax statue.", type = "Call" },
      { text = "Throw Darkflame. Clear statues with your circle.", type = "Call" }
    },
    TANK = {
      { text = "Avoid standing near statues to prevent stun.", type = "Position" },
      { text = "Move boss after Throw Darkflame to drop new statue spawns.", type = "Mechanic" },
      { text = "Start near statue cluster. I will rotate boss clockwise.", type = "Call" }
    },
    HEALER = {
      { text = "Prepare CDs if many statues remain before Throw Darkflame.", type = "Call" },
      { text = "Top group between Eerie Molds casts. Pulsing AoE ramps fast.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread Throw Darkflame to hit multiple statues.", type = "Mechanic" },
      { text = "Follow tank movement to drop new statue spawns together.", type = "Mechanic" }
    }
  },

  ["The Darkness"] = {
    order = 5,
    header = "Boss: The Darkness",
    ALL = {
      { text = "Interrupt Call Darkspawn quickly. I will AoE and help kick adds.", type = "Call" },
      { text = "Pick up candle and reposition if Umbral Slash targets it.", type = "Mechanic" },
      { text = "Shadowblast on me. I will move out from candle to explode.", type = "Call" },
      { text = "Interrupt Drain Light from adds to prevent candle drain.", type = "Interrupt" }
    },
    TANK = {
      { text = "Refuel candle during Eternal Darkness or Rising Gloom risk.", type = "Mechanic" },
      { text = "Start fight center of room for wax pickup rotation.", type = "Position" },
      { text = "Candle light is low. Grab wax and refill.", type = "Call" },
      { text = "Tank boss on track line. Rotate toward wax spawn.", type = "Position" },
      { text = "Keep add spawns grouped for cleave. Use stun on wrigglers.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Prepare CDs for Eternal Darkness — hard AoE + candle drain.", type = "Call" },
      { text = "Top group during Rising Gloom or refill heat to prevent it.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill Darkspawn adds quickly. Interrupt Drain Light.", type = "Mechanic" },
      { text = "Bring wax back to candle if low heat during add phase.", type = "Mechanic" }
    }
  }
}