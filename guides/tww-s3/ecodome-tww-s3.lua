DungeonGuide_Guides["dung-ecodome-tww-s3"] = {
  unitMapIDs = { 2449, 2371 },
  challengeMapID = {542},
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
      { order = 5, role = "ALL", text = "Major threats: n[Overgorged Mite] s[Engorge] stacks, n[Ravenous Destroyer] overlaps, n[Overcharged Sentinel] sub-50% chaos, n[Wastelander Pactspeaker] spirits, and soul mismanagement on final boss.", type = "Mechanic", id = "gui-voouynRUjYU" }
    }
  },

  ["Route"] = {
    id = "enc-ecodome-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", type = "Call", id = "gui-pxz81a", text = "We will start by turning left and hugging the wall to skip the opening patrols." },
      { order = 2, role = "ALL", type = "Call", id = "gui-xo82af", text = "We use Bloodlust on the big opener down the stairs. All cooldowns here." },
      { order = 3, role = "ALL", type = "Target", id = "gui-8nz21c", target = "Ravenous Destroyer", text = "We kill n[Ravenous Destroyer] first. Spread for s[Gluttonous Miasma] and dodge s[Volatile Ejection]." },
      { order = 4, role = "ALL", type = "Target", id = "gui-8mzq51", target = "Overgorged Mite", text = "Interrupt s[Engorge]. It stacks and explodes on death. Use 2 melee in rotation." },
      { order = 5, role = "ALL", type = "Call", id = "gui-o82m1x", text = "Next, we continue pulling upstairs into two more n[Ravenous Destroyer]s. Defensives here." },
      { order = 6, role = "ALL", type = "Call", id = "gui-z72m1n", text = "We will drag the two Scavengers into Boss-1 for funnel damage." },
      { order = 7, role = "ALL", type = "Jump", id = "gui-a2c31m", target = "Azhiccar", text = "Boss-1 - Azhiccar" },
      { order = 8, role = "ALL", type = "Call", id = "gui-p62cm2", text = "After boss, we pull carefully. Only one n[Overcharged Sentinel] at a time." },
      { order = 9, role = "ALL", type = "Target", id = "gui-92nc1a", target = "Overcharged Sentinel", text = "When shield breaks, they cast s[Unstable Core]. Kite from puddles." },
      { order = 10, role = "ALL", type = "Target", id = "gui-m2x7c1", target = "Wastelander Farstalker", text = "Kick s[Arcing Zap]. One ranged kick is enough." },
      { order = 11, role = "ALL", type = "Target", id = "gui-3c2pm1", target = "Wastelander Ritualist", text = "Use 2 melee to rotate kicks on s[Arcane Bolt]." },
      { order = 12, role = "ALL", type = "Call", id = "gui-8cma11", text = "We move uphill for another Sentinel with Ritualist and Farstalker. Same plan." },
      { order = 13, role = "ALL", type = "Call", id = "gui-3cm821", text = "Clear toward the arena, ending with Ritualist pack before Boss-2." },
      { order = 14, role = "ALL", type = "Jump", id = "gui-2mcz18", target = "Taah'bat", text = "Boss-2 - Taah'bat and A'wazj" },
      { order = 15, role = "ALL", type = "Call", id = "gui-8xc2ma", text = "Leaving boss, we hug the right cliff to skip the first n[Wastelander Pactspeaker]. Stay tight." },
      { order = 16, role = "ALL", type = "Target", id = "gui-2mxac2", target = "Wastelander Pactspeaker", text = "Kick s[Arcane Bolt]. Swap fast to the spawned spirit from s[Consume Spirit]." },
      { order = 17, role = "ALL", type = "Target", id = "gui-7acm29", target = "Wastes Creeper", text = "Tank beware: s[Gloom Bite] is a heavy hit with healing absorb." },
      { order = 18, role = "ALL", type = "Call", id = "gui-mc928a", text = "We use manageable pulls for count, mixing in Phaseblades and Ruinstalkers." },
      { order = 19, role = "ALL", type = "Call", id = "gui-x21ma9", text = "We finish count on smaller packs before the final boss." },
      { order = 20, role = "ALL", type = "Call", id = "gui-pm19x2", text = "Use Arcane Siphons near the path for a haste and speed buff if they are on route." },
      { order = 21, role = "ALL", type = "Jump", id = "gui-z7ma28", target = "Soul-Scribe", text = "Boss-3 - Soul-Scribe" }
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
