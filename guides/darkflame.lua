DungeonGuide_Guides["Darkflame Cleft"] = {
  ["Darkflame Cleft"] = {
    order = 1,
    header = "Intro: Darkflame Cleft",
    ALL = {
      { text = "33-minute timer with linear progression — 4 boss encounters.", type = "Mechanic" },
      { text = "Candlelight mechanics define multiple boss phases and escort event.", type = "Mechanic" },
      { text = "Stay in Candlelight during escort and final boss — avoid s|Smothering Shadows| debuff.", type = "Mechanic" },
      { text = "Interrupt priority: s|Drain Light|, s|Boiling Flames|, s|Honey Volley|, s|Paranoid Mind|.", type = "Interrupt" },
      { text = "Magic debuffs are frequent — dispel s|Flashpoint|, s|Burning Fermentation|, s|Bee Venom|.", type = "Mechanic" },
      { text = "Avoid swirlies and s|Wild Wallop| knockbacks — especially near ledges or extra packs.", type = "Mechanic" },
      { text = "Watch for candle DoT overlaps — e.g. s|Incite Flames| and s|Enkindling Inferno| combo.", type = "Mechanic" },
    },
    TANK = {
      { text = "Open with safe pull — n|Rank Overseer| knock mobs wide, causing accidental chain pulls.", type = "Mechanic" },
      { text = "Position minecart adds (n|Menial Laborers|) on tracks for cleave and minecart kills.", type = "Mechanic" },
      { text = "n|Corridor Creepers| gain power from corpses — kite if stacks grow too high.", type = "Mechanic" },
      { text = "During escort, stick close to cart — pull carefully, only what's needed.", type = "Mechanic" },
    },
    HEALER = {
      { text = "Be ready for burst healing during s|Volatile Keg|, s|Eternal Darkness|, candle DoT overlaps.", type = "Mechanic" },
      { text = "Candle heat drops during s|Eternal Darkness| — DPS or tank should refill wax mid-cast.", type = "Mechanic" },
    },
    DPS = {
      { text = "Use CC on n|Menial Laborers| during escort — they can be stunned or rooted.", type = "Mechanic" },
      { text = "Kill adds fast during boss phases — especially during s|Eternal Darkness|.", type = "Mechanic" },
      { text = "Use CC on n|Corridor Creepers| to prevent them from gaining stacks.", type = "Mechanic" }
    },
  },

  ["Route"] = {
    order = 2,
    header = "Route: Darkflame Cleft",
    ALL = {
      { text = "Pulling full first area. Respect bleed stacks from n|Menial Laborers|.", type = "Call" },
      { text = "Focus n|Royal Wicklighter| fast in second pull to avoid bolt overlaps.", type = "Call" },
      { text = "Chain pull n|Rank Overseer| and new n|Laborers| carefully into each other.", type = "Call" },
      { text = "Tag n|Lowly Mole Herder| from range and LOS if possible.", type = "Call" },
      { text = "Aim for ~28-30% count before first boss.", type = "Mechanic" },
      { text = "After first boss, jump down and pull n|Wandering Candle| + n|Task Workers|.", type = "Call" },
      { text = "LOS n|Wandering Candle| AOE under Minecart rail pillar.", type = "Position" },
      { text = "Second Candle pull: Combine it with next pack for efficiency.", type = "Call" },
      { text = "In boss room: can either slow pull or YOLO all mobs together.", type = "Mechanic" },
      { text = "LOS properly to reduce fire stacks from n|Blazing Fiends|.", type = "Mechanic" },
      { text = "After n|Blazikon|, pull n|Wandering Candle| in new room first.", type = "Call" },
      { text = "Run far end to stack n|Flame Bolters| via LOS if confident.", type = "Call" },
      { text = "n|Snoot Stout| and n|Torch Snarl| pull next. Tank face headlock safely.", type = "Mechanic" },
      { text = "After n|The Candle King|, proceed straight into Minecart event.", type = "Call" },
      { text = "Pull 1-2 packs at a time in Minecart to avoid n|Corridor Creepers| scaling.", type = "Call" },
      { text = "Cart goes left-right-left — clear as we move.", type = "Call" },
      { text = "At final boss, expect to still be slightly under count.", type = "Mechanic" },
      { text = "Backpull into earlier cleared mobs if needed to reach 100%.", type = "Call" },
    },
  },

  ["Ol' Waxbeard"] = {
    order = 3,
    header = "Boss: Ol' Waxbeard",
    ALL = {
      { text = "Interrupt s|Underhanded Track-tics| cart or group wipe.", type = "Interrupt" }
    },
    TANK = {
      { text = "Pick up n|Menial Laborers| quickly. Defensives if high bleed stacks.", type = "Mechanic" },
      { text = "If fixated by s|Candleflame|, kite adds + use movement/CDs.", type = "Mechanic" },
      { text = "Defensive on s|Rock Buster| — 25% phys dmg amp.", type = "Mechanic" },
      { text = "Position boss near track for minecart cleave.", type = "Position" },
      { text = "s|Reckless Charge| incoming — bait near track to clear adds.", type = "Call" },
      { text = "Cart up — dragging boss for cleave.", type = "Call" },
      { text = "Avoid s|Cave-In|. Position group to dodge post-charge swirls.", type = "Mechanic" },
      { text = "Pull at edge to avoid aggro from patrol n|Menial Laborers|.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Top s|Candleflame| target under fixate pressure.", type = "Mechanic" },
      { text = "Prep for DoT if s|Underhanded Track-tics| fails.", type = "Call" }
    },
    DPS = {
      { text = "Kite fixated adds to track. CC/slow them.", type = "Mechanic" },
      { text = "Dodge s|Cave-In| swirls after s|Reckless Charge|.", type = "Mechanic" }
    }
  },

  ["Blazikon"] = {
    order = 4,
    header = "Boss: Blazikon",
    ALL = {
      { text = "Light candles during s|Candle Barrage|. Spread swirlies carefully.", type = "Call" },
      { text = "Extinguish 1–2 candles with s|Gust| to create safe zones.", type = "Call" },
      { text = "Interrupt s|Explosive Flame| from trash near boss.", type = "Interrupt" }
    },
    TANK = {
      { text = "Stay in melee — boss cleaves if no target nearby.", type = "Position" },
      { text = "Re-enter melee fast after s|Gust| to avoid wipe from s|Blazing Storms|.", type = "Mechanic" },
      { text = "Coordinate safe zones during Gust phases.", type = "Mechanic" },
      { text = "Reposition after Gust to extinguished candles.", type = "Position" },
      { text = "Use CD for s|Dousing Breath| if high s|Enkindling| stacks.", type = "Mechanic" },
      { text = "DPS light candles. I’m staying on boss.", type = "Call" }
    },
    HEALER = {
      { text = "Prep CDs for s|Dousing Breath| and fire phases.", type = "Call" },
      { text = "Top group during s|Incite Flames| puddle phase.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread Barrage to light candles fast.", type = "Mechanic" },
      { text = "Avoid s|Gust| tornadoes and s|Incite Flames|.", type = "Mechanic" }
    }
  },

  ["The Candle King"] = {
    order = 5,
    header = "Boss: The Candle King",
    ALL = {
      { text = "Interrupt s|Paranoid Mind| or party gets feared.", type = "Interrupt" },
      { text = "Aim s|Pickaxe| at statues.", type = "Call" },
      { text = "Throw s|Darkflame| to destroy multiple statues.", type = "Call" }
    },
    TANK = {
      { text = "Stay clear of statues to avoid stun.", type = "Position" },
      { text = "Rotate boss to new spawn points after s|Darkflame|.", type = "Mechanic" },
      { text = "Starting near statue cluster, rotating counter-clockwise.", type = "Call" }
    },
    HEALER = {
      { text = "Prep CDs if many statues up before s|Darkflame| phase.", type = "Call" },
      { text = "Top group during s|Eerie Molds|.", type = "Mechanic" }
    },
    DPS = {
      { text = "Use s|Darkflame| circle to hit statues.", type = "Mechanic" },
      { text = "Follow tank to group statues together.", type = "Mechanic" }
    }
  },
  
  ["The Darkness"] = {
    order = 6,
    header = "Boss: The Darkness",
    ALL = {
      { text = "Interrupt s|Call Darkspawn| fast. I’ll AoE adds.", type = "Call" },
      { text = "If s|Umbral Slash| targets your candle, reposition immediately.", type = "Mechanic" },
      { text = "s|Shadowblast| on me — moving out from candle to explode.", type = "Call" },
      { text = "Grabbing wax to refill candle.", type = "Call" },
      { text = "Interrupt s|Drain Light| from adds — saves candle heat.", type = "Interrupt" }
    },
    TANK = {
      { text = "Refuel candle during s|Eternal Darkness| or s|Rising Gloom|.", type = "Mechanic" },
      { text = "Tank starting mid-room for wax rotation.", type = "Position" },
      { text = "Rotate boss toward wax spawns along track lines.", type = "Position" },      
      { text = "Group adds for cleave. Stun wrigglers.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Use CDs for s|Eternal Darkness| massive AoE.", type = "Call" },
      { text = "Top group during s|Rising Gloom| phases.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill n|Darkspawn| quickly. Interrupt s|Drain Light|.", type = "Mechanic" },
      { text = "Return wax to candle if heat is low.", type = "Mechanic" }
    }
  }
}