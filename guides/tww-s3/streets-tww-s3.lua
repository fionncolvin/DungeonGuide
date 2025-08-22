DungeonGuide_Guides["dung-tazavesh-streets-tww-s3"] = {
  unitMapIDs = { 1989, 1990, 1991, 1992 },
  challengeMapID = {391},
  name = "Tazavesh: Streets of Wonder",
  id = "dung-tazavesh-streets-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["Tazavesh: Streets of Wonder"] = {
    id = "enc-tazavesh-streets-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "32-minute hub-style dungeon with branching paths and RP gates. Movement-heavy with frequent add waves.", type = "Mechanic", id = "gui-34sQjNdXucM" },
      { order = 2, role = "ALL", text = "Opening RP spawns Custom Security and n[Gatewarden Zo'm]. Let tank lead the stairs; avoid early aggro.", type = "Call", id = "gui-wHKZjQh5GLc" },
      { order = 3, role = "ALL", text = "Defeat n[Portalmancer Zo'han] and their adds to spawn first boss n[Zo'phex the Sentinel].", type = "Call", id = "gui-R1tpXoHAbeQ" },
      { order = 4, role = "ALL", text = "After n[Zo'phex], choose route: RIGHT to Mailroom -> Myza's Oasis, or LEFT to n[Grand Menagerie].", type = "Call", id = "gui-d2uOBfcCqPA" },
      { order = 5, role = "ALL", text = "Oasis access needs a vendor trade RP with spawned waves. Tank usually carries the items.", type = "Mechanic", id = "gui-YD9XlO6gIwc" },
      { order = 6, role = "ALL", text = "Expect frequent purge/dispels/soothe checks and high-priority interrupts on trash.", type = "Mechanic", id = "gui-OFVheTkNX8" },
      { order = 7, role = "TANK", text = "Front-loaded tank damage on opener and mixed pulls. Plan CDs and kite when enrages land.", type = "Call", id = "gui-P7dtYcXZODk" },
      { order = 8, role = "HEALER", text = "Spiky party damage around RP waves and heavy AoE pulls. Prep ramps and spot dispels.", type = "Call", id = "gui-pBN1fy3hsOA" },
    }
  },

  ["Route"] = {
    id = "enc-tazavesh-streets-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are pulling opener: n[Custom Security] + n[Gatewarden Zo'm]. Purge s[Hard Light Baton] and dodge s[Disruption Grenade].", type = "Call", id = "gui-RWrxYMMs6kY" },
      { order = 2, role = "ALL", text = "Interrupt n[Gatewarden Zo'm] s[Proxy Strike] when possible, else tank must defensively handle it.", type = "Call", id = "gui-2WHkkd5s" },
      { order = 3, role = "ALL", text = "CC and kill n[Gatewarden Zo'm] quickly to reduce s[Proxy Strike] tank pressure.", type = "Target", target = "Gatewarden Zo'm", id = "gui-rGdZlgyIk5M" },
      { order = 4, role = "ALL", text = "Clear stairs to n[Portalmancer Zo'han]. Prioritise interrupts on s[Empowered Glyph of Restraint] and s[Glyph of Restraint] from adds.", type = "Call", id = "gui-TWzGs8YZcA" },
      { order = 5, role = "ALL", text = "CC and kill n[Portalmancer Zo'han] fast to stop s[Empowered Glyph of Restraint] group CC.", type = "Target", target = "Portalmancer Zo'han", id = "gui-CkJXKr5vME" },
      { order = 6, role = "ALL", text = "Kill n[Portalmancer Zo'han] to spawn n[Zo'phex the Sentinel].", type = "Jump", id = "gui-oR9NlRYvlhY", target = "Zo'phex the Sentinel" },
      { order = 7, role = "ALL", text = "After n[Zo'phex], go RIGHT for Mailroom → Oasis route. LEFT leads to n[Grand Menagerie].", type = "Call", id = "gui-N1Ttb2s5KlI" },
      { order = 8, role = "ALL", text = "Right path trash: watch for stealth n[Cartel Skulker] bleeds, dispel s[Hyperlight Bomb], soothe n[Cartel Muscle] enrages, and kick s[Hyperlight Bolt].", type = "Call", id = "gui-zOELL4GMSVQ" },
      { order = 9, role = "ALL", text = "Clear into mailroom. Interrupt/purge n[Overloaded Mailmental] s[Spam Filter], tank manage s[Letter Opener] bleed, and dodge swirlies from n[Cartel Smuggler].", type = "Call", id = "gui-OQga0IgF4" },
      { order = 10, role = "ALL", text = "Kill n[Overloaded Mailmental] first to avoid s[Spam Filter] silences.", type = "Target", target = "Overloaded Mailmental", id = "gui-KRdcsSsbgs" },
      { order = 11, role = "ALL", text = "Kill trash to engage n[P.O.S.T. Master].", type = "Jump", id = "gui-ihqKf2EOcZg", target = "P.O.S.T. Master" },
      { order = 12, role = "ALL", text = "After mailroom, return to Bazaar for vendor RP. Tank carries items to control n[Bizarre Strongarm] fixates.", type = "Call", id = "gui-zilDUxis2DY" },
      { order = 13, role = "ALL", text = "Final wave before Oasis includes n[Bizarre Overseer] and n[Bizarre Strongarm] — use defensives for high tank damage.", type = "Call", id = "gui-T0nU4ZOO7JA" },
      { order = 14, role = "ALL", text = "Enter Oasis and clear RP event waves to unlock n[Zo'gron].", type = "Jump", id = "gui-4enu9P9G7Qs", target = "Zo'gron" },
      { order = 15, role = "ALL", text = "Left path from n[Zo'phex]: n[Tracker Zo'korss] mini-boss — bait s[Beam Splicer] and dispel s[Lockdown] root.", type = "Call", id = "gui-2Y3RPR1Xlys" },
      { order = 16, role = "ALL", text = "Kill paired n[Ancient Core Hound] within seconds, interrupt s[Ancient Dread], dodge n[Enraged Direhorn] charge.", type = "Call", id = "gui-8Foie5fMp6A" },
      { order = 17, role = "ALL", text = "Focus n[Ancient Core Hound] pair to avoid overlapping s[Ancient Dread].", type = "Target", target = "Ancient Core Hound", id = "gui-FOayqzaYof4" },
      { order = 18, role = "ALL", text = "Clear to n[Grand Menagerie].", type = "Jump", id = "gui-MecmFCSeu0", target = "Grand Menagerie" },
      { order = 19, role = "ALL", text = "After Menagerie, cross central market. Interrupt n[Veteran Sparkcaster] and stop n[Market Peacekeeper] s[Fail-Safe Field].", type = "Call", id = "gui-v7pLCnvtZds" },
      { order = 20, role = "ALL", text = "Kill n[Market Peacekeeper] before s[Fail-Safe Field] finishes to prevent DR shield.", type = "Target", target = "Market Peacekeeper", id = "gui-ZXTEB5Agrc" },
      { order = 21, role = "ALL", text = "Final mini-boss before n[So'azmi] casts s[Shock Mine] and s[Lethal Force] tether — spread to avoid overlap.", type = "Call", id = "gui-e9A3ndDgDms" },
      { order = 22, role = "ALL", text = "Kill to engage n[So'azmi].", type = "Jump", id = "gui-3J7Kak8OgWw", target = "So'azmi" }
    }
  },

  ["Zo'phex the Sentinel"] = {
    id = "enc-tazavesh-streets-tww-s3-zophex",
    order = 3,
    header = "Boss: Zo'phex the Sentinel",
    entries = {
      { order = 1, role = "ALL", text = "On s[Interrogation]: hard swap to the cage and nuke it. Target runs away to buy time.", type = "Call", id = "gui-VSKXQQ4Oh6U" },
      { order = 2, role = "ALL", text = "If you get s[Impound Contraband], sprint to your weapon and pick it up for haste. Call if path is blocked.", type = "Call", id = "gui-4p9btJzE" },
      { order = 3, role = "ALL", text = "Dodge s[Armed Security] blades — they persist and patrol. Keep arena centre clear.", type = "Call", id = "gui-34arBrZfiaY" },
      { order = 4, role = "ALL", text = "Sidestep s[Charge Slash] frontal; stay relatively close to tighten the cone.", type = "Call", id = "gui-TfYw0u6bDM" },
      { order = 5, role = "ALL", text = "Use immunities/cheats to break or ignore s[Interrogation] if targeted (e.g. Shadowmeld, AMS, IBF, Blink).", type = "Mechanic", id = "gui-YQRc2GZ5xNc" },
      { order = 6, role = "ALL", text = "Cage break triggers a burst of AoE. Stabilise before repositioning.", type = "Mechanic", id = "gui-6ydtToUxf58" },
      { order = 7, role = "ALL", text = "Keep movement minimal; blades + frontal punish panic pathing.", type = "Position", id = "gui-RdDnsRhzC4k" },
      { order = 8, role = "TANK", text = "Pop CDs during s[Fully Armed] — boss gains 25% physical damage.", type = "Mechanic", id = "gui-3XwjsbTRiN0" },
      { order = 9, role = "TANK", text = "Hold boss near centre to manage blade lanes and quick cage swaps.", type = "Position", id = "gui-x4FbMelIBY" },
      { order = 10, role = "TANK", text = "Drag boss away from fresh blade spawns before s[Interrogation] starts.", type = "Call", id = "gui-nmKQqKNB3U" },
      { order = 11, role = "HEALER", text = "Ramp for cage break + lingering blade damage. Top the freed player quickly.", type = "Call", id = "gui-TBQOmLcDQA" },
      { order = 12, role = "HEALER", text = "Spot heal s[Impound Contraband] targets crossing the room.", type = "Mechanic", id = "gui-5VfTFxBHK9Q" },
      { order = 13, role = "HEALER", text = "Plan an external for tank during s[Fully Armed] if low or overlap hits.", type = "Call", id = "gui-yhvGq6YsIrI" },
      { order = 14, role = "DPS", text = "Prioritise cage DPS instantly on s[Interrogation]; delay personal burst otherwise.", type = "Call", id = "gui-x8tRTmhUIo" },
      { order = 15, role = "DPS", text = "If disarmed, beeline to your weapon — the haste buff boosts shield/cage breaks.", type = "Mechanic", id = "gui-rpgtNo9YxGw" },
      { order = 16, role = "DPS", text = "Maintain uptime while weaving blades and frontal — small side steps over long kites.", type = "Position", id = "gui-7Q6nI6uW6uQ" }
    }
  },

  ["P.O.S.T. Master"] = {
    id = "enc-tazavesh-streets-tww-s3-postmaster",
    order = 4,
    header = "Boss: P.O.S.T. Master",
    entries = {
      { order = 1, role = "ALL", text = "Soak s[Hazardous Liquids]. Missed soaks leave pools that slow and tick hard.", type = "Call", id = "gui-LpcmEgaUyy8" },
      { order = 2, role = "ALL", text = "Stack for s[Money Order] unless someone calls an immunity solo.", type = "Call", id = "gui-1bxENwJtn4k" },
      { order = 3, role = "ALL", text = "At 100 energy grab s[Unstable Goods] and throw into the active mail portal. Use pass if slowed.", type = "Call", id = "gui-XCRnL8FOVGM" },
      { order = 4, role = "ALL", text = "Do not drop packages. Dropped goods explode and apply heavy DoT to everyone.", type = "Call", id = "gui-nz9dkHKpGiQ" },
      { order = 5, role = "ALL", text = "Rotate soakers. The arcane DoT stacks; use personals at 3+ stacks or during s[Fan Mail].", type = "Mechanic", id = "gui-iudH80QKTNc" },
      { order = 6, role = "ALL", text = "Position near likely portal spawns to shorten carry time during package phase.", type = "Position", id = "gui-FI634GSlVls" },
      { order = 7, role = "ALL", text = "Match the portal correctly. If unsure, pass to a teammate facing the portal.", type = "Mechanic", id = "gui-Q6tQ9LbZAMY" },
      { order = 8, role = "TANK", text = "Help soak extra s[Hazardous Liquids] when safe; rotate CDs to manage DoT stacks.", type = "Call", id = "gui-TAEB5UxfST4" },
      { order = 9, role = "TANK", text = "Pre-CD for overlaps: soaks + s[Fan Mail] or late package explosions.", type = "Mechanic", id = "gui-nFAxGfpynU" },
      { order = 10, role = "TANK", text = "Park the boss near open space so runners have clear lanes to portals.", type = "Position", id = "gui-zLpQqs3UYs" },
      { order = 11, role = "HEALER", text = "Ramp for s[Fan Mail]. Expect spike damage if soaks overlap.", type = "Call", id = "gui-NtT2pzB57Io" },
      { order = 12, role = "HEALER", text = "Track soaker DoT stacks; externals for high stacks or when carrying s[Unstable Goods].", type = "Mechanic", id = "gui-dX1tkl0hoSU" },
      { order = 13, role = "HEALER", text = "Top package carriers before throws; movement slow plus DoT can drop them.", type = "Call", id = "gui-Q2HgkQHurU" },
      { order = 14, role = "DPS", text = "Use mobility for deliveries; chain-throw if paths are blocked.", type = "Call", id = "gui-hDaNXJxISls" },
      { order = 15, role = "DPS", text = "Save a small burst for messy package phases to stabilise if a bomb is dropped.", type = "Call", id = "gui-H5cE1UYfi0Y" },
      { order = 16, role = "DPS", text = "Avoid puddles created by missed soaks; they slow and delay deliveries.", type = "Mechanic", id = "gui-OuUEBaq5Vk" }
    }
  },

  ["Zo'gron"] = {
    id = "enc-tazavesh-streets-tww-s3-zogron",
    order = 5,
    header = "Boss: Zo'gron",
    entries = {
      { order = 1, role = "ALL", text = "Maintain s[Uptempo] buff by collecting lit notes. Refresh before it drops.", type = "Call", id = "gui-jLAehEoqX2I" },
      { order = 2, role = "ALL", text = "On s[Final Warning]: break the absorb shield before cast ends or wipe.", type = "Call", id = "gui-gyRtQ4QRLw0" },
      { order = 3, role = "ALL", text = "Spread 5 yards for s[Suppression Spark] — avoid overlapping explosions.", type = "Call", id = "gui-tAFulTX94" },
      { order = 4, role = "ALL", text = "Interrupt n[Oasis Security] s[Menacing Shout] immediately in add waves.", type = "Call", id = "gui-vryVxvnne6k" },
      { order = 5, role = "ALL", text = "Dodge rotten food swirlies on stage — lethal if hit.", type = "Mechanic", id = "gui-GQl458NxKWA" },
      { order = 6, role = "ALL", text = "Don't cross other players’ note paths; coordinate collection routes.", type = "Mechanic", id = "gui-ayhznIjjCc" },
      { order = 7, role = "ALL", text = "Avoid stacking near boss during s[Suppression Spark] detonations.", type = "Position", id = "gui-MdBcbsJds8g" },
      { order = 8, role = "TANK", text = "Face n[Zo'gron] away — s[Security Slam] is a heavy frontal.", type = "Mechanic", id = "gui-qPT2YDOIFQU" },
      { order = 9, role = "TANK", text = "Pick an instrument close to tank spot — horn or drums help uptime.", type = "Call", id = "gui-Iq0AMxNTOnQ" },
      { order = 10, role = "TANK", text = "Pick up adds fast in waves; interrupt or stun dangerous casts.", type = "Call", id = "gui-l4FIlN22LWs" },
      { order = 11, role = "HEALER", text = "Ramp heals for s[Suppression Spark] and add wave overlaps.", type = "Call", id = "gui-H8uLykqoa4" },
      { order = 12, role = "HEALER", text = "Spot heal s[Uptempo] runners dodging swirlies.", type = "Mechanic", id = "gui-duHDMRgx0nI" },
      { order = 13, role = "HEALER", text = "Soothe adds with s[Rowdy] buff and stabilise tank after s[Security Slam].", type = "Call", id = "gui-uqRNSOy6Kig" },
      { order = 14, role = "DPS", text = "Kill n[Oasis Security] first in add waves to reduce group damage.", type = "Call", id = "gui-GPOLM3C8L1U" },
      { order = 15, role = "DPS", text = "Save cooldowns for s[Final Warning] shield burn.", type = "Call", id = "gui-iR5zf01u1BA" },
      { order = 16, role = "DPS", text = "Interrupt n[Disruptive Patron] and n[Oasis Security] whenever possible.", type = "Interrupt", id = "gui-XoFlItwTaU" }
    }
  },

  ["Grand Menagerie"] = {
    id = "enc-tazavesh-streets-tww-s3-menagerie",
    order = 6,
    header = "Boss: Grand Menagerie",
    entries = {
      { order = 1, role = "ALL", text = "Spread 5 yards if you have s[Gluttony] — avoid splash damage.", type = "Call", id = "gui-YeC6fwYgw3U" },
      { order = 2, role = "ALL", text = "On s[Grip of Hunger], run out of the large swirly before detonation.", type = "Call", id = "gui-6UokysxzwUw" },
      { order = 3, role = "ALL", text = "Handle s[Grand Consumption] by starting in 2nd wave safe zone, then rotate.", type = "Call", id = "gui-MqSDNQ5rDtM" },
      { order = 4, role = "ALL", text = "During s[Venting Protocol], only s[Gluttony] carrier soaks orbs for DPS buff.", type = "Call", id = "gui-e39sntH5vQ" },
      { order = 5, role = "ALL", text = "Boss mechanics persist after new bosses join — expect stacking effects.", type = "Mechanic", id = "gui-SKBQ55k0Ms" },
      { order = 6, role = "ALL", text = "Coordinate s[Gluttony] pass if needed; never drop during AoE overlaps.", type = "Mechanic", id = "gui-tUDqTOYyWw" },
      { order = 7, role = "ALL", text = "Use mobility to dodge swirlies and orbs while maintaining DPS uptime.", type = "Position", id = "gui-zCiDRDorwkU" },
      { order = 8, role = "TANK", text = "Face bosses away from group to reduce cleave and frontal risks.", type = "Mechanic", id = "gui-m6NK50rOdBk" },
      { order = 9, role = "TANK", text = "CDs for s[Flagellation Protocol] and heavy melee overlaps.", type = "Call", id = "gui-uK1YvvpSySE" },
      { order = 10, role = "TANK", text = "Position n[Achillite] near doorway to control orb spawn zones.", type = "Position", id = "gui-SMvpvNqxAMA" },
      { order = 11, role = "HEALER", text = "Ramp heals for s[Grand Consumption] + s[Venting Protocol] overlaps.", type = "Call", id = "gui-NzPGzBdOes" },
      { order = 12, role = "HEALER", text = "Dispel one target from s[Purification Protocol], other uses personal.", type = "Mechanic", id = "gui-40gCp7s1V9g" },
      { order = 13, role = "HEALER", text = "Spot heal s[Gluttony] carrier — they take orb and splash damage.", type = "Call", id = "gui-NcvZrYsBSGA" },
      { order = 14, role = "DPS", text = "Burn bosses to 50% quickly to trigger phase transitions.", type = "Call", id = "gui-VTTr8XKBYA" },
      { order = 15, role = "DPS", text = "If no s[Gluttony], avoid orbs — they apply stacking 5% damage reduction.", type = "Mechanic", id = "gui-AmPKUwkFC6Y" },
      { order = 16, role = "DPS", text = "Swap to s[Chains of Domination] immediately — free the rooted player.", type = "Call", id = "gui-WdGb5m5W2Ok" }
    }
  },

  ["So'azmi"] = {
    id = "enc-tazavesh-streets-tww-s3-soazmi",
    order = 7,
    header = "Boss: So'azmi",
    entries = {
      { order = 1, role = "ALL", text = "Use correct Relocator pair to cross s[Shuri] shockwave — touching it is lethal.", type = "Call", id = "gui-65ARYlHFHQ" },
      { order = 2, role = "ALL", text = "On s[Double Technique], reach boss fast and land 2 staggered interrupts.", type = "Call", id = "gui-cOduLCf5uUk" },
      { order = 3, role = "ALL", text = "At 70% and 40% HP, s[Force Walls] split room — plan teleporter path early.", type = "Call", id = "gui-7MkKBKeP2Iw" },
      { order = 4, role = "ALL", text = "If tethered by s[Lethal Force] (mini-boss before this fight), spread away to avoid contact.", type = "Call", id = "gui-CUKqvYzgc" },
      { order = 5, role = "ALL", text = "Check Relocator symbols at pull — know your safe lanes for later Shuri.", type = "Mechanic", id = "gui-rh71xACM5SU" },
      { order = 6, role = "ALL", text = "Don't panic-teleport; wrong destination can trap you or drop you into Shuri.", type = "Mechanic", id = "gui-ZFVi9DWJSuU" },
      { order = 7, role = "ALL", text = "Watch boss timer — move to safe zone before Shuri starts expanding.", type = "Position", id = "gui-akxfdONaM0" },
      { order = 8, role = "TANK", text = "Pop CDs for s[Phase Slash] — triple-target bleed plus melee hit.", type = "Mechanic", id = "gui-fPpeVvIrPNU" },
      { order = 9, role = "TANK", text = "Keep boss central for flexible teleporter access.", type = "Position", id = "gui-VOtaHWioSy4" },
      { order = 10, role = "TANK", text = "Drag boss to safe teleporter if s[Double Technique] is incoming.", type = "Call", id = "gui-mx8GQdcTGps" },
      { order = 11, role = "HEALER", text = "Top s[Phase Slash] bleed targets; overlap with Shuri is lethal.", type = "Call", id = "gui-2TV7HMy1os" },
      { order = 12, role = "HEALER", text = "Dispel s[Phase Slash] only if dangerous overlaps; save for key moments.", type = "Mechanic", id = "gui-akdxHlCmKOk" },
      { order = 13, role = "HEALER", text = "Be ready for LoS issues during s[Force Walls] — position to keep sightlines.", type = "Call", id = "gui-MT47Jkk73BM" },
      { order = 14, role = "DPS", text = "Interrupt s[Double Technique] with assigned order; don't double-kick early.", type = "Interrupt", id = "gui-pPcOeYs0fM" },
      { order = 15, role = "DPS", text = "Hold mobility for Shuri; don't burn blinks/dashes right before it spawns.", type = "Call", id = "gui-6jWfM9pcWIY" },
      { order = 16, role = "DPS", text = "Use defensives if late to safe zone or stuck between s[Force Walls].", type = "Mechanic", id = "gui-M7Y7JRWXE0" }
    }
  }
}
