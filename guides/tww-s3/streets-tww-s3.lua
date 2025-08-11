DungeonGuide_Guides["dung-tazavesh-streets-tww-s3"] = {
  name = "Tazavesh: Streets of Wonder",
  id = "dung-tazavesh-streets-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["Tazavesh: Streets of Wonder"] = {
    id = "enc-tazavesh-streets-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "32-minute hub-style dungeon with branching paths and RP gates. Movement-heavy with frequent add waves.", type = "Mechanic", id = "gui-wr4qYvQh" },
      { order = 2, role = "ALL", text = "Opening RP spawns Custom Security and n[Gatewarden Zo'm]. Let tank lead the stairs; avoid early aggro.", type = "Call", id = "gui-Qq8qQe8S" },
      { order = 3, role = "ALL", text = "Defeat n[Portalmancer Zo'han] and their adds to spawn first boss n[Zo'phex the Sentinel].", type = "Call", id = "gui-6Xxq3o2m" },
      { order = 4, role = "ALL", text = "After n[Zo'phex], choose route: RIGHT to Mailroom -> Myza's Oasis, or LEFT to n[Grand Menagerie].", type = "Call", id = "gui-6b2c0sJg" },
      { order = 5, role = "ALL", text = "Oasis access needs a vendor trade RP with spawned waves. Tank usually carries the items.", type = "Mechanic", id = "gui-ZA4p2rJw" },
      { order = 6, role = "ALL", text = "Expect frequent purge/dispels/soothe checks and high-priority interrupts on trash.", type = "Mechanic", id = "gui-7g9yF0vN" },
      { order = 7, role = "TANK", text = "Front-loaded tank damage on opener and mixed pulls. Plan CDs and kite when enrages land.", type = "Call", id = "gui-M3uJt5cE" },
      { order = 8, role = "HEALER", text = "Spiky party damage around RP waves and heavy AoE pulls. Prep ramps and spot dispels.", type = "Call", id = "gui-c1mVqf0B" },
    }
  },

  ["Route"] = {
    id = "enc-tazavesh-streets-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are pulling opener: n[Custom Security] + n[Gatewarden Zo'm]. Purge s[Hard Light Baton] and dodge s[Disruption Grenade].", type = "Call", id = "gui-xJ7h9Pdt" },
      { order = 2, role = "ALL", text = "Interrupt n[Gatewarden Zo'm] s[Proxy Strike] when possible, else tank must defensively handle it.", type = "Call", id = "gui-k59fYPDL" },
      { order = 3, role = "ALL", text = "CC and kill n[Gatewarden Zo'm] quickly to reduce s[Proxy Strike] tank pressure.", type = "Target", target = "Gatewarden Zo'm", id = "gui-qK7m5TgH3Rs" },
      { order = 4, role = "ALL", text = "Clear stairs to n[Portalmancer Zo'han]. Prioritise interrupts on s[Empowered Glyph of Restraint] and s[Glyph of Restraint] from adds.", type = "Call", id = "gui-X6uLR8Wz" },
      { order = 5, role = "ALL", text = "CC and kill n[Portalmancer Zo'han] fast to stop s[Empowered Glyph of Restraint] group CC.", type = "Target", target = "Portalmancer Zo'han", id = "gui-Po2p5SdA9hN" },
      { order = 6, role = "ALL", text = "Kill n[Portalmancer Zo'han] to spawn n[Zo'phex the Sentinel].", type = "Jump", id = "gui-R8wTmAYz", target = "Zo'phex the Sentinel" },
      { order = 7, role = "ALL", text = "After n[Zo'phex], go RIGHT for Mailroom → Oasis route. LEFT leads to n[Grand Menagerie].", type = "Call", id = "gui-aF1XSpwB" },
      { order = 8, role = "ALL", text = "Right path trash: watch for stealth n[Cartel Skulker] bleeds, dispel s[Hyperlight Bomb], soothe n[Cartel Muscle] enrages, and kick s[Hyperlight Bolt].", type = "Call", id = "gui-4vESlWx8" },
      { order = 9, role = "ALL", text = "Clear into mailroom. Interrupt/purge n[Overloaded Mailmental] s[Spam Filter], tank manage s[Letter Opener] bleed, and dodge swirlies from n[Cartel Smuggler].", type = "Call", id = "gui-rZqK7ph3" },
      { order = 10, role = "ALL", text = "Kill n[Overloaded Mailmental] first to avoid s[Spam Filter] silences.", type = "Target", target = "Overloaded Mailmental", id = "gui-Lq5n0HdV7Ua" },
      { order = 11, role = "ALL", text = "Kill trash to engage n[P.O.S.T. Master].", type = "Jump", id = "gui-5p7btVmY", target = "P.O.S.T. Master" },
      { order = 12, role = "ALL", text = "After mailroom, return to Bazaar for vendor RP. Tank carries items to control n[Bizarre Strongarm] fixates.", type = "Call", id = "gui-dMf4gUSc" },
      { order = 13, role = "ALL", text = "Final wave before Oasis includes n[Bizarre Overseer] and n[Bizarre Strongarm] — use defensives for high tank damage.", type = "Call", id = "gui-YWpEobn4" },
      { order = 14, role = "ALL", text = "Enter Oasis and clear RP event waves to unlock n[Zo'gron].", type = "Jump", id = "gui-jxF1E7KR", target = "Zo'gron" },
      { order = 15, role = "ALL", text = "Left path from n[Zo'phex]: n[Tracker Zo'korss] mini-boss — bait s[Beam Splicer] and dispel s[Lockdown] root.", type = "Call", id = "gui-aVfZbgRX" },
      { order = 16, role = "ALL", text = "Kill paired n[Ancient Core Hound] within seconds, interrupt s[Ancient Dread], dodge n[Enraged Direhorn] charge.", type = "Call", id = "gui-3eZ4rph9" },
      { order = 17, role = "ALL", text = "Focus n[Ancient Core Hound] pair to avoid overlapping s[Ancient Dread].", type = "Target", target = "Ancient Core Hound", id = "gui-Ug7r1MsX9Yt" },
      { order = 18, role = "ALL", text = "Clear to n[Grand Menagerie].", type = "Jump", id = "gui-hQ5Mt4g1", target = "Grand Menagerie" },
      { order = 19, role = "ALL", text = "After Menagerie, cross central market. Interrupt n[Veteran Sparkcaster] and stop n[Market Peacekeeper] s[Fail-Safe Field].", type = "Call", id = "gui-Ym3s4gFq" },
      { order = 20, role = "ALL", text = "Kill n[Market Peacekeeper] before s[Fail-Safe Field] finishes to prevent DR shield.", type = "Target", target = "Market Peacekeeper", id = "gui-Fk6h3WnP4Cv" },
      { order = 21, role = "ALL", text = "Final mini-boss before n[So'azmi] casts s[Shock Mine] and s[Lethal Force] tether — spread to avoid overlap.", type = "Call", id = "gui-XRJyfmGe" },
      { order = 22, role = "ALL", text = "Kill to engage n[So'azmi].", type = "Jump", id = "gui-km4xYPqV", target = "So'azmi" }
    }
  },

  ["Zo'phex the Sentinel"] = {
    id = "enc-tazavesh-streets-tww-s3-zophex",
    order = 3,
    header = "Boss: Zo'phex the Sentinel",
    entries = {
      { order = 1, role = "ALL", text = "On s[Interrogation]: hard swap to the cage and nuke it. Target runs away to buy time.", type = "Call", id = "gui-1tQGm2Kf" },
      { order = 2, role = "ALL", text = "If you get s[Impound Contraband], sprint to your weapon and pick it up for haste. Call if path is blocked.", type = "Call", id = "gui-G5aK0pXy" },
      { order = 3, role = "ALL", text = "Dodge s[Armed Security] blades — they persist and patrol. Keep arena centre clear.", type = "Call", id = "gui-3zWvNqUH" },
      { order = 4, role = "ALL", text = "Sidestep s[Charge Slash] frontal; stay relatively close to tighten the cone.", type = "Call", id = "gui-qYpJYc2B" },
      { order = 5, role = "ALL", text = "Use immunities/cheats to break or ignore s[Interrogation] if targeted (e.g. Shadowmeld, AMS, IBF, Blink).", type = "Mechanic", id = "gui-0cVt2ZsM" },
      { order = 6, role = "ALL", text = "Cage break triggers a burst of AoE. Stabilise before repositioning.", type = "Mechanic", id = "gui-2uNwH9kS" },
      { order = 7, role = "ALL", text = "Keep movement minimal; blades + frontal punish panic pathing.", type = "Position", id = "gui-7RkJm3aE" },
      { order = 8, role = "TANK", text = "Pop CDs during s[Fully Armed] — boss gains 25% physical damage.", type = "Mechanic", id = "gui-Zr1gB6qP" },
      { order = 9, role = "TANK", text = "Hold boss near centre to manage blade lanes and quick cage swaps.", type = "Position", id = "gui-4hJwPqgD" },
      { order = 10, role = "TANK", text = "Drag boss away from fresh blade spawns before s[Interrogation] starts.", type = "Call", id = "gui-v3PpA1tL" },
      { order = 11, role = "HEALER", text = "Ramp for cage break + lingering blade damage. Top the freed player quickly.", type = "Call", id = "gui-8fQnE0WU" },
      { order = 12, role = "HEALER", text = "Spot heal s[Impound Contraband] targets crossing the room.", type = "Mechanic", id = "gui-By6rKq0X" },
      { order = 13, role = "HEALER", text = "Plan an external for tank during s[Fully Armed] if low or overlap hits.", type = "Call", id = "gui-Tn2wLkXa" },
      { order = 14, role = "DPS", text = "Prioritise cage DPS instantly on s[Interrogation]; delay personal burst otherwise.", type = "Call", id = "gui-h0KcS8rN" },
      { order = 15, role = "DPS", text = "If disarmed, beeline to your weapon — the haste buff boosts shield/cage breaks.", type = "Mechanic", id = "gui-pt7VgQ9M" },
      { order = 16, role = "DPS", text = "Maintain uptime while weaving blades and frontal — small side steps over long kites.", type = "Position", id = "gui-Es1m4YUd" }
    }
  },

  ["P.O.S.T. Master"] = {
    id = "enc-tazavesh-streets-tww-s3-postmaster",
    order = 4,
    header = "Boss: P.O.S.T. Master",
    entries = {
      { order = 1, role = "ALL", text = "Soak s[Hazardous Liquids]. Missed soaks leave pools that slow and tick hard.", type = "Call", id = "gui-v9p3M2wK" },
      { order = 2, role = "ALL", text = "Stack for s[Money Order] unless someone calls an immunity solo.", type = "Call", id = "gui-7tXQYx0C" },
      { order = 3, role = "ALL", text = "At 100 energy grab s[Unstable Goods] and throw into the active mail portal. Use pass if slowed.", type = "Call", id = "gui-2XHq4Ucm" },
      { order = 4, role = "ALL", text = "Do not drop packages. Dropped goods explode and apply heavy DoT to everyone.", type = "Call", id = "gui-E8bqkUpm" },
      { order = 5, role = "ALL", text = "Rotate soakers. The arcane DoT stacks; use personals at 3+ stacks or during s[Fan Mail].", type = "Mechanic", id = "gui-rqv4gOeB" },
      { order = 6, role = "ALL", text = "Position near likely portal spawns to shorten carry time during package phase.", type = "Position", id = "gui-6kF7wqaj" },
      { order = 7, role = "ALL", text = "Match the portal correctly. If unsure, pass to a teammate facing the portal.", type = "Mechanic", id = "gui-0nTgQJ3y" },
      { order = 8, role = "TANK", text = "Help soak extra s[Hazardous Liquids] when safe; rotate CDs to manage DoT stacks.", type = "Call", id = "gui-4QzPjHuy" },
      { order = 9, role = "TANK", text = "Pre-CD for overlaps: soaks + s[Fan Mail] or late package explosions.", type = "Mechanic", id = "gui-lu1yN7cZ" },
      { order = 10, role = "TANK", text = "Park the boss near open space so runners have clear lanes to portals.", type = "Position", id = "gui-Z6e3Ww2K" },
      { order = 11, role = "HEALER", text = "Ramp for s[Fan Mail]. Expect spike damage if soaks overlap.", type = "Call", id = "gui-Pq8bJ2mA" },
      { order = 12, role = "HEALER", text = "Track soaker DoT stacks; externals for high stacks or when carrying s[Unstable Goods].", type = "Mechanic", id = "gui-8kHf0cPS" },
      { order = 13, role = "HEALER", text = "Top package carriers before throws; movement slow plus DoT can drop them.", type = "Call", id = "gui-Db3x2tqV" },
      { order = 14, role = "DPS", text = "Use mobility for deliveries; chain-throw if paths are blocked.", type = "Call", id = "gui-Bv5y1NQe" },
      { order = 15, role = "DPS", text = "Save a small burst for messy package phases to stabilise if a bomb is dropped.", type = "Call", id = "gui-sR4cA6Mg" },
      { order = 16, role = "DPS", text = "Avoid puddles created by missed soaks; they slow and delay deliveries.", type = "Mechanic", id = "gui-1yJtPqSe" }
    }
  },

  ["Zo'gron"] = {
    id = "enc-tazavesh-streets-tww-s3-zogron",
    order = 5,
    header = "Boss: Zo'gron",
    entries = {
      { order = 1, role = "ALL", text = "Maintain s[Uptempo] buff by collecting lit notes. Refresh before it drops.", type = "Call", id = "gui-pV8sZw0L" },
      { order = 2, role = "ALL", text = "On s[Final Warning]: break the absorb shield before cast ends or wipe.", type = "Call", id = "gui-Vq7yM10X" },
      { order = 3, role = "ALL", text = "Spread 5 yards for s[Suppression Spark] — avoid overlapping explosions.", type = "Call", id = "gui-g9ErmWf5" },
      { order = 4, role = "ALL", text = "Interrupt n[Oasis Security] s[Menacing Shout] immediately in add waves.", type = "Call", id = "gui-sR3n0vQY" },
      { order = 5, role = "ALL", text = "Dodge rotten food swirlies on stage — lethal if hit.", type = "Mechanic", id = "gui-D8qh0WfA" },
      { order = 6, role = "ALL", text = "Don't cross other players’ note paths; coordinate collection routes.", type = "Mechanic", id = "gui-hL1tx7pZ" },
      { order = 7, role = "ALL", text = "Avoid stacking near boss during s[Suppression Spark] detonations.", type = "Position", id = "gui-mvF8qskQ" },
      { order = 8, role = "TANK", text = "Face n[Zo'gron] away — s[Security Slam] is a heavy frontal.", type = "Mechanic", id = "gui-f7S5LkpH" },
      { order = 9, role = "TANK", text = "Pick an instrument close to tank spot — horn or drums help uptime.", type = "Call", id = "gui-W1J2zeuP" },
      { order = 10, role = "TANK", text = "Pick up adds fast in waves; interrupt or stun dangerous casts.", type = "Call", id = "gui-Q6eTsgRw" },
      { order = 11, role = "HEALER", text = "Ramp heals for s[Suppression Spark] and add wave overlaps.", type = "Call", id = "gui-Y3L8QtwO" },
      { order = 12, role = "HEALER", text = "Spot heal s[Uptempo] runners dodging swirlies.", type = "Mechanic", id = "gui-tZ1nrxjP" },
      { order = 13, role = "HEALER", text = "Soothe adds with s[Rowdy] buff and stabilise tank after s[Security Slam].", type = "Call", id = "gui-k2UgZBqT" },
      { order = 14, role = "DPS", text = "Kill n[Oasis Security] first in add waves to reduce group damage.", type = "Call", id = "gui-Lr6q8W3M" },
      { order = 15, role = "DPS", text = "Save cooldowns for s[Final Warning] shield burn.", type = "Call", id = "gui-0aKzLxUC" },
      { order = 16, role = "DPS", text = "Interrupt n[Disruptive Patron] and n[Oasis Security] whenever possible.", type = "Interrupt", id = "gui-A8xQkV7h" }
    }
  },

  ["Grand Menagerie"] = {
    id = "enc-tazavesh-streets-tww-s3-menagerie",
    order = 6,
    header = "Boss: Grand Menagerie",
    entries = {
      { order = 1, role = "ALL", text = "Spread 5 yards if you have s[Gluttony] — avoid splash damage.", type = "Call", id = "gui-Mo3vKj1Q" },
      { order = 2, role = "ALL", text = "On s[Grip of Hunger], run out of the large swirly before detonation.", type = "Call", id = "gui-Bf9xY2kL" },
      { order = 3, role = "ALL", text = "Handle s[Grand Consumption] by starting in 2nd wave safe zone, then rotate.", type = "Call", id = "gui-tc6EJrUZ" },
      { order = 4, role = "ALL", text = "During s[Venting Protocol], only s[Gluttony] carrier soaks orbs for DPS buff.", type = "Call", id = "gui-Ls5H0kWa" },
      { order = 5, role = "ALL", text = "Boss mechanics persist after new bosses join — expect stacking effects.", type = "Mechanic", id = "gui-1hZcTgFB" },
      { order = 6, role = "ALL", text = "Coordinate s[Gluttony] pass if needed; never drop during AoE overlaps.", type = "Mechanic", id = "gui-Zn5p9yUa" },
      { order = 7, role = "ALL", text = "Use mobility to dodge swirlies and orbs while maintaining DPS uptime.", type = "Position", id = "gui-Wf3Xj4hS" },
      { order = 8, role = "TANK", text = "Face bosses away from group to reduce cleave and frontal risks.", type = "Mechanic", id = "gui-Gy7Lvd3N" },
      { order = 9, role = "TANK", text = "CDs for s[Flagellation Protocol] and heavy melee overlaps.", type = "Call", id = "gui-Hz2Xw0dK" },
      { order = 10, role = "TANK", text = "Position n[Achillite] near doorway to control orb spawn zones.", type = "Position", id = "gui-Kr4Jt6mV" },
      { order = 11, role = "HEALER", text = "Ramp heals for s[Grand Consumption] + s[Venting Protocol] overlaps.", type = "Call", id = "gui-Vb0mQ8Ls" },
      { order = 12, role = "HEALER", text = "Dispel one target from s[Purification Protocol], other uses personal.", type = "Mechanic", id = "gui-Ds7gW2cP" },
      { order = 13, role = "HEALER", text = "Spot heal s[Gluttony] carrier — they take orb and splash damage.", type = "Call", id = "gui-Ty4hJ9vQ" },
      { order = 14, role = "DPS", text = "Burn bosses to 50% quickly to trigger phase transitions.", type = "Call", id = "gui-Nm6cK2zX" },
      { order = 15, role = "DPS", text = "If no s[Gluttony], avoid orbs — they apply stacking 5% damage reduction.", type = "Mechanic", id = "gui-Fd5vJ4nE" },
      { order = 16, role = "DPS", text = "Swap to s[Chains of Domination] immediately — free the rooted player.", type = "Call", id = "gui-Rx9hV3kM" }
    }
  },

  ["So'azmi"] = {
    id = "enc-tazavesh-streets-tww-s3-soazmi",
    order = 7,
    header = "Boss: So'azmi",
    entries = {
      { order = 1, role = "ALL", text = "Use correct Relocator pair to cross s[Shuri] shockwave — touching it is lethal.", type = "Call", id = "gui-6cP9m4xV" },
      { order = 2, role = "ALL", text = "On s[Double Technique], reach boss fast and land 2 staggered interrupts.", type = "Call", id = "gui-Wz8Jt2bF" },
      { order = 3, role = "ALL", text = "At 70% and 40% HP, s[Force Walls] split room — plan teleporter path early.", type = "Call", id = "gui-Yr4sL8qM" },
      { order = 4, role = "ALL", text = "If tethered by s[Lethal Force] (mini-boss before this fight), spread away to avoid contact.", type = "Call", id = "gui-Kq3bN9pX" },
      { order = 5, role = "ALL", text = "Check Relocator symbols at pull — know your safe lanes for later Shuri.", type = "Mechanic", id = "gui-Ze7hB1fR" },
      { order = 6, role = "ALL", text = "Don't panic-teleport; wrong destination can trap you or drop you into Shuri.", type = "Mechanic", id = "gui-Jn9gQ4aW" },
      { order = 7, role = "ALL", text = "Watch boss timer — move to safe zone before Shuri starts expanding.", type = "Position", id = "gui-Mt2vL6kE" },
      { order = 8, role = "TANK", text = "Pop CDs for s[Phase Slash] — triple-target bleed plus melee hit.", type = "Mechanic", id = "gui-Rs5mP0yT" },
      { order = 9, role = "TANK", text = "Keep boss central for flexible teleporter access.", type = "Position", id = "gui-Vy3kD7pB" },
      { order = 10, role = "TANK", text = "Drag boss to safe teleporter if s[Double Technique] is incoming.", type = "Call", id = "gui-Lb6fG1rH" },
      { order = 11, role = "HEALER", text = "Top s[Phase Slash] bleed targets; overlap with Shuri is lethal.", type = "Call", id = "gui-Nd2cQ5vJ" },
      { order = 12, role = "HEALER", text = "Dispel s[Phase Slash] only if dangerous overlaps; save for key moments.", type = "Mechanic", id = "gui-Hf8bP4sL" },
      { order = 13, role = "HEALER", text = "Be ready for LoS issues during s[Force Walls] — position to keep sightlines.", type = "Call", id = "gui-Qx1mR6zW" },
      { order = 14, role = "DPS", text = "Interrupt s[Double Technique] with assigned order; don't double-kick early.", type = "Interrupt", id = "gui-Uv4kN8cE" },
      { order = 15, role = "DPS", text = "Hold mobility for Shuri; don't burn blinks/dashes right before it spawns.", type = "Call", id = "gui-Eg0yW5bP" },
      { order = 16, role = "DPS", text = "Use defensives if late to safe zone or stuck between s[Force Walls].", type = "Mechanic", id = "gui-Ca9sL0mV" }
    }
  }
}