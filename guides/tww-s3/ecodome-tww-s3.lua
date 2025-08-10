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
      { order = 1, role = "ALL", text = "31-minute timer. Expect big opener pulls with Bloodlust and heavy rot damage spikes.", type = "Mechanic", id = "gui-cs1pkozuPs" },
      { order = 2, role = "ALL", text = "Ecodome Al'dani contains aberrations, ethereals, and desert beasts across 3 zones: toxic lab, arcane hall, and outdoor ruin.", type = "Mechanic", id = "gui-rJzthcbRStU" },
      { order = 3, role = "ALL", text = "Linear layout with mix of cleave, control, and high movement. Ends in a complex soul mechanic boss.", type = "Mechanic", id = "gui-MhLNgiWMX3M" },
      { order = 4, role = "ALL", text = "Arcane Siphons grant 30s haste/speed if used out of combat; plan pulls around nearby Siphons.", type = "Mechanic", id = "gui-3uZRYMF24vc" },
      { order = 5, role = "ALL", text = "Major threats: n[Overgorged Mite] s[Engorge] stacks, n[Ravenous Destroyer] overlaps, n[Overcharged Sentinel] sub-50% chaos, n[Pack Speaker] spirits, and soul mismanagement on final boss.", type = "Mechanic", id = "gui-voouynRUjYU" }
    }
  },

  ["Route"] = {
    id = "enc-ecodome-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are starting with a big pull down the stairway - use Bloodlust and all cooldowns. Focus interrupts on n[Overgorged Mite] to prevent s[Engorge] stacks.", type = "Call", id = "gui-AcmH4M70vo" },
      { order = 2, role = "ALL", text = "Next we'll cleave down n[Invading Mite] and n[Voracious Gorger] packs - watch for s[Gorging Smash] swirlies and spread loosely during splash damage.", type = "Call", id = "gui-TrS0BT9rG0" },
      { order = 3, role = "ALL", text = "After clearing the first hall, we'll move into n[Ravenous Destroyer] territory. Interrupt s[Gluttonous Miasma] and dodge s[Volatile Ejection] lines - targets stand still.", type = "Call", id = "gui-oTG0MocXCTo" },
      { order = 4, role = "ALL", text = "Move up the ramp and into the boss room for n[Azakar]. Tanks stay in melee range or risk s[Thrash] group wipes.", type = "Jump", id = "gui-xmunDY0fmo", target = "Azakar" },
      { order = 5, role = "ALL", text = "After n[Azakar], turn left into the Ethereal zone. Pull only 1 n[Overcharged Sentinel] at a time. Break shield, then kite during s[Shattered Core] puddles.", type = "Call", id = "gui-caQ6LKAdAj8" },
      { order = 6, role = "ALL", text = "Kick n[Wastelander Farstalker] s[Arcing Zap]; dispel s[Arcing Energy] from n[Ritualist]; sidestep n[Runestalker] s[Warp].", type = "Call", id = "gui-8rCBVW71VuA" },
      { order = 7, role = "ALL", text = "Engage n[Taah'bat and A'wazj]. We'll line s[Warp Strike] through n[Taah'bat] and stack bosses during the stun window.", type = "Jump", id = "gui-2sfxgvX9QAQ", target = "Taah'bat" },
      { order = 8, role = "ALL", text = "Outdoor zone next - skip n[Burrowing Creeper] patrols if possible. Kill n[Wastelander Pack Speaker] spirits and purge n[Caresh Elemental] s[Embrace of Caresh].", type = "Call", id = "gui-SDvtO9kUsw" },
      { order = 9, role = "ALL", text = "Before final boss, hit nearby Arcane Siphons for a haste/speed buff. Prep healing CDs for s[Whispers of Fate] into s[Ceremonial Dagger].", type = "Call", id = "gui-2EPfdKmkbhk" },
      { order = 10, role = "ALL", text = "Final boss: n[Soul-Scribe]. We collect our souls fast to avoid s[Wounded Fate] and rotate pickups during s[Eternal Weave].", type = "Jump", id = "gui-CIDYdl6Wv2c", target = "Soul-Scribe" }
    }
  },

  ["Azakar"] = {
    id = "enc-ecodome-tww-s3-azakar",
    order = 3,
    header = "Boss: Azakar",
    entries = {
      { order = 1, role = "ALL", text = "We stack loosely near boss, kill n[Frenzied Mite] on spawn, and keep slows/stuns ready for s[Devour] add waves.", type = "Call", id = "gui-QRbq9jTseI" },
      { order = 2, role = "ALL", text = "Drop s[Toxic Regurgitation] at edges or add spawns; do not path puddles through melee.", type = "Call", id = "gui-7fprRP4Qdc0" },
      { order = 3, role = "ALL", text = "Stack loosely near Azakar to efficiently cleave down Frenzied Mites after s[Invading Shriek].", type = "Mechanic", id = "gui-6RVsguhsyZs" },
      { order = 4, role = "ALL", text = "Place s[Toxic Regurgitation] puddles at edge or mite spawn points to slow adds and save space.", type = "Mechanic", id = "gui-m262kJ89gjc" },
      { order = 5, role = "ALL", text = "During s[Devour], avoid the inner zone and keep n[Frenzied Mite] from reaching boss or he gains a massive buff.", type = "Mechanic", id = "gui-j2YRKW0sg0Q" },
      { order = 6, role = "ALL", text = "Use AoE CC and slows to control n[Frenzied Mite] during Devour. Adds must die before reabsorption.", type = "Call", id = "gui-hZoDbA5vNYY" },
      { order = 7, role = "ALL", text = "Track add spawns - rotate stuns/knockbacks to protect group during pull phases.", type = "Call", id = "gui-mxZlireTyg" },
      { order = 8, role = "TANK", text = "Stay in melee 100% of the time to prevent s[Thrash] party wipes.", type = "Mechanic", id = "gui-VnjQdIxVeXc" },
      { order = 9, role = "TANK", text = "Pre-position away from spawn points before s[Devour] to give kite space.", type = "Position", id = "gui-c1jhMmnY24" },
      { order = 10, role = "TANK", text = "Use personals when kiting or during overlaps of s[Invading Shriek] + adds.", type = "Call", id = "gui-SfZPRLsAlDk" },
      { order = 11, role = "TANK", text = "Face boss so melee do not stand through puddles; maintain clean hitbox.", type = "Position", id = "gui-PPT7j7DG9ps" },
      { order = 12, role = "HEALER", text = "Plan CDs for s[Devour] - constant pull + add damage. Top s[Toxic Regurgitation] targets early.", type = "Call", id = "gui-OpqDNLnijNc" },
      { order = 13, role = "HEALER", text = "Spot heal players near multiple puddles or under add focus.", type = "Mechanic", id = "gui-mSdJG2KZs8" },
      { order = 14, role = "HEALER", text = "After s[Invading Shriek], prep AoE heals for mite leaps.", type = "Call", id = "gui-ard7quXrRxw" },
      { order = 15, role = "DPS", text = "Save AoE for post s[Invading Shriek] spawns and for s[Devour] waves.", type = "Call", id = "gui-j1qLZIXRw" },
      { order = 16, role = "DPS", text = "Kick add casts where applicable and rotate stuns; keep mites slowed at edges.", type = "Mechanic", id = "gui-PLP2zKucLZk" },
      { order = 17, role = "DPS", text = "Do not pad - kill mites before boss consumes them after s[Devour].", type = "Call", id = "gui-ocjr37bKyrk" }
    }
  },

  ["Taah'bat"] = {
    id = "enc-ecodome-tww-s3-taahbat-awazj",
    order = 4,
    header = "Boss: Taah'bat and A'wazj",
    entries = {
      { order = 1, role = "ALL", text = "Intermission: aim s[Warp Strike] through n[Taah'bat] 6 times - then burn both stunned bosses.", type = "Call", id = "gui-Hmd0mpnRnA" },
      { order = 2, role = "ALL", text = "Stack s[Binding Javelin] near boss for cleave; non-targets keep clear of 8y pulses.", type = "Mechanic", id = "gui-GvVcrTJZT3g" },
      { order = 3, role = "ALL", text = "Avoid line of s[Warp Strike] if not targeted; tethered players use personals.", type = "Mechanic", id = "gui-FLFIWIDiaxc" },
      { order = 4, role = "ALL", text = "During stun window, use all damage - bosses share HP.", type = "Call", id = "gui-ElwNwUiERzc" },
      { order = 5, role = "TANK", text = "Mitigate s[Rift Claws] - arcane hit + 8s bleed. Cleanse bleed if available.", type = "Mechanic", id = "gui-WMQjErAbRo" },
      { order = 6, role = "TANK", text = "Park n[A'wazj] so javelins sit in cleave and not in s[Warp Strike] lanes.", type = "Position", id = "gui-noOkmyYRF8" },
      { order = 7, role = "TANK", text = "During intermission, keep threat and shift to help lines pass through n[Taah'bat].", type = "Call", id = "gui-0ycEVUV7jEo" },
      { order = 8, role = "HEALER", text = "Plan CDs for intermission - pulsing AoE + s[Warp Strike] DoTs ramp.", type = "Call", id = "gui-BwVSYr2gtXk" },
      { order = 9, role = "HEALER", text = "Top and dispel tethered players from s[Binding Javelin] quickly.", type = "Mechanic", id = "gui-KF29MkBgQ" },
      { order = 10, role = "HEALER", text = "Pre-HoT tethered players - they pulse AoE and are slowed; consider externals if s[Warp Strike] overlaps.", type = "Call", id = "gui-yq4rnGywsCI" },
      { order = 11, role = "DPS", text = "Call order for s[Warp Strike] aims; avoid overlapping paths.", type = "Call", id = "gui-aSVhhR8j85s" },
      { order = 12, role = "DPS", text = "Hard swap to javelins; ramping damage on tethered players.", type = "Mechanic", id = "gui-8pagRLBFh08" },
      { order = 13, role = "DPS", text = "Hold cooldowns for 15s stun after shield break.", type = "Call", id = "gui-h72haPj4Gbk" }
    }
  },

  ["Soul-Scribe"] = {
    id = "enc-ecodome-tww-s3-soulscribe",
    order = 5,
    header = "Boss: Soul-Scribe",
    entries = {
      { order = 1, role = "ALL", text = "On s[Whispers of Fate], grab your soul fast for s[Fatebound]. If your soul is hit, you get s[Wounded Fate] (-haste + DoT).", type = "Call", id = "gui-pU8zj8N97s" },
      { order = 2, role = "ALL", text = "During s[Eternal Weave], stagger pickups and dodge rotating cones - never let cones hit souls.", type = "Call", id = "gui-UVoeDjLycE4" },
      { order = 3, role = "ALL", text = "Collect your soul fragment after s[Whispers of Fate] to gain Fatebound. Delay causes Wounded Fate and heavy DoT.", type = "Mechanic", id = "gui-mSGCIQXxTGk" },
      { order = 4, role = "ALL", text = "Spread for s[Dread of the Unknown] to avoid overlapping circles while securing souls.", type = "Mechanic", id = "gui-j2PP1POtbE" },
      { order = 5, role = "ALL", text = "Use the arrow indicator to find your soul; intercept it before boss abilities destroy it.", type = "Call", id = "gui-8zu0QfmOnVo" },
      { order = 6, role = "ALL", text = "During s[Eternal Weave], take one soul at a time while dodging cone sweeps.", type = "Mechanic", id = "gui-7cbqkMKj6DI" },
      { order = 7, role = "ALL", text = "Keep mobile and rotate pickups to extend s[Fatebound] uptime safely.", type = "Call", id = "gui-LdHnp4ChQWk" },
      { order = 8, role = "TANK", text = "Hold boss steady to help orientation during cone sweeps; avoid dragging through active soul zones.", type = "Position", id = "gui-9Qr04ZelU" },
      { order = 9, role = "TANK", text = "Use defensives when multiple players have s[Wounded Fate] or during heavy overlaps.", type = "Call", id = "gui-Kz1dqPeHXyI" },
      { order = 10, role = "HEALER", text = "Track late pickups - top s[Wounded Fate] targets quickly.", type = "Mechanic", id = "gui-OkMy1qAn4k" },
      { order = 11, role = "HEALER", text = "Pre-cast AoE after s[Whispers of Fate]; party scatters to souls.", type = "Call", id = "gui-yght3CJUqA" },
      { order = 12, role = "HEALER", text = "Ramp during s[Eternal Weave] - cone dodges + missed souls spike damage.", type = "Call", id = "gui-95hV5fkKZBQ" },
      { order = 13, role = "HEALER", text = "Use externals on risky soul pickups near cones or daggers.", type = "Call", id = "gui-VjqL4vdGoOg" },
      { order = 14, role = "DPS", text = "Time pickups to keep s[Fatebound] uptime; do not grab souls mid-cone.", type = "Call", id = "gui-F9dOT9iFGE" },
      { order = 15, role = "DPS", text = "Avoid pickups just before s[Ceremonial Dagger] finishes; reposition first.", type = "Mechanic", id = "gui-UQXyXP3pY8" },
      { order = 16, role = "DPS", text = "Call out missed souls; help mark safe paths through cones.", type = "Call", id = "gui-7IxRuRnbelg" }
    }
  }
}
