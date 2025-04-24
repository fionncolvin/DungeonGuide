DungeonGuide_Guides["Darkflame Cleft"] = {
  ["Darkflame Cleft"] = {
    order = 1,
    header = "Intro: Darkflame Cleft",
    ALL = {
      { text = "33-minute timer with linear progression — 4 boss encounters.", type = "Mechanic" },
      { text = "Candlelight mechanics define multiple boss phases and escort event.", type = "Mechanic" },
      { text = "Stay in candlelight during escort and final boss — avoid Smothering Shadows debuff.", type = "Mechanic" },
      { text = "Interrupt priority: Drain Light, Boiling Flames, Honey Volley, Paranoid Mind.", type = "Interrupt" },
      { text = "Magic debuffs are frequent — dispel Flashpoint, Burning Fermentation, Bee Venom.", type = "Mechanic" },
      { text = "Avoid swirlies and Wild Wallop knockbacks — especially near ledges or extra packs.", type = "Mechanic" },
      { text = "Watch for candle DoT overlaps — e.g. Incite Flames and Enkindling Inferno combo.", type = "Mechanic" },
    },
    TANK = {
      { text = "Open with safe pull — Overseers knock mobs wide, causing accidental chain pulls.", type = "Mechanic" },
      { text = "Position minecart adds (Laborers) on tracks for cleave and minecart kills.", type = "Mechanic" },
      { text = "Corridor Creepers gain power from corpses — kite if stacks grow too high.", type = "Mechanic" },
      { text = "During escort, stick close to cart — pull carefully, only what's needed.", type = "Mechanic" },
    },
    HEALER = {
      { text = "Be ready for burst healing during Volatile Keg, Eternal Darkness, candle DoT overlaps.", type = "Mechanic" },
      { text = "Candle heat drops during Eternal Darkness — DPS or tank should refill wax mid-cast.", type = "Mechanic" },
    },
    DPS = {
      { text = "Kill Failed Batch barrels and low-HP Wax Figures before they reform.", type = "Mechanic" },
      { text = "CC and burst Brew Drops before they reach bosses — prioritize control.", type = "Mechanic" },
    },
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