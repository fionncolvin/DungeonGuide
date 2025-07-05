DungeonGuide_Guides["Darkflame Cleft"] = {
  id = "dung-darkflame",
  ["Darkflame Cleft"] = {
    id = "enc-darkflame-guide",
    order = 1,
    header = "Intro",
    entries = {
      { role = "ALL", text = "33-minute timer with linear progression — 4 boss encounters.", type = "Mechanic", id = "gui-4MoFXwO3lLQ" },
      { role = "ALL", text = "Candlelight mechanics define multiple boss phases and escort event.", type = "Mechanic", id = "gui-gjeE1OV18" },
      { role = "ALL", text = "Stay in Candlelight during escort and final boss — avoid s:Smothering Shadows: debuff.", type = "Mechanic", id = "gui-JFTgcon8EI" },
      { role = "ALL", text = "Interrupt priority: s:Drain Light:, s:Boiling Flames:, s:Honey Volley:, s:Paranoid Mind:.", type = "Interrupt", id = "gui-Ul2tcQc7E0" },
      { role = "ALL", text = "Magic debuffs are frequent — dispel s:Flashpoint:, s:Burning Fermentation:, s:Bee Venom:.", type = "Mechanic", id = "gui-rcLUejwnDR8" },
      { role = "ALL", text = "Avoid swirlies and s:Wild Wallop: knockbacks — especially near ledges or extra packs.", type = "Mechanic", id = "gui-yUubWq89yMI" },
      { role = "ALL", text = "Watch for candle DoT overlaps — e.g. s:Incite Flames: and s:Enkindling Inferno: combo.", type = "Mechanic", id = "gui-mRbxywXLwEE" },
      { role = "TANK", text = "Open with safe pull — n:Rank Overseer: knock mobs wide, causing accidental chain pulls.", type = "Mechanic", id = "gui-j78ahqkUoA" },
      { role = "TANK", text = "Position minecart adds (n:Menial Laborers:) on tracks for cleave and minecart kills.", type = "Mechanic", id = "gui-61lFcGgsULs" },
      { role = "TANK", text = "n:Corridor Creepers: gain power from corpses — kite if stacks grow too high.", type = "Mechanic", id = "gui-fjtet2SsnS8" },
      { role = "TANK", text = "During escort, stick close to cart — pull carefully, only what's needed.", type = "Mechanic", id = "gui-Mdf4410THZY" },
      { role = "HEALER", text = "Be ready for burst healing during s:Volatile Keg:, s:Eternal Darkness:, candle DoT overlaps.", type = "Mechanic", id = "gui-W0PLhPO25A" },
      { role = "HEALER", text = "Candle heat drops during s:Eternal Darkness: — DPS or tank should refill wax mid-cast.", type = "Mechanic", id = "gui-MrRftDvzTAg" },
      { role = "DPS", text = "Use CC on n:Menial Laborers: during escort — they can be stunned or rooted.", type = "Mechanic", id = "gui-cgSzYXceUrQ" },
      { role = "DPS", text = "Kill adds fast during boss phases — especially during s:Eternal Darkness:.", type = "Mechanic", id = "gui-UWkf7X3UTxI" },
      { role = "DPS", text = "Use CC on n:Corridor Creepers: to prevent them from gaining stacks.", type = "Mechanic", id = "gui-SXLN1BoeV4" }
    },
  },

  ["Route"] = {
    id = "enc-darkflame-route",
    order = 2,
    header = "Route",
    entries = {
      { role = "ALL", text = "Pulling full first area. Respect bleed stacks from n:Menial Laborers:.", type = "Call", id = "gui-1zLA9dXLw" },
      { role = "ALL", text = "Focus n:Royal Wicklighter: fast in second pull to avoid bolt overlaps.", type = "Call", id = "gui-ghaDhWwPiZU" },
      { role = "ALL", text = "Chain pull n:Rank Overseer: and new n:Laborers: carefully into each other.", type = "Call", id = "gui-9HWQkhTSg" },
      { role = "ALL", text = "Tag n:Lowly Mole Herder: from range and LOS if possible.", type = "Call", id = "gui-wDP1TZJ1Nik" },
      { role = "ALL", text = "Aim for ~28-30% count before first boss.", type = "Mechanic", id = "gui-okxIc710t20" },
      { role = "ALL", text = "After first boss, jump down and pull n:Wandering Candle: + n:Task Workers:.", type = "Call", id = "gui-30sIaCzHbI" },
      { role = "ALL", text = "LOS n:Wandering Candle: AOE under Minecart rail pillar.", type = "Position", id = "gui-MBjwmezJt9Y" },
      { role = "ALL", text = "Second Candle pull: Combine it with next pack for efficiency.", type = "Call", id = "gui-CdSkEBxrcc8" },
      { role = "ALL", text = "In boss room: can either slow pull or YOLO all mobs together.", type = "Mechanic", id = "gui-y1TApp6jZZ4" },
      { role = "ALL", text = "LOS properly to reduce fire stacks from n:Blazing Fiends:.", type = "Mechanic", id = "gui-ujfqgw4w90" },
      { role = "ALL", text = "After n:Blazikon:, pull n:Wandering Candle: in new room first.", type = "Call", id = "gui-uUy2kaUUDbU" },
      { role = "ALL", text = "Run far end to stack n:Flame Bolters: via LOS if confident.", type = "Call", id = "gui-maGcOV6hcPc" },
      { role = "ALL", text = "n:Snoot Stout: and n:Torch Snarl: pull next. Tank face headlock safely.", type = "Mechanic", id = "gui-1VmIf4bqfFU" },
      { role = "ALL", text = "After n:The Candle King:, proceed straight into Minecart event.", type = "Call", id = "gui-rPg7mVlWFxM" },
      { role = "ALL", text = "Pull 1-2 packs at a time in Minecart to avoid n:Corridor Creepers: scaling.", type = "Call", id = "gui-7jNTLQOxoLQ" },
      { role = "ALL", text = "Cart goes left-right-left — clear as we move.", type = "Call", id = "gui-c2Mjgk8YjL4" },
      { role = "ALL", text = "At final boss, expect to still be slightly under count.", type = "Mechanic", id = "gui-d32b4BNbrY" },
      { role = "ALL", text = "Backpull into earlier cleared mobs if needed to reach 100%.", type = "Call", id = "gui-bUs3FPYrEd4" }
    },
  },

  ["Ol' Waxbeard"] = {
    id = "enc-darkflame-ol-waxbeard",
    order = 3,
    header = "Boss: Ol' Waxbeard",
    entries = {
      { role = "ALL", text = "Interrupt s:Underhanded Track-tics: cart or group wipe.", type = "Interrupt", id = "gui-l0XSGWsoys" },
      { role = "TANK", text = "Pick up n:Menial Laborers: quickly. Defensives if high bleed stacks.", type = "Mechanic", id = "gui-29IaZU1OiX8" },
      { role = "TANK", text = "If fixated by s:Candleflame:, kite adds + use movement/CDs.", type = "Mechanic", id = "gui-hIhti7suzTw" },
      { role = "TANK", text = "Defensive on s:Rock Buster: — 25% phys dmg amp.", type = "Mechanic", id = "gui-OccfAdeNNI" },
      { role = "TANK", text = "Position boss near track for minecart cleave.", type = "Position", id = "gui-4tFdZect0jE" },
      { role = "TANK", text = "s:Reckless Charge: incoming — bait near track to clear adds.", type = "Call", id = "gui-XdFcEwH4Mjw" },
      { role = "TANK", text = "Cart up — dragging boss for cleave.", type = "Call", id = "gui-26PpTMkIEpo" },
      { role = "TANK", text = "Avoid s:Cave-In:. Position group to dodge post-charge swirls.", type = "Mechanic", id = "gui-raMvRB7J28" },
      { role = "TANK", text = "Pull at edge to avoid aggro from patrol n:Menial Laborers:.", type = "Mechanic", id = "gui-0g2d80oU9s" },
      { role = "HEALER", text = "Top s:Candleflame: target under fixate pressure.", type = "Mechanic", id = "gui-9MXrsj9QI" },
      { role = "HEALER", text = "Prep for DoT if s:Underhanded Track-tics: fails.", type = "Call", id = "gui-z6oGiZSXdHw" },
      { role = "DPS", text = "Kite fixated adds to track. CC/slow them.", type = "Mechanic", id = "gui-yvG4PjACxio" },
      { role = "DPS", text = "Dodge s:Cave-In: swirls after s:Reckless Charge:.", type = "Mechanic", id = "gui-sBNDn9jJYw" }
    },
  },

  ["Blazikon"] = {
    id = "enc-darkflame-blazikon",
    order = 4,
    header = "Boss: Blazikon",
    entries = {
      { role = "ALL", text = "Light candles during s:Candle Barrage:. Spread swirlies carefully.", type = "Call", id = "gui-jsLtAM2CvDI" },
      { role = "ALL", text = "Extinguish 1–2 candles with s:Gust: to create safe zones.", type = "Call", id = "gui-Rq6btWfXA" },
      { role = "ALL", text = "Interrupt s:Explosive Flame: from trash near boss.", type = "Interrupt", id = "gui-hmGSIRFwE6A" },
      { role = "TANK", text = "Stay in melee — boss cleaves if no target nearby.", type = "Position", id = "gui-UDxurMIgSMU" },
      { role = "TANK", text = "Re-enter melee fast after s:Gust: to avoid wipe from s:Blazing Storms:.", type = "Mechanic", id = "gui-aQTf4WbnaI" },
      { role = "TANK", text = "Coordinate safe zones during Gust phases.", type = "Mechanic", id = "gui-gQsAOkK0JfE" },
      { role = "TANK", text = "Reposition after Gust to extinguished candles.", type = "Position", id = "gui-x3T1EK5DLXg" },
      { role = "TANK", text = "Use CD for s:Dousing Breath: if high s:Enkindling: stacks.", type = "Mechanic", id = "gui-YEdXpbw7SY" },
      { role = "TANK", text = "DPS light candles. I’m staying on boss.", type = "Call", id = "gui-oeOJXNZoiY4" },
      { role = "HEALER", text = "Prep CDs for s:Dousing Breath: and fire phases.", type = "Call", id = "gui-SDpJG2wNG5U" },
      { role = "HEALER", text = "Top group during s:Incite Flames: puddle phase.", type = "Mechanic", id = "gui-HKDX2g12UmY" },
      { role = "DPS", text = "Spread Barrage to light candles fast.", type = "Mechanic", id = "gui-bbwYS0paoIY" },
      { role = "DPS", text = "Avoid s:Gust: tornadoes and s:Incite Flames:.", type = "Mechanic", id = "gui-oqiLgK7CgHA" }
    },
  },

  ["The Candle King"] = {
    id = "enc-darkflame-the-candle-king",
    order = 5,
    header = "Boss: The Candle King",
    entries = {
      { role = "ALL", text = "Interrupt s:Paranoid Mind: or party gets feared.", type = "Interrupt", id = "gui-b05hjWAUE" },
      { role = "ALL", text = "Aim s:Pickaxe: at statues.", type = "Call", id = "gui-P3emdwTc8G0" },
      { role = "ALL", text = "Throw s:Darkflame: to destroy multiple statues.", type = "Call", id = "gui-w8kJTStFdJ0" },
      { role = "TANK", text = "Stay clear of statues to avoid stun.", type = "Position", id = "gui-E4RMPNtwZvo" },
      { role = "TANK", text = "Rotate boss to new spawn points after s:Darkflame:.", type = "Mechanic", id = "gui-js4IEsR7u3Q" },
      { role = "TANK", text = "Starting near statue cluster, rotating counter-clockwise.", type = "Call", id = "gui-c0YrN4VlkB8" },
      { role = "HEALER", text = "Prep CDs if many statues up before s:Darkflame: phase.", type = "Call", id = "gui-UmLTV9oXemU" },
      { role = "HEALER", text = "Top group during s:Eerie Molds:.", type = "Mechanic", id = "gui-QVTAoQ4ISTM" },
      { role = "DPS", text = "Use s:Darkflame: circle to hit statues.", type = "Mechanic", id = "gui-LziPKSFJ0U" },
      { role = "DPS", text = "Follow tank to group statues together.", type = "Mechanic", id = "gui-Li3537Oiho" }
    },
  },
  
  ["The Darkness"] = {
    id = "enc-darkflame-the-darkness",
    order = 6,
    header = "Boss: The Darkness",
    entries = {
      { role = "ALL", text = "Interrupt s:Call Darkspawn: fast. I’ll AoE adds.", type = "Call", id = "gui-00QonrnpsLI" },
      { role = "ALL", text = "If s:Umbral Slash: targets your candle, reposition immediately.", type = "Mechanic", id = "gui-afJO1UCJ4Q" },
      { role = "ALL", text = "s:Shadowblast: on me — moving out from candle to explode.", type = "Call", id = "gui-OI8PnpUd8d0" },
      { role = "ALL", text = "Grabbing wax to refill candle.", type = "Call", id = "gui-zDIqalfYUA8" },
      { role = "ALL", text = "Interrupt s:Drain Light: from adds — saves candle heat.", type = "Interrupt", id = "gui-32cyGcRmY" },
      { role = "TANK", text = "Refuel candle during s:Eternal Darkness: or s:Rising Gloom:.", type = "Mechanic", id = "gui-cgZB0bwt7vs" },
      { role = "TANK", text = "Tank starting mid-room for wax rotation.", type = "Position", id = "gui-Ec0PGS86fag" },
      { role = "TANK", text = "Rotate boss toward wax spawns along track lines.", type = "Position", id = "gui-9iigN6lM1k" },
      { role = "TANK", text = "Group adds for cleave. Stun wrigglers.", type = "Mechanic", id = "gui-KzM2M8rAB0" },
      { role = "HEALER", text = "Use CDs for s:Eternal Darkness: massive AoE.", type = "Call", id = "gui-s308Kksgbw" },
      { role = "HEALER", text = "Top group during s:Rising Gloom: phases.", type = "Mechanic", id = "gui-dq4XWJVbJTY" },
      { role = "DPS", text = "Kill n:Darkspawn: quickly. Interrupt s:Drain Light:.", type = "Mechanic", id = "gui-sWiy3eBVTg" },
      { role = "DPS", text = "Return wax to candle if heat is low.", type = "Mechanic", id = "gui-hmJUBjxB70Q" }
    },
  }
}
