DungeonGuide_Guides["Darkflame Cleft"] = {
  ["Darkflame Cleft"] = {
    order = 1,
    header = "Guide: Darkflame Cleft",
    ALL = {
      { text = "Laborers stack bleeds — kill with minecarts, Charge, or Cave-In.", type = "Mechanic" },
      { text = "Overseer’s Wallop knocks mobs back — avoid pulling extras.", type = "Mechanic" },
      { text = "Mole Frenzy enrages moles — interrupt to avoid getting overwhelmed.", type = "Mechanic" },
      { text = "Interrupt Wicklighters and Fiends — flame combos stack dangerously.", type = "Mechanic" },
      { text = "Blazikon + Candle hazards = big fire damage. Time defensives.", type = "Mechanic" },
      { text = "Mini-bosses before Candle King can one-shot — dodge mechanics.", type = "Mechanic" },
      { text = "Interrupt Paranoid Mind or fear wipes group.", type = "Mechanic" },
      { text = "Escort cart needs heat + nearby player. Assign wax runners.", type = "Mechanic" },
      { text = "Final boss needs heat/candle pickups. Missed casts = wipe.", type = "Mechanic" }
    },
    TANK = {
      { text = "Laborer + Creeper bleeds stack fast — kite + rotate CDs.", type = "Mechanic" },
      { text = "Position bosses to cleave adds or manage safe zones.", type = "Mechanic" },
      { text = "Pull Overseers away to avoid extra mobs via knockback.", type = "Mechanic" },
      { text = "Route tip: skip double Wicklighter if possible.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Big healing: Dousing Breath, Incite Flames, Eternal Darkness.", type = "Mechanic" },
      { text = "Dispels: Flashpoint, Flaming Tether, healing absorbs from debuffs.", type = "Mechanic" }
    },
    DPS = {
      { text = "Use carts, boss charges, wax to kill Laborers + control space.", type = "Mechanic" },
      { text = "Assign candle extinguishers + prep safe zones for Incite Flames.", type = "Mechanic" }
    }
  },  

  ["Ol' Waxbeard"] = {
    order = 2,
    header = "Boss: Ol' Waxbeard",
    ALL = {
      { text = "Interrupt Underhanded Track-tics cart or group wipe.", type = "Interrupt" }
    },
    TANK = {
      { text = "Pick up Laborers quickly. Defensives if high bleed stacks.", type = "Mechanic" },
      { text = "If fixated by Candleflame, kite adds + use movement/CDs.", type = "Mechanic" },
      { text = "Defensive on Rock Buster — 25% phys dmg amp.", type = "Mechanic" },
      { text = "Position boss near track for minecart cleave.", type = "Position" },
      { text = "Reckless Charge incoming — bait near track to clear adds.", type = "Call" },
      { text = "Call: Cart up — dragging boss for cleave.", type = "Call" },
      { text = "Avoid Cave-In. Position group to dodge post-charge swirls.", type = "Mechanic" },
      { text = "Pull at edge to avoid aggro from patrol Laborers.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Top Candleflame target under fixate pressure.", type = "Mechanic" },
      { text = "Prep for DoT if Track-tics fails.", type = "Call" }
    },
    DPS = {
      { text = "Kite fixated adds to track. CC/slow them.", type = "Mechanic" },
      { text = "Dodge Cave-In swirls after Reckless Charge.", type = "Mechanic" }
    }
  },  

  ["Blazikon"] = {
    order = 3,
    header = "Boss: Blazikon",
    ALL = {
      { text = "Light candles during Barrage. Spread swirlies carefully.", type = "Call" },
      { text = "Extinguish 1–2 candles with Gust to make safe zone.", type = "Call" },
      { text = "Interrupt Explosive Flame from trash near boss.", type = "Interrupt" }
    },
    TANK = {
      { text = "Stay in melee — boss cleaves if no target nearby.", type = "Position" },
      { text = "Re-enter melee fast after Gust to avoid Blazing Storms wipe.", type = "Mechanic" },
      { text = "Call phase loops to coordinate candle safe zones.", type = "Mechanic" },
      { text = "Reposition to safe zone after Gust (extinguished candles).", type = "Position" },
      { text = "CD on Dousing Breath if high Enkindling stacks.", type = "Mechanic" },
      { text = "Call: DPS light candles. I’m staying on boss.", type = "Call" }
    },
    HEALER = {
      { text = "CDs for Dousing Breath + DoTs if candles unlit.", type = "Call" },
      { text = "Top group during Incite Flames fire puddle phase.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread Barrage to light as many candles as possible.", type = "Mechanic" },
      { text = "Avoid Gust tornadoes + Incite Flames fire lines.", type = "Mechanic" }
    }
  },  

  ["The Candle King"] = {
    order = 4,
    header = "Boss: The Candle King",
    ALL = {
      { text = "Interrupt Paranoid Mind or party gets feared.", type = "Interrupt" },
      { text = "Pickaxe cast — aim it at wax statue.", type = "Call" },
      { text = "Throw Darkflame — clear statues with your circle.", type = "Call" }
    },
    TANK = {
      { text = "Stay clear of statues — stuns nearby players.", type = "Position" },
      { text = "Move boss after each Darkflame to drop new statues cleanly.", type = "Mechanic" },
      { text = "Start near statue cluster. I’ll rotate boss clockwise.", type = "Call" }
    },
    HEALER = {
      { text = "Use CDs if many statues are up before Darkflame.", type = "Call" },
      { text = "Top group between Eerie Molds — AoE ramps fast.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread Darkflame circle to hit multiple statues.", type = "Mechanic" },
      { text = "Follow tank movement to group statue spawns.", type = "Mechanic" }
    }
  },
  
  ["The Darkness"] = {
    order = 5,
    header = "Boss: The Darkness",
    ALL = {
      { text = "Interrupt Call Darkspawn fast. I’ll AoE + help kick adds.", type = "Call" },
      { text = "If Umbral Slash targets your candle, pick it up + reposition.", type = "Mechanic" },
      { text = "Shadowblast on me — moving out from candle to explode.", type = "Call" },
      { text = "Interrupt Drain Light from adds — protects candle heat.", type = "Interrupt" }
    },
    TANK = {
      { text = "Refuel candle during Eternal Darkness or Rising Gloom.", type = "Mechanic" },
      { text = "Start fight mid-room for wax rotation.", type = "Position" },
      { text = "Call: Candle low — grabbing wax to refill.", type = "Call" },
      { text = "Tank on track line. Rotate toward wax spawns.", type = "Position" },
      { text = "Group adds for cleave. Stun wrigglers.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs for Eternal Darkness — heavy AoE + candle drain.", type = "Call" },
      { text = "Top group during Rising Gloom or refill candle to prevent it.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill Darkspawn fast. Interrupt Drain Light.", type = "Mechanic" },
      { text = "Return wax to candle if heat is low during add phase.", type = "Mechanic" }
    }
  }  
}