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
      { order = 1, role = "ALL", text = "31-minute timer. Expect big opener pulls with Bloodlust and heavy rot damage spikes.", type = "Mechanic", id = "gui-C1e6MtRIdNs" },
      { order = 2, role = "ALL", text = "Ecodome Al'dani contains aberrations, ethereals, and desert beasts across 3 zones: toxic lab, arcane hall, and outdoor ruin.", type = "Mechanic", id = "gui-06HsQGheEWo" },
      { order = 3, role = "ALL", text = "Linear layout with mix of cleave, control, and high movement. Ends in a complex soul mechanic boss.", type = "Mechanic", id = "gui-loVtmojtBMk" },
      { order = 4, role = "ALL", text = "Arcane Siphons grant 30s haste/speed if used out of combat; plan pulls around nearby Siphons.", type = "Mechanic", id = "gui-erQtbk9hBcA" },
      { order = 5, role = "ALL", text = "Major threats: n[Overgorged Mite] s[Engorge] stacks, n[Ravenous Destroyer] overlaps, n[Overcharged Sentinel] sub-50% chaos, n[Wastelander Pactspeaker] spirits, and soul mismanagement on final boss.", type = "Mechanic", id = "gui-rh15gywk7Pg" }
    }
  },

  ["Route"] = {
    id = "enc-ecodome-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", type = "Call", id = "gui-mbYmlw2ggv8", text = "We will start by turning left and hugging the wall to skip the opening patrols." },
      { order = 2, role = "ALL", type = "Call", id = "gui-0zAeKIvI9tg", text = "We use Bloodlust on the big opener down the stairs. All cooldowns here." },
      { order = 3, role = "ALL", type = "Target", id = "gui-JwB8CIZ8q5U", target = "Ravenous Destroyer", text = "We kill n[Ravenous Destroyer] first. Spread for s[Gluttonous Miasma] and dodge s[Volatile Ejection]." },
      { order = 4, role = "ALL", type = "Target", id = "gui-aM6YMVngWyc", target = "Overgorged Mite", text = "Interrupt s[Engorge]. It stacks and explodes on death. Use 2 melee in rotation." },
      { order = 5, role = "ALL", type = "Call", id = "gui-6tDOgGq7oeA", text = "Next, we continue pulling upstairs into two more n[Ravenous Destroyer]s. Defensives here." },
      { order = 6, role = "ALL", type = "Call", id = "gui-9qmyqVzdeo", text = "We will drag the two Scavengers into Boss-1 for funnel damage." },
      { order = 7, role = "ALL", type = "Jump", id = "gui-t5lhbGuqjGs", target = "Azhiccar", text = "Boss-1 - Azhiccar" },
      { order = 8, role = "ALL", type = "Call", id = "gui-0xYiVhvgGO4", text = "After boss, we pull carefully. Only one n[Overcharged Sentinel] at a time." },
      { order = 9, role = "ALL", type = "Target", id = "gui-KFk5oA5KJg", target = "Overcharged Sentinel", text = "When shield breaks, they cast s[Unstable Core]. Kite from puddles." },
      { order = 10, role = "ALL", type = "Target", id = "gui-FcvnFSe5d8A", target = "Wastelander Farstalker", text = "Kick s[Arcing Zap]. One ranged kick is enough." },
      { order = 11, role = "ALL", type = "Target", id = "gui-8GuiK3ysmrU", target = "Wastelander Ritualist", text = "Use 2 melee to rotate kicks on s[Arcane Bolt]." },
      { order = 12, role = "ALL", type = "Call", id = "gui-rHfrJcXQjg", text = "We move uphill for another Sentinel with Ritualist and Farstalker. Same plan." },
      { order = 13, role = "ALL", type = "Call", id = "gui-pSBwi6GNyJQ", text = "Clear toward the arena, ending with Ritualist pack before Boss-2." },
      { order = 14, role = "ALL", type = "Jump", id = "gui-l0NXiv54wI", target = "Taah'bat", text = "Boss-2 - Taah'bat and A'wazj" },
      { order = 15, role = "ALL", type = "Call", id = "gui-4TatvLnQw", text = "Leaving boss, we hug the right cliff to skip the first n[Wastelander Pactspeaker]. Stay tight." },
      { order = 16, role = "ALL", type = "Target", id = "gui-lhGVlDqQTsE", target = "Wastelander Pactspeaker", text = "Kick s[Arcane Bolt]. Swap fast to the spawned spirit from s[Consume Spirit]." },
      { order = 17, role = "ALL", type = "Target", id = "gui-picG5TYE3vw", target = "Wastes Creeper", text = "Tank beware: s[Gloom Bite] is a heavy hit with healing absorb." },
      { order = 18, role = "ALL", type = "Call", id = "gui-jrhUVyNxE", text = "We use manageable pulls for count, mixing in Phaseblades and Ruinstalkers." },
      { order = 19, role = "ALL", type = "Call", id = "gui-z2lwb2eWzRs", text = "We finish count on smaller packs before the final boss." },
      { order = 20, role = "ALL", type = "Call", id = "gui-oVkkRtYiGE", text = "Use Arcane Siphons near the path for a haste and speed buff if they are on route." },
      { order = 21, role = "ALL", type = "Jump", id = "gui-HBT0Pn6E0", target = "Soul-Scribe", text = "Boss-3 - Soul-Scribe" }
    }
  },

  ["Azakar"] = {
    id = "enc-ecodome-tww-s3-azakar",
    order = 3,
    header = "Boss: Azakar",
    entries = {
      { order = 1, role = "ALL", text = "We stack loosely near boss, kill n[Frenzied Mite] on spawn, and keep slows/stuns ready for s[Devour] add waves.", type = "Call", id = "gui-Z2OHWXoPWFQ" },
      { order = 2, role = "ALL", text = "Drop s[Toxic Regurgitation] at edges or add spawns; do not path puddles through melee.", type = "Call", id = "gui-4QaHSwNNM" },
      { order = 3, role = "ALL", text = "Stack loosely near Azakar to efficiently cleave down Frenzied Mites after s[Invading Shriek].", type = "Mechanic", id = "gui-sTRxLiWQbf0" },
      { order = 4, role = "ALL", text = "Place s[Toxic Regurgitation] puddles at edge or mite spawn points to slow adds and save space.", type = "Mechanic", id = "gui-qp7OYVGeY4" },
      { order = 5, role = "ALL", text = "During s[Devour], avoid the inner zone and keep n[Frenzied Mite] from reaching boss or he gains a massive buff.", type = "Mechanic", id = "gui-6xt1bPNj9w" },
      { order = 6, role = "ALL", text = "Use AoE CC and slows to control n[Frenzied Mite] during Devour. Adds must die before reabsorption.", type = "Call", id = "gui-7RXzDNK5v9M" },
      { order = 7, role = "ALL", text = "Track add spawns - rotate stuns/knockbacks to protect group during pull phases.", type = "Call", id = "gui-mD8gwpnmZDs" },
      { order = 8, role = "TANK", text = "Stay in melee 100% of the time to prevent s[Thrash] party wipes.", type = "Mechanic", id = "gui-eb1bNCcvbA" },
      { order = 9, role = "TANK", text = "Pre-position away from spawn points before s[Devour] to give kite space.", type = "Position", id = "gui-tXVA6LMvjrY" },
      { order = 10, role = "TANK", text = "Use personals when kiting or during overlaps of s[Invading Shriek] + adds.", type = "Call", id = "gui-At6JZ7YPX8Q" },
      { order = 11, role = "TANK", text = "Face boss so melee do not stand through puddles; maintain clean hitbox.", type = "Position", id = "gui-iXtsPt6Xk9g" },
      { order = 12, role = "HEALER", text = "Plan CDs for s[Devour] - constant pull + add damage. Top s[Toxic Regurgitation] targets early.", type = "Call", id = "gui-ftophHLYJ0Q" },
      { order = 13, role = "HEALER", text = "Spot heal players near multiple puddles or under add focus.", type = "Mechanic", id = "gui-312Fve6kKO4" },
      { order = 14, role = "HEALER", text = "After s[Invading Shriek], prep AoE heals for mite leaps.", type = "Call", id = "gui-58UKFzuA6kw" },
      { order = 15, role = "DPS", text = "Save AoE for post s[Invading Shriek] spawns and for s[Devour] waves.", type = "Call", id = "gui-L1rz5whvp0" },
      { order = 16, role = "DPS", text = "Kick add casts where applicable and rotate stuns; keep mites slowed at edges.", type = "Mechanic", id = "gui-6lwuDkih9qg" },
      { order = 17, role = "DPS", text = "Do not pad - kill mites before boss consumes them after s[Devour].", type = "Call", id = "gui-aVBYCv93snw" }
    }
  },

  ["Taah'bat"] = {
    id = "enc-ecodome-tww-s3-taahbat-awazj",
    order = 4,
    header = "Boss: Taah'bat and A'wazj",
    entries = {
      { order = 1, role = "ALL", text = "Intermission: aim s[Warp Strike] through n[Taah'bat] 6 times - then burn both stunned bosses.", type = "Call", id = "gui-XDJ019gFpiE" },
      { order = 2, role = "ALL", text = "Stack s[Binding Javelin] near boss for cleave; non-targets keep clear of 8y pulses.", type = "Mechanic", id = "gui-n1oQWAJ3aaE" },
      { order = 3, role = "ALL", text = "Avoid line of s[Warp Strike] if not targeted; tethered players use personals.", type = "Mechanic", id = "gui-RCNQ9aGwTb8" },
      { order = 4, role = "ALL", text = "During stun window, use all damage - bosses share HP.", type = "Call", id = "gui-KIQhEueajDQ" },
      { order = 5, role = "TANK", text = "Mitigate s[Rift Claws] - arcane hit + 8s bleed. Cleanse bleed if available.", type = "Mechanic", id = "gui-9bPM5AxeLk" },
      { order = 6, role = "TANK", text = "Park n[A'wazj] so javelins sit in cleave and not in s[Warp Strike] lanes.", type = "Position", id = "gui-vSZ7UCnScU" },
      { order = 7, role = "TANK", text = "During intermission, keep threat and shift to help lines pass through n[Taah'bat].", type = "Call", id = "gui-Y1wz31ombZQ" },
      { order = 8, role = "HEALER", text = "Plan CDs for intermission - pulsing AoE + s[Warp Strike] DoTs ramp.", type = "Call", id = "gui-9UWgei94RHo" },
      { order = 9, role = "HEALER", text = "Top and dispel tethered players from s[Binding Javelin] quickly.", type = "Mechanic", id = "gui-3rvIIXzn6U8" },
      { order = 10, role = "HEALER", text = "Pre-HoT tethered players - they pulse AoE and are slowed; consider externals if s[Warp Strike] overlaps.", type = "Call", id = "gui-8FMTXtHIMT8" },
      { order = 11, role = "DPS", text = "Call order for s[Warp Strike] aims; avoid overlapping paths.", type = "Call", id = "gui-BeeW5v8CFXg" },
      { order = 12, role = "DPS", text = "Hard swap to javelins; ramping damage on tethered players.", type = "Mechanic", id = "gui-Hi9UTWtpxY" },
      { order = 13, role = "DPS", text = "Hold cooldowns for 15s stun after shield break.", type = "Call", id = "gui-1wHOPrdbHGg" }
    }
  },

  ["Soul-Scribe"] = {
    id = "enc-ecodome-tww-s3-soulscribe",
    order = 5,
    header = "Boss: Soul-Scribe",
    entries = {
      { order = 1, role = "ALL", text = "On s[Whispers of Fate], grab your soul fast for s[Fatebound]. If your soul is hit, you get s[Wounded Fate] (-haste + DoT).", type = "Call", id = "gui-uUt7QfDaeLg" },
      { order = 2, role = "ALL", text = "During s[Eternal Weave], stagger pickups and dodge rotating cones - never let cones hit souls.", type = "Call", id = "gui-so1RuOqK7wc" },
      { order = 3, role = "ALL", text = "Collect your soul fragment after s[Whispers of Fate] to gain Fatebound. Delay causes Wounded Fate and heavy DoT.", type = "Mechanic", id = "gui-nbmmHr25T40" },
      { order = 4, role = "ALL", text = "Spread for s[Dread of the Unknown] to avoid overlapping circles while securing souls.", type = "Mechanic", id = "gui-2C5jVW8BUPE" },
      { order = 5, role = "ALL", text = "Use the arrow indicator to find your soul; intercept it before boss abilities destroy it.", type = "Call", id = "gui-xBZ3Wu8q50" },
      { order = 6, role = "ALL", text = "During s[Eternal Weave], take one soul at a time while dodging cone sweeps.", type = "Mechanic", id = "gui-k8HtlO93XN8" },
      { order = 7, role = "ALL", text = "Keep mobile and rotate pickups to extend s[Fatebound] uptime safely.", type = "Call", id = "gui-MdPdRXMzljQ" },
      { order = 8, role = "TANK", text = "Hold boss steady to help orientation during cone sweeps; avoid dragging through active soul zones.", type = "Position", id = "gui-lVHWqBk3yEQ" },
      { order = 9, role = "TANK", text = "Use defensives when multiple players have s[Wounded Fate] or during heavy overlaps.", type = "Call", id = "gui-Dp3UvTot0Uk" },
      { order = 10, role = "HEALER", text = "Track late pickups - top s[Wounded Fate] targets quickly.", type = "Mechanic", id = "gui-empJ8nEXJD4" },
      { order = 11, role = "HEALER", text = "Pre-cast AoE after s[Whispers of Fate]; party scatters to souls.", type = "Call", id = "gui-wNgFxOFolIM" },
      { order = 12, role = "HEALER", text = "Ramp during s[Eternal Weave] - cone dodges + missed souls spike damage.", type = "Call", id = "gui-2tFZubxI7Ng" },
      { order = 13, role = "HEALER", text = "Use externals on risky soul pickups near cones or daggers.", type = "Call", id = "gui-o2dka2XICws" },
      { order = 14, role = "DPS", text = "Time pickups to keep s[Fatebound] uptime; do not grab souls mid-cone.", type = "Call", id = "gui-70YY9YSRizY" },
      { order = 15, role = "DPS", text = "Avoid pickups just before s[Ceremonial Dagger] finishes; reposition first.", type = "Mechanic", id = "gui-KZhSnSWT1E" },
      { order = 16, role = "DPS", text = "Call out missed souls; help mark safe paths through cones.", type = "Call", id = "gui-e6hjLEW6L4A" }
    }
  }
}
