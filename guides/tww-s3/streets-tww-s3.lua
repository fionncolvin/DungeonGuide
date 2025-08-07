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
      { order = 1, role = "ALL", text = "32-minute timer dungeon with branching paths, RP events, and multi-phase fights.", type = "Mechanic", id = "gui-XkA3vFsB" },
      { order = 2, role = "ALL", text = "Starts with a mini-boss before first boss. Expect early AoE and strong tank hits.", type = "Mechanic", id = "gui-HtB7sNpZ" },
      { order = 3, role = "ALL", text = "Path splits after Zo'phex — right wing includes POST Master and Zo'gron; left leads to Grand Menagerie.", type = "Call", id = "gui-3RuYq2Lm" },
      { order = 4, role = "HEALER", text = "Be ready for party-wide magic DoTs, dispels, and movement-heavy healing phases.", type = "Call", id = "gui-BkV6dPjR" },
      { order = 5, role = "TANK", text = "Expect multiple tank busters, fixates, and bleeds. Cooldown usage is key.", type = "Call", id = "gui-YzC2nWpQ" },
    },
  },

  ["Route"] = {
    id = "enc-tazavesh-streets-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are pulling opening RP pack — Custom Security and n[Gatewarden Zo'm]. Use defensives during s[Radiant Pulse].", type = "Call", id = "gui-VcL7dDxP" },
      { order = 2, role = "ALL", text = "After Zo'm, we move up stairs and clear toward n[Portalmancer Zo'han]. Interrupt s[Empowered Glyph of Restraint].", type = "Call", id = "gui-KdW8nXfM" },
      { order = 3, role = "ALL", text = "Kill Zo'han to spawn n[Zo'phex the Sentinel].", type = "Jump", id = "gui-MbP4cAyE", target = "Zo'phex the Sentinel" },
      { order = 4, role = "ALL", text = "After Zo'phex, we go RIGHT toward Mailroom Mayhem and n[Zo'gron].", type = "Call", id = "gui-QaJ6rBtN" },
      { order = 5, role = "ALL", text = "Clear Cartel mobs and post office trash before fighting n[P.O.S.T. Master].", type = "Jump", id = "gui-EyT9wFqC", target = "P.O.S.T. Master" },
      { order = 6, role = "ALL", text = "Return to Bazaar, complete merchant RP to access n[Zo'gron].", type = "Jump", id = "gui-WfU2bMzA", target = "Zo'gron" },
      { order = 7, role = "ALL", text = "Go LEFT from Zo'phex if doing Grand Menagerie route next.", type = "Call", id = "gui-LmK1zCxR" },
      { order = 8, role = "ALL", text = "Clear through n[Tracker Zokors] and ancient beasts toward n[Grand Menagerie].", type = "Jump", id = "gui-NyR8sJwZ", target = "Grand Menagerie" },
      { order = 9, role = "ALL", text = "Final trash gauntlet to reach n[So'azmi]. Expect heavy movement and portal use.", type = "Jump", id = "gui-UoV5dKbT", target = "So'azmi" }
    },
  },

  ["Zo'phex the Sentinel"] = {
    id = "enc-tazavesh-streets-tww-s3-zophex",
    order = 3,
    header = "Boss: Zo'phex the Sentinel",
    entries = {
      { order = 1, role = "ALL", text = "Avoid spinning blades from s[Armed Security] — they persist and patrol the arena.", type = "Mechanic", id = "gui-sQxmzjTokfw" },
      { order = 2, role = "ALL", text = "Stay close to boss to help dodge s[Charge Slash] frontal line attack.", type = "Position", id = "gui-maroddsISvw" },
      { order = 3, role = "ALL", text = "If targeted by s[Impound Contraband], retrieve weapon to cancel silence and gain haste buff.", type = "Mechanic", id = "gui-u0QV4mIbnrs" },
      { order = 4, role = "ALL", text = "At full energy, boss casts s[Interrogation] — stun + slow walk to cage. Nuke cage to free player.", type = "Mechanic", id = "gui-2su6E6MbHu4" },
      { order = 5, role = "ALL", text = "Use immunities or aggro-drop (e.g. Shadowmeld, IBF) to escape s[Interrogation] if targeted.", type = "Call", id = "gui-LZcpXmSDmHk" },
      { order = 6, role = "TANK", text = "Use defensives when boss gains s[Fully Armed] — 25% physical damage buff.", type = "Mechanic", id = "gui-gC9LIKRj7t0" },
      { order = 7, role = "TANK", text = "Maintain boss near centre — easier positioning for blade dodges and cage breaks.", type = "Position", id = "gui-laKB7VPCYTQ" },
      { order = 8, role = "HEALER", text = "Top player freed from cage — burst AoE hit lands on release.", type = "Call", id = "gui-oceRfuzbMRU" },
      { order = 9, role = "HEALER", text = "Watch for stacked damage when s[Impound Contraband] overlaps with s[Interrogation].", type = "Mechanic", id = "gui-4tr9x2jCFI" },
      { order = 10, role = "DPS", text = "Call out s[Impound Contraband] if targeted — group can help clear path to weapon.", type = "Call", id = "gui-XbO2gAehts" }
    }
  },

  ["P.O.S.T. Master"] = {
    id = "enc-tazavesh-streets-tww-s3-postmaster",
    order = 4,
    header = "Boss: P.O.S.T. Master",
    entries = {
      { order = 1, role = "ALL", text = "Soak s[Hazardous Liquids] or they leave puddles — each soak applies ticking DoT.", type = "Mechanic", id = "gui-CxVfxzVTaoQ" },
      { order = 2, role = "ALL", text = "Soaking swirlies applies Arcane DoT — rotate soakers and use defensives as needed.", type = "Call", id = "gui-luNc9AHkSlQ" },
      { order = 3, role = "ALL", text = "Stand in circle for s[Money Order] soak — can be soloed with full immunity.", type = "Mechanic", id = "gui-XJhqpkZVMA" },
      { order = 4, role = "ALL", text = "At 100 energy, pick up s[Unstable Goods] and throw into portal — don't drop them!", type = "Mechanic", id = "gui-Gzaj9JQBMnE" },
      { order = 5, role = "ALL", text = "Dropped packages explode and apply heavy DoT to all players.", type = "Mechanic", id = "gui-Bg4AikgTzYE" },
      { order = 6, role = "ALL", text = "Can pass packages to others — use throw button if slowed.", type = "Call", id = "gui-z8PXEmfwAc4" },
      { order = 7, role = "TANK", text = "Soak extra s[Hazardous Liquids] when safe — use cooldowns to manage stacks.", type = "Call", id = "gui-8VFBRhiBA" },
      { order = 8, role = "TANK", text = "Face s[Postworkers] away from group — s[Letter Opener] applies bleed.", type = "Mechanic", id = "gui-vKANZ2OQuuQ" },
      { order = 9, role = "TANK", text = "If multiple Postworkers are active, rotate CDs to manage bleed stacks.", type = "Call", id = "gui-lH9bzxB3VFM" },
      { order = 10, role = "HEALER", text = "Ramp healing during s[Fan Mail] — high group-wide arcane damage.", type = "Call", id = "gui-b6hMMfb0X0" },
      { order = 11, role = "HEALER", text = "Watch players soaking swirlies — DoT stacks quickly and overlaps with AoE.", type = "Mechanic", id = "gui-MgsN2GdKg" },
      { order = 12, role = "HEALER", text = "Top players carrying s[Unstable Goods] — damage taken slows them and risks drop.", type = "Call", id = "gui-P5a0qi17NBA" },
      { order = 13, role = "DPS", text = "Throw packages into active portal — check shape to match correctly.", type = "Mechanic", id = "gui-weuYt3jfpvQ" },
      { order = 14, role = "DPS", text = "Use mobility to pick up and deliver s[Unstable Goods] fast — avoid overlaps.", type = "Call", id = "gui-IkD6r9oV7TQ" },
      { order = 15, role = "DPS", text = "Burn n[Overloaded Mailmentals] quickly — they reduce group damage taken via s[Spam Filter].", type = "Mechanic", id = "gui-yG58lP1ws" },
      { order = 16, role = "DPS", text = "Interrupt s[Spam Filter] or purge — gives 50% DR to enemies nearby.", type = "Interrupt", id = "gui-rAsJ94JfcKU" },
      { order = 17, role = "DPS", text = "Avoid puddles when swirlies are missed — heavy slow and ticking damage.", type = "Mechanic", id = "gui-8irfkrTe77M" },
      { order = 18, role = "ALL", text = "Failing package phase causes wipe-level damage. Call if you're struggling.", type = "Call", id = "gui-aq4q7u5zOg0" },
      { order = 19, role = "ALL", text = "Position near portal spawn when packages drop to reduce carry time.", type = "Position", id = "gui-UUvJtQDYC70" },
      { order = 20, role = "ALL", text = "Use external CDs on swirlies + s[Fan Mail] overlap — especially if players are low.", type = "Call", id = "gui-YUtSfHTPB6M" }
    }
  },

  ["Zo'gron"] = {
    id = "enc-tazavesh-streets-tww-s3-zogron",
    order = 5,
    header = "Boss: Zo'gron",
    entries = {
      { order = 1, role = "ALL", text = "Interact with instrument and collect 12 notes to gain s[Uptempo] buff — refresh regularly.", type = "Mechanic", id = "gui-eQ3Zn2sUCzM" },
      { order = 2, role = "ALL", text = "Avoid swirlies from s[Rotten Food] — they deal lethal damage.", type = "Mechanic", id = "gui-BYPkcOmNbU" },
      { order = 3, role = "ALL", text = "During s[Suppression Spark], spread 5 yards to avoid overlapping explosions.", type = "Mechanic", id = "gui-AwhNEmuH8w" },
      { order = 4, role = "ALL", text = "Final Warning shield must be broken before cast ends or it wipes the group.", type = "Mechanic", id = "gui-8f5d2GLYrBs" },
      { order = 5, role = "ALL", text = "Use s[Uptempo] buff to break s[Final Warning] shield faster.", type = "Call", id = "gui-0z35JPO4Shs" },
      { order = 6, role = "TANK", text = "Face n[Zo'gron] away — s[Security Slam] is a hard-hitting frontal tank buster.", type = "Mechanic", id = "gui-tcUt6etSRE" },
      { order = 7, role = "TANK", text = "Interrupt s[Menacing Shout] from Oasis Security adds — long silence and group damage.", type = "Interrupt", id = "gui-rrYXqknLU" },
      { order = 8, role = "TANK", text = "Pick up instrument that stays close — horn or drums ideal for tanking location.", type = "Call", id = "gui-HnTxi0FtDf4" },
      { order = 9, role = "HEALER", text = "Ramp heals during s[Suppression Spark] + AoE overlaps — use healing CDs as needed.", type = "Call", id = "gui-qiXOL13E4hQ" },
      { order = 10, role = "HEALER", text = "Watch rowdy adds — they gain 100% damage under s[Rowdy] buff. Use soothe + spot heals.", type = "Mechanic", id = "gui-3UrHyA1Tr6o" },
      { order = 11, role = "HEALER", text = "Top players with AoE markers during s[Suppression Spark]. Positioning matters.", type = "Call", id = "gui-S1GZYmyuz10" },
      { order = 12, role = "DPS", text = "Focus s[Oasis Security] mobs in add phases — they use silences and tank busters.", type = "Mechanic", id = "gui-u6Iad8x3foQ" },
      { order = 13, role = "DPS", text = "Interrupt n[Disruptive Patrons] and n[Brawling Patrons] when possible.", type = "Interrupt", id = "gui-8IXkqW9koAA" },
      { order = 14, role = "DPS", text = "Avoid crowd control frontal from n[Zo'gron] — unpredictable angle.", type = "Mechanic", id = "gui-3Vm6vG7aMpY" },
      { order = 15, role = "DPS", text = "Save cooldowns for shield break phase on s[Final Warning] — burst is essential.", type = "Call", id = "gui-rxJ3yiBqUJQ" },
      { order = 16, role = "ALL", text = "Maintain s[Uptempo] by collecting glowing music notes with extra action button.", type = "Mechanic", id = "gui-V7hx0ryoXi4" },
      { order = 17, role = "ALL", text = "Don't overlap note paths — communicate movement during note collection phase.", type = "Call", id = "gui-mCd1TURPXOE" },
      { order = 18, role = "ALL", text = "Dodge random ground effects while collecting notes — stay mobile.", type = "Mechanic", id = "gui-cz2brqkaj5s" },
      { order = 19, role = "ALL", text = "Call out missed interrupts during add phases — especially s[Menacing Shout].", type = "Call", id = "gui-GUfwgc5yVA" },
      { order = 20, role = "ALL", text = "Avoid stacking near n[Zo'gron] when s[Suppression Spark] lands.", type = "Position", id = "gui-CvoQQ59yASo" }
    }
  },

  ["Grand Menagerie"] = {
    id = "enc-tazavesh-streets-tww-s3-menagerie",
    order = 6,
    header = "Boss: Grand Menagerie",
    entries = {
      { order = 1, role = "ALL", text = "Phase 1: n[Alcruux] casts s[Grip of Hunger] — run out of large swirly zone immediately.", type = "Mechanic", id = "gui-uQW2WC1z3ow" },
      { order = 2, role = "ALL", text = "Dodge two waves of s[Grand Consumption] — stand in second wave first, rotate after.", type = "Mechanic", id = "gui-VxBTp1GAoEA" },
      { order = 3, role = "ALL", text = "s[Gluttony] DoT applies splash damage — spread 5 yards and don't panic-transfer it.", type = "Mechanic", id = "gui-KI4STDrn41k" },
      { order = 4, role = "TANK", text = "Face each boss away from group and position toward phase entrance to prep orbs.", type = "Position", id = "gui-wwLAZGeTlo0" },
      { order = 5, role = "TANK", text = "Phase 2: n[Achillite] casts s[Flagellation Protocol] — strong tank buster. Use cooldowns.", type = "Mechanic", id = "gui-m4vfWwa77Wk" },
      { order = 6, role = "TANK", text = "During s[Venting Protocol], reposition boss to allow orb control for s[Gluttony] player.", type = "Call", id = "gui-caAzgmqrSTI" },
      { order = 7, role = "HEALER", text = "s[Purification Protocol] marks 2 players — dispel 1, other must use defensives.", type = "Mechanic", id = "gui-8DFyDtiZT3k" },
      { order = 8, role = "HEALER", text = "Ramp healing during s[Grand Consumption] and s[Venting Protocol] overlaps.", type = "Call", id = "gui-vUxWoOJmrw" },
      { order = 9, role = "HEALER", text = "Spot heal s[Gluttony] carrier — they'll take orb contact damage and residual splash.", type = "Mechanic", id = "gui-C3k58dgWBSI" },
      { order = 10, role = "DPS", text = "If affected by s[Gluttony], soak orbs from s[Venting Protocol] to gain stacking DPS buff.", type = "Mechanic", id = "gui-dNnr4RfAMQ" },
      { order = 11, role = "DPS", text = "If not affected by s[Gluttony], avoid orbs — they apply 5% damage reduction stack.", type = "Mechanic", id = "gui-j6GKPdCH9I" },
      { order = 12, role = "DPS", text = "Burn each boss to 50% quickly to trigger next — don't delay phase transitions.", type = "Call", id = "gui-EX6i1JnVAj8" },
      { order = 13, role = "DPS", text = "Phase 3: n[Venza Goldfuse] casts s[Whirling Annihilation] — run away fast or die.", type = "Mechanic", id = "gui-bnG8HOzuNS0" },
      { order = 14, role = "DPS", text = "Destroy s[Chains of Domination] — roots one player with ticking damage.", type = "Call", id = "gui-7SySZfsuFs" },
      { order = 15, role = "ALL", text = "Use s[Gluttony] to soak orbs even during Venza phase — buff persists until end.", type = "Mechanic", id = "gui-xg9lFyPmYPQ" },
      { order = 16, role = "ALL", text = "Avoid stacking in melee — s[Gluttony] and AoE effects stack badly with melee clump.", type = "Position", id = "gui-hbmsg3Cgmr4" },
      { order = 17, role = "ALL", text = "If carrying s[Gluttony], coordinate with group to pass if needed — don't panic drop.", type = "Call", id = "gui-puXGrWRwLA" },
      { order = 18, role = "ALL", text = "Bosses keep using their core spells after next one joins — mechanics stack.", type = "Mechanic", id = "gui-OuDqiQbfA8" },
      { order = 19, role = "ALL", text = "Use movement cooldowns to avoid orb hits and swirlies while managing s[Gluttony].", type = "Call", id = "gui-VfuBCp3D4e4" },
      { order = 20, role = "ALL", text = "Spread during s[Purification Protocol] and s[Grip of Hunger] — avoid splash.", type = "Mechanic", id = "gui-53EoB4cFmuY" }
    }
  },

  ["So'azmi"] = {
    id = "enc-tazavesh-streets-tww-s3-soazmi",
    order = 7,
    header = "Boss: So'azmi",
    entries = {
      { order = 1, role = "ALL", text = "Use teleporters to cross s[Shuri] shockwave — touching it applies lethal DoT.", type = "Mechanic", id = "gui-K4BzWBtwbBk" },
      { order = 2, role = "ALL", text = "Each teleporter pair is marked (triangle, square, circle). Match shape to cross safely.", type = "Mechanic", id = "gui-h1h8kntDpxc" },
      { order = 3, role = "ALL", text = "At 70% and 40%, s[Force Walls] divide room — blocks line of sight and complicates movement.", type = "Mechanic", id = "gui-rFILkgDKhM" },
      { order = 4, role = "ALL", text = "Plan ahead which teleporters you'll use before s[Shuri] starts expanding.", type = "Call", id = "gui-UJ082fvD4s" },
      { order = 5, role = "ALL", text = "At 100 energy, boss casts s[Double Technique] — must be interrupted twice or it's a wipe.", type = "Mechanic", id = "gui-RVTaT72BIRQ" },
      { order = 6, role = "ALL", text = "Use teleporters to reach boss quickly for s[Double Technique] interrupts.", type = "Call", id = "gui-usBnt5stEYs" },
      { order = 7, role = "ALL", text = "Interrupt timings must be staggered — avoid overlapping both early.", type = "Interrupt", id = "gui-8io0ymn3FvU" },
      { order = 8, role = "TANK", text = "Use cooldowns for s[Phase Slash] + auto melee overlap — 3-target bleed plus big hit.", type = "Mechanic", id = "gui-u0GZj5Zcz68" },
      { order = 9, role = "TANK", text = "Keep boss near middle when possible for flexible teleporter access.", type = "Position", id = "gui-kz2o4H75cY" },
      { order = 10, role = "HEALER", text = "Top s[Phase Slash] bleed targets — overlapping with s[Shuri] is dangerous.", type = "Call", id = "gui-pG3bDO9D71U" },
      { order = 11, role = "HEALER", text = "Dispel s[Phase Slash] bleeds only if overlapping with group-wide mechanics.", type = "Mechanic", id = "gui-qWrqpQk7rCg" },
      { order = 12, role = "HEALER", text = "Be ready to move for visibility — LoS issues during s[Force Walls] can delay healing.", type = "Position", id = "gui-2kWBqDAIti4" },
      { order = 13, role = "DPS", text = "Interrupt s[Double Technique] with coordination — use kick order if needed.", type = "Interrupt", id = "gui-M8Ko4W6tFl8" },
      { order = 14, role = "DPS", text = "Avoid using movement CDs just before s[Shuri] — may need to reorient quickly.", type = "Call", id = "gui-GGJVciRoOBY" },
      { order = 15, role = "DPS", text = "Use defensives if stuck between s[Force Walls] or late to teleporter.", type = "Call", id = "gui-RSZrasow7t8" },
      { order = 16, role = "ALL", text = "Check Relocator pairs at pull — some are better positioned for later phases.", type = "Call", id = "gui-tCfv8O6mlg4" },
      { order = 17, role = "ALL", text = "Don't panic-teleport — you may end up on the wrong side of a wall or s[Shuri].", type = "Call", id = "gui-4YpPJhFamY" },
      { order = 18, role = "ALL", text = "Watch the boss timer for s[Shuri] and move early to avoid choke points.", type = "Call", id = "gui-VWXminc8k" },
      { order = 19, role = "ALL", text = "Stack for healing only when LoS is clear — avoid baiting AoE into tight spots.", type = "Position", id = "gui-oquuYNCGJc" },
      { order = 20, role = "ALL", text = "Practice this fight — movement puzzles ramp up and punish missteps hard.", type = "Call", id = "gui-HzitOWOhHhs" }
    }
  }
}