DungeonGuide_Guides["dung-ecodome-tww-s3"] = {
  name = "Eco-Dome Al'dani",
  id = "dung-ecodome-tww-s3",
  season = "TWW-S3",
  guideType = "M+",
  
  ["Eco-Dome Al'dani"] = {
    id = "enc-ecodome-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "Ecodome Al'dani contains aberrations, ethereals, and desert beasts across 3 zones: toxic lab, arcane hall, and outdoor ruin.", type = "Mechanic", id = "gui-avRSQKsksw" },
      { order = 2, role = "ALL", text = "Linear layout with mix of cleave, control, and high movement. Ends in a complex soul mechanic boss.", type = "Mechanic", id = "gui-KKVeRzlhHU" },
      { order = 3, role = "ALL", text = "Open with Bloodlust — big pulls. Key lieutenants include n[Overcharged Sentinel] and n[Pack Speaker].", type = "Mechanic", id = "gui-C1pb0sDPjoM" },
      { order = 4, role = "ALL", text = "Arcane Siphons give 30s haste/speed buff. Use before pulls — cannot activate in combat.", type = "Mechanic", id = "gui-kRKtfNUr6g" },
      { order = 5, role = "ALL", text = "Major threats: stacking DoTs, add swarms, energy intermissions, soul pickup hazards. Awareness > raw DPS.", type = "Mechanic", id = "gui-tv6tKCz1Lh8" }
    }
  },

  ["Route"] = {
    id = "enc-ecodome-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are starting with a big pull down the stairway — use Bloodlust and all cooldowns. Focus interrupts on n[Overgorged Mite] to prevent s[Engorge] stacks.", type = "Call", id = "gui-UgESzXfS3W4" },
      { order = 2, role = "ALL", text = "Next we'll cleave down n[Invading Mite] and n[Voracious Gorger] packs — watch for s[Gorging Smash] swirlies and spread loosely during splash damage.", type = "Call", id = "gui-50ELj3FWY" },
      { order = 3, role = "ALL", text = "After clearing the first hall, we'll move into n[Ravenous Destroyer] territory. Interrupt s[Gluttonous Miasma] and dodge s[Volatile Ejection] lines.", type = "Call", id = "gui-FUhilTCOAo" },
      { order = 4, role = "ALL", text = "Move up the ramp and into the boss room for n[Azakar]. Tanks stay in melee range or risk s[Thrash] group wipes.", type = "Jump", id = "gui-V2DcniHDs", target = "Azakar" },
      { order = 5, role = "ALL", text = "After n[Azakar], we turn left into the Ethereal zone. Pull only 1 n[Overcharged Sentinel] at a time. Focus break the shield and move out of s[Shattered Core] puddles.", type = "Call", id = "gui-6GbMVeR2fM" },
      { order = 6, role = "ALL", text = "Clear the path up to n[Taah'bat and A'wazj] — interrupt n[Farstalker] casts and avoid frontal beams from n[Runestalker].", type = "Call", id = "gui-9CtK17JaQ0" },
      { order = 7, role = "ALL", text = "Engage n[Taah'bat and A'wazj]. We'll rotate Warp Strikes through n[Taah'bat] and stack both bosses during burn windows.", type = "Jump", id = "gui-Yyaojnn8Hx0", target = "Taah'bat" },
      { order = 8, role = "ALL", text = "Outdoor zone next — skip n[Burrowing Creeper] patrols if possible. Focus kill n[Wastelander Pack Speaker] spirits and purge n[Caresh Elemental] shields.", type = "Call", id = "gui-pGd8UdmKUEo" },
      { order = 9, role = "ALL", text = "Before final boss, activate nearby Arcane Siphons for a haste/speed buff. Prepare healing cooldowns for n[Soul-Scribe] phase transitions.", type = "Call", id = "gui-8tpcUdUjJUo" },
      { order = 10, role = "ALL", text = "Final boss: n[Soul-Scribe]. Manage soul fragments to avoid s[Wounded Fate] and maximise s[Fatebound] uptime.", type = "Jump", id = "gui-geKxZUbTRIo", target = "Soul-Scribe" }
    }
  },

  ["Azakar"] = {
    id = "enc-ecodome-tww-s3-azakar",
    order = 3,
    header = "Boss: Azakar",
    entries = {
      { order = 1, role = "ALL", text = "Stack loosely near Azakar to efficiently cleave down Frenzied Mites after s[Invading Shriek].", type = "Mechanic", id = "gui-DHnh4PVRmY" },
      { order = 2, role = "ALL", text = "Drop s[Toxic Regurgitation] puddles at edge or mite spawn points to minimise space loss and slow adds.", type = "Mechanic", id = "gui-6Ys8HdjtII" },
      { order = 3, role = "ALL", text = "During s[Devour], avoid the death zone and keep distance from n[Frenzied Mite] paths to avoid reabsorption.", type = "Mechanic", id = "gui-uylveE1M05U" },
      { order = 4, role = "ALL", text = "Use AoE CC and slows to control n[Frenzied Mite] during Devour. Adds must die before reabsorption.", type = "Call", id = "gui-lkliHZNNJjg" },
      { order = 5, role = "ALL", text = "Stay alert for add spawn timings - use stuns/knockbacks to protect the group during pull phases.", type = "Call", id = "gui-8MHrabmz530" },
      { order = 6, role = "TANK", text = "Remain in melee range at all times to prevent s[Thrash], which causes massive party-wide damage.", type = "Mechanic", id = "gui-1Ad6vHchoPo" },
      { order = 7, role = "TANK", text = "Pre-position Azakar away from mite spawn locations before s[Devour] to give room for kiting.", type = "Position", id = "gui-ABa0l8oVYI" },
      { order = 8, role = "TANK", text = "Pop defensives when kiting or repositioning during s[Devour] to handle spike damage.", type = "Call", id = "gui-k8MqboGBUsY" },
      { order = 9, role = "TANK", text = "Face boss away from puddle areas to keep melee uptime and avoid unnecessary clutter.", type = "Position", id = "gui-mvoBsIf86A" },
      { order = 10, role = "HEALER", text = "Use healing cooldowns during s[Devour] - group-wide damage spikes from adds and boss pull.", type = "Call", id = "gui-w3AL1dO2xT8" },
      { order = 11, role = "HEALER", text = "Prioritise players hit by s[Toxic Regurgitation] or near multiple puddles for spot healing.", type = "Mechanic", id = "gui-UW6sxbNQvw" },
      { order = 12, role = "HEALER", text = "Prepare AoE healing after s[Invading Shriek] - Mites will leap and deal splash damage.", type = "Call", id = "gui-ToDVkyEvVQ" },
      { order = 13, role = "HEALER", text = "Help mitigate panic overlap during add spawns by topping off low HP players early.", type = "Call", id = "gui-ycCrZxPoBN4" },
      { order = 14, role = "DPS", text = "Use AoE cooldowns after s[Invading Shriek] to burn down n[Frenzied Mite] quickly.", type = "Call", id = "gui-nrpFOuF5KTU" },
      { order = 15, role = "DPS", text = "Interrupt add casts when possible and rotate stuns to keep spawn waves under control.", type = "Mechanic", id = "gui-9b7KfTArD8" },
      { order = 16, role = "DPS", text = "Save burst cooldowns for end of s[Devour] - mites must be killed before boss reabsorbs.", type = "Call", id = "gui-1HqpZ16zo" },
      { order = 17, role = "DPS", text = "Use soft CC and displacement to keep mites stalled near edge of arena.", type = "Mechanic", id = "gui-cD11Avt9s7E" }
    }
  },

  ["Taah'bat"] = {
    id = "enc-ecodome-tww-s3-taahbat-awazj",
    order = 4,
    header = "Boss: Taah'bat and A'wazj",
    entries = {
      { order = 1, role = "ALL", text = "During s[Binding Javelin], stack javelins in a Venn diagram near n[A'wazj] for efficient cleave and spear break.", type = "Call", id = "gui-FDALS9xFuE" },
      { order = 2, role = "ALL", text = "Avoid standing in line of s[Warp Strike] if you're not the target - splash damage and DoT can be lethal.", type = "Mechanic", id = "gui-28Oh9xgVlQ" },
      { order = 3, role = "ALL", text = "In intermission, aim s[Warp Strike] through n[Taah'bat] to remove Incorporeal stacks and break his immunity.", type = "Mechanic", id = "gui-BKSZYt7lfRo" },
      { order = 4, role = "ALL", text = "Once bosses are stunned post-phase, use all cooldowns - they share HP and can be burned together.", type = "Call", id = "gui-hb91CeHP4JY" },
      { order = 5, role = "TANK", text = "Use defensives for s[Rift Claws] - heavy arcane hit plus 8s bleed requires active mitigation.", type = "Mechanic", id = "gui-sPL6rFVSQ3k" },
      { order = 6, role = "TANK", text = "Position n[A'wazj] so javelins are cleaved and not placed in the path of s[Warp Strike] lines.", type = "Position", id = "gui-axLy7sIMy8" },
      { order = 7, role = "TANK", text = "During intermission, maintain boss threat and shift positioning to support line aim through n[Taah'bat].", type = "Call", id = "gui-zbJfbWBCb0" },
      { order = 8, role = "TANK", text = "Communicate with tethered players to line up javelin locations and optimise melee uptime.", type = "Call", id = "gui-xBqTMkMwfo" },
      { order = 9, role = "HEALER", text = "Use cooldowns during intermission - high AoE damage and s[Warp Strike] DoTs will ramp quickly.", type = "Call", id = "gui-dAWQkX6VO0" },
      { order = 10, role = "HEALER", text = "Top off tethered players affected by s[Binding Javelin] - they pulse AoE and suffer movement slow.", type = "Mechanic", id = "gui-hM6YSkXTfo" },
      { order = 11, role = "HEALER", text = "Dispel bleed from s[Rift Claws] if possible, especially before a burst AoE overlap.", type = "Mechanic", id = "gui-YaEHJkGzuI" },
      { order = 12, role = "HEALER", text = "Stagger healing during phase transitions - damage spikes when n[Taah'bat] becomes active.", type = "Call", id = "gui-4XtGrBVH6g" },
      { order = 13, role = "DPS", text = "Line up s[Warp Strike] through n[Taah'bat] - call target order and avoid overlapping paths.", type = "Call", id = "gui-tehbt2v40" },
      { order = 14, role = "DPS", text = "Break javelins fast when tethered - you take increasing damage over time.", type = "Mechanic", id = "gui-hqTlyRZnxnM" },
      { order = 15, role = "DPS", text = "Hold cooldowns for burn phase after shield break - n[A'wazj] and n[Taah'bat] are stunned together.", type = "Call", id = "gui-zVL3MaGiY" },
      { order = 16, role = "DPS", text = "Avoid placing javelins far from boss or in corners - maintain cleave and movement efficiency.", type = "Position", id = "gui-nUw56ut8XwU" }
    }
  },

  ["Soul-Scribe"] = {
    id = "enc-ecodome-tww-s3-soulscribe",
    order = 5,
    header = "Boss: Soul-Scribe",
    entries = {
      { order = 1, role = "ALL", text = "Collect your soul fragment after s[Whispers of Fate] to gain Fatebound. Delay causes Wounded Fate and heavy DoT.", type = "Mechanic", id = "gui-iu4NovK1U8" },
      { order = 2, role = "ALL", text = "Spread out for s[Dread of the Unknown] to avoid overlapping detonation circles and damaging allies.", type = "Mechanic", id = "gui-58oN9x7ifg" },
      { order = 3, role = "ALL", text = "Identify your soul fragment using the arrow indicator and intercept it before boss abilities destroy it.", type = "Call", id = "gui-ytQH3d6en0" },
      { order = 4, role = "ALL", text = "During s[Eternal Weave], grab one soul at a time while dodging the rotating cone cleaves.", type = "Mechanic", id = "gui-wMtvkGsEwlE" },
      { order = 5, role = "ALL", text = "Keep mobile and rotate pickups to extend Fatebound uptime without risking soul destruction.", type = "Call", id = "gui-Rv8FJHAX8o" },
      { order = 6, role = "TANK", text = "Position boss consistently to help group orient during cone sweeps from s[Eternal Weave].", type = "Position", id = "gui-Py6zUl4rdZU" },
      { order = 7, role = "TANK", text = "Hold threat while players spread and dodge - avoid dragging boss through active soul zones.", type = "Call", id = "gui-qrhtUneJ9A8" },
      { order = 8, role = "TANK", text = "Use defensives when healing is strained during soul overlap or Wounded Fate stacks.", type = "Call", id = "gui-qPO8d1MbO14" },
      { order = 9, role = "HEALER", text = "Track who fails to collect their soul - top them quickly to counter Wounded Fate DoT.", type = "Mechanic", id = "gui-elbTcIXL14" },
      { order = 10, role = "HEALER", text = "Pre-cast AoE heals after s[Whispers of Fate] - party takes damage and begins to scatter.", type = "Call", id = "gui-hPBRz5Yvg9M" },
      { order = 11, role = "HEALER", text = "Ramp healing during s[Eternal Weave] - overlapping cone cleaves and lost souls spike incoming damage.", type = "Call", id = "gui-YGMZJcgWFlo" },
      { order = 12, role = "HEALER", text = "Use externals on players collecting soul fragments near boss casts or danger zones.", type = "Call", id = "gui-NDmBWVMjNhk" },
      { order = 13, role = "DPS", text = "Time soul pickups to maximise Fatebound uptime - stagger collection during s[Eternal Weave].", type = "Call", id = "gui-U16GwF9jnIU" },
      { order = 14, role = "DPS", text = "Avoid picking up souls mid-cone or just before s[Ceremonial Dagger] finishes - risky timing.", type = "Mechanic", id = "gui-KHrKPRyi0E" },
      { order = 15, role = "DPS", text = "Keep an eye on other players' soul locations - call out if someone misses or overlaps.", type = "Call", id = "gui-mi1q5UhaIbc" },
      { order = 16, role = "DPS", text = "Prioritise movement planning - missed soul pickups are a DPS loss and risk group wipe.", type = "Mechanic", id = "gui-2trQlK48D3U" }
    }
  }
}
