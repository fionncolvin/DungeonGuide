DungeonGuide_Guides["Darkflame Cleft"] = {
  id = "dung-darkflame",
  ["Darkflame Cleft"] = {
    id = "enc-darkflame-guide",
    order = 1,
    header = "Guide: Darkflame Cleft",
    ALL = {
      { text = "33-minute timer with linear progression — 4 boss encounters.", type = "Mechanic", id = "gui-4MoFXwO3lLQ" },
      { text = "Candlelight mechanics define multiple boss phases and escort event.", type = "Mechanic", id = "gui-gjeE1OV18" },
      { text = "Stay in Candlelight during escort and final boss — avoid s|Smothering Shadows| debuff.", type = "Mechanic", id = "gui-JFTgcon8EI" },
      { text = "Interrupt priority: s|Drain Light|, s|Boiling Flames|, s|Honey Volley|, s|Paranoid Mind|.", type = "Interrupt", id = "gui-Ul2tcQc7E0" },
      { text = "Magic debuffs are frequent — dispel s|Flashpoint|, s|Burning Fermentation|, s|Bee Venom|.", type = "Mechanic", id = "gui-rcLUejwnDR8" },
      { text = "Avoid swirlies and s|Wild Wallop| knockbacks — especially near ledges or extra packs.", type = "Mechanic", id = "gui-yUubWq89yMI" },
      { text = "Watch for candle DoT overlaps — e.g. s|Incite Flames| and s|Enkindling Inferno| combo.", type = "Mechanic", id = "gui-mRbxywXLwEE" },
    },
    TANK = {
      { text = "Open with safe pull — n|Rank Overseer| knock mobs wide, causing accidental chain pulls.", type = "Mechanic", id = "gui-j78ahqkUoA" },
      { text = "Position minecart adds (n|Menial Laborers|) on tracks for cleave and minecart kills.", type = "Mechanic", id = "gui-61lFcGgsULs" },
      { text = "n|Corridor Creepers| gain power from corpses — kite if stacks grow too high.", type = "Mechanic", id = "gui-fjtet2SsnS8" },
      { text = "During escort, stick close to cart — pull carefully, only what's needed.", type = "Mechanic", id = "gui-Mdf4410THZY" },
    },
    HEALER = {
      { text = "Be ready for burst healing during s|Volatile Keg|, s|Eternal Darkness|, candle DoT overlaps.", type = "Mechanic", id = "gui-W0PLhPO25A" },
      { text = "Candle heat drops during s|Eternal Darkness| — DPS or tank should refill wax mid-cast.", type = "Mechanic", id = "gui-MrRftDvzTAg" },
    },
    DPS = {
      { text = "Use CC on n|Menial Laborers| during escort — they can be stunned or rooted.", type = "Mechanic", id = "gui-cgSzYXceUrQ" },
      { text = "Kill adds fast during boss phases — especially during s|Eternal Darkness|.", type = "Mechanic", id = "gui-UWkf7X3UTxI" },
      { text = "Use CC on n|Corridor Creepers| to prevent them from gaining stacks.", type = "Mechanic", id = "gui-SXLN1BoeV4" }
    },
  },

  ["Route"] = {
    id = "enc-darkflame-route",
    order = 2,
    header = "Route: Darkflame Cleft",
    ALL = {
      { text = "Pulling full first area. Respect bleed stacks from n|Menial Laborers|.", type = "Call", id = "gui-1zLA9dXLw" },
      { text = "Focus n|Royal Wicklighter| fast in second pull to avoid bolt overlaps.", type = "Call", id = "gui-ghaDhWwPiZU" },
      { text = "Chain pull n|Rank Overseer| and new n|Laborers| carefully into each other.", type = "Call", id = "gui-9HWQkhTSg" },
      { text = "Tag n|Lowly Mole Herder| from range and LOS if possible.", type = "Call", id = "gui-wDP1TZJ1Nik" },
      { text = "Aim for ~28-30% count before first boss.", type = "Mechanic", id = "gui-okxIc710t20" },
      { text = "After first boss, jump down and pull n|Wandering Candle| + n|Task Workers|.", type = "Call", id = "gui-30sIaCzHbI" },
      { text = "LOS n|Wandering Candle| AOE under Minecart rail pillar.", type = "Position", id = "gui-MBjwmezJt9Y" },
      { text = "Second Candle pull: Combine it with next pack for efficiency.", type = "Call", id = "gui-CdSkEBxrcc8" },
      { text = "In boss room: can either slow pull or YOLO all mobs together.", type = "Mechanic", id = "gui-y1TApp6jZZ4" },
      { text = "LOS properly to reduce fire stacks from n|Blazing Fiends|.", type = "Mechanic", id = "gui-ujfqgw4w90" },
      { text = "After n|Blazikon|, pull n|Wandering Candle| in new room first.", type = "Call", id = "gui-uUy2kaUUDbU" },
      { text = "Run far end to stack n|Flame Bolters| via LOS if confident.", type = "Call", id = "gui-maGcOV6hcPc" },
      { text = "n|Snoot Stout| and n|Torch Snarl| pull next. Tank face headlock safely.", type = "Mechanic", id = "gui-1VmIf4bqfFU" },
      { text = "After n|The Candle King|, proceed straight into Minecart event.", type = "Call", id = "gui-rPg7mVlWFxM" },
      { text = "Pull 1-2 packs at a time in Minecart to avoid n|Corridor Creepers| scaling.", type = "Call", id = "gui-7jNTLQOxoLQ" },
      { text = "Cart goes left-right-left — clear as we move.", type = "Call", id = "gui-c2Mjgk8YjL4" },
      { text = "At final boss, expect to still be slightly under count.", type = "Mechanic", id = "gui-d32b4BNbrY" },
      { text = "Backpull into earlier cleared mobs if needed to reach 100%.", type = "Call", id = "gui-bUs3FPYrEd4" },
    },
  },

  ["Ol' Waxbeard"] = {
    id = "enc-darkflame-ol-waxbeard",
    order = 3,
    header = "Boss: Ol' Waxbeard",
    ALL = {
      { text = "Interrupt s|Underhanded Track-tics| cart or group wipe.", type = "Interrupt", id = "gui-l0XSGWsoys" }
    },
    TANK = {
      { text = "Pick up n|Menial Laborers| quickly. Defensives if high bleed stacks.", type = "Mechanic", id = "gui-29IaZU1OiX8" },
      { text = "If fixated by s|Candleflame|, kite adds + use movement/CDs.", type = "Mechanic", id = "gui-hIhti7suzTw" },
      { text = "Defensive on s|Rock Buster| — 25% phys dmg amp.", type = "Mechanic", id = "gui-OccfAdeNNI" },
      { text = "Position boss near track for minecart cleave.", type = "Position", id = "gui-4tFdZect0jE" },
      { text = "s|Reckless Charge| incoming — bait near track to clear adds.", type = "Call", id = "gui-XdFcEwH4Mjw" },
      { text = "Cart up — dragging boss for cleave.", type = "Call", id = "gui-26PpTMkIEpo" },
      { text = "Avoid s|Cave-In|. Position group to dodge post-charge swirls.", type = "Mechanic", id = "gui-raMvRB7J28" },
      { text = "Pull at edge to avoid aggro from patrol n|Menial Laborers|.", type = "Mechanic", id = "gui-0g2d80oU9s" }
    },
    HEALER = {
      { text = "Top s|Candleflame| target under fixate pressure.", type = "Mechanic", id = "gui-9MXrsj9QI" },
      { text = "Prep for DoT if s|Underhanded Track-tics| fails.", type = "Call", id = "gui-z6oGiZSXdHw" }
    },
    DPS = {
      { text = "Kite fixated adds to track. CC/slow them.", type = "Mechanic", id = "gui-yvG4PjACxio" },
      { text = "Dodge s|Cave-In| swirls after s|Reckless Charge|.", type = "Mechanic", id = "gui-sBNDn9jJYw" }
    }
  },

  ["Blazikon"] = {
    id = "enc-darkflame-blazikon",
    order = 4,
    header = "Boss: Blazikon",
    ALL = {
      { text = "Light candles during s|Candle Barrage|. Spread swirlies carefully.", type = "Call", id = "gui-jsLtAM2CvDI" },
      { text = "Extinguish 1–2 candles with s|Gust| to create safe zones.", type = "Call", id = "gui-Rq6btWfXA" },
      { text = "Interrupt s|Explosive Flame| from trash near boss.", type = "Interrupt", id = "gui-hmGSIRFwE6A" }
    },
    TANK = {
      { text = "Stay in melee — boss cleaves if no target nearby.", type = "Position", id = "gui-UDxurMIgSMU" },
      { text = "Re-enter melee fast after s|Gust| to avoid wipe from s|Blazing Storms|.", type = "Mechanic", id = "gui-aQTf4WbnaI" },
      { text = "Coordinate safe zones during Gust phases.", type = "Mechanic", id = "gui-gQsAOkK0JfE" },
      { text = "Reposition after Gust to extinguished candles.", type = "Position", id = "gui-x3T1EK5DLXg" },
      { text = "Use CD for s|Dousing Breath| if high s|Enkindling| stacks.", type = "Mechanic", id = "gui-YEdXpbw7SY" },
      { text = "DPS light candles. I’m staying on boss.", type = "Call", id = "gui-oeOJXNZoiY4" }
    },
    HEALER = {
      { text = "Prep CDs for s|Dousing Breath| and fire phases.", type = "Call", id = "gui-SDpJG2wNG5U" },
      { text = "Top group during s|Incite Flames| puddle phase.", type = "Mechanic", id = "gui-HKDX2g12UmY" }
    },
    DPS = {
      { text = "Spread Barrage to light candles fast.", type = "Mechanic", id = "gui-bbwYS0paoIY" },
      { text = "Avoid s|Gust| tornadoes and s|Incite Flames|.", type = "Mechanic", id = "gui-oqiLgK7CgHA" }
    }
  },

  ["The Candle King"] = {
    id = "enc-darkflame-the-candle-king",
    order = 5,
    header = "Boss: The Candle King",
    ALL = {
      { text = "Interrupt s|Paranoid Mind| or party gets feared.", type = "Interrupt", id = "gui-b05hjWAUE" },
      { text = "Aim s|Pickaxe| at statues.", type = "Call", id = "gui-P3emdwTc8G0" },
      { text = "Throw s|Darkflame| to destroy multiple statues.", type = "Call", id = "gui-w8kJTStFdJ0" }
    },
    TANK = {
      { text = "Stay clear of statues to avoid stun.", type = "Position", id = "gui-E4RMPNtwZvo" },
      { text = "Rotate boss to new spawn points after s|Darkflame|.", type = "Mechanic", id = "gui-js4IEsR7u3Q" },
      { text = "Starting near statue cluster, rotating counter-clockwise.", type = "Call", id = "gui-c0YrN4VlkB8" }
    },
    HEALER = {
      { text = "Prep CDs if many statues up before s|Darkflame| phase.", type = "Call", id = "gui-UmLTV9oXemU" },
      { text = "Top group during s|Eerie Molds|.", type = "Mechanic", id = "gui-QVTAoQ4ISTM" }
    },
    DPS = {
      { text = "Use s|Darkflame| circle to hit statues.", type = "Mechanic", id = "gui-LziPKSFJ0U" },
      { text = "Follow tank to group statues together.", type = "Mechanic", id = "gui-Li3537Oiho" }
    }
  },
  
  ["The Darkness"] = {
    id = "enc-darkflame-the-darkness",
    order = 6,
    header = "Boss: The Darkness",
    ALL = {
      { text = "Interrupt s|Call Darkspawn| fast. I’ll AoE adds.", type = "Call", id = "gui-00QonrnpsLI" },
      { text = "If s|Umbral Slash| targets your candle, reposition immediately.", type = "Mechanic", id = "gui-afJO1UCJ4Q" },
      { text = "s|Shadowblast| on me — moving out from candle to explode.", type = "Call", id = "gui-OI8PnpUd8d0" },
      { text = "Grabbing wax to refill candle.", type = "Call", id = "gui-zDIqalfYUA8" },
      { text = "Interrupt s|Drain Light| from adds — saves candle heat.", type = "Interrupt", id = "gui-32cyGcRmY" }
    },
    TANK = {
      { text = "Refuel candle during s|Eternal Darkness| or s|Rising Gloom|.", type = "Mechanic", id = "gui-cgZB0bwt7vs" },
      { text = "Tank starting mid-room for wax rotation.", type = "Position", id = "gui-Ec0PGS86fag" },
      { text = "Rotate boss toward wax spawns along track lines.", type = "Position", id = "gui-9iigN6lM1k" },
      { text = "Group adds for cleave. Stun wrigglers.", type = "Mechanic", id = "gui-KzM2M8rAB0" }
    },
    HEALER = {
      { text = "Use CDs for s|Eternal Darkness| massive AoE.", type = "Call", id = "gui-s308Kksgbw" },
      { text = "Top group during s|Rising Gloom| phases.", type = "Mechanic", id = "gui-dq4XWJVbJTY" }
    },
    DPS = {
      { text = "Kill n|Darkspawn| quickly. Interrupt s|Drain Light|.", type = "Mechanic", id = "gui-sWiy3eBVTg" },
      { text = "Return wax to candle if heat is low.", type = "Mechanic", id = "gui-hmJUBjxB70Q" }
    }
  }
}