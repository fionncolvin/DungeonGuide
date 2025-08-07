DungeonGuide_Guides["dung-soleahs-gambit-tww-s3"] = {
  name = "So'leah's Gambit",
  id = "dung-soleahs-gambit-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["So'leah's Gambit"] = {
    id = "enc-soleahs-gambit-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "30-minute timer with three-boss linear layout split by portals between themed zones.", type = "Mechanic", id = "gui-KFszXQ64" },
      { order = 2, role = "ALL", text = "Dungeon starts with murloc gauntlet, then pirate shipyard, then broker-infused final stretch.", type = "Mechanic", id = "gui-q57Yi0Xe" },
      { order = 3, role = "ALL", text = "Expect heavy use of AoE control, interrupts, and careful space management throughout the run.", type = "Mechanic", id = "gui-9mfEq7XB" },
      { order = 4, role = "ALL", text = "Each portal zone ends with a boss and unlocks the next wing — no branching paths.", type = "Mechanic", id = "gui-WQX9vD3A" },
      { order = 5, role = "ALL", text = "Final boss has multi-phase relic puzzle and intense group-wide damage checks.", type = "Mechanic", id = "gui-KvG84Oz0" }
    },
  },

  ["Route"] = {
    id = "enc-soleahs-gambit-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We open with Bloodlust on the murloc beach — pull Coast Walker Goliath with surrounding packs.", type = "Call", id = "gui-Js3VzMqT" },
      { order = 2, role = "ALL", text = "Interrupt n[Merkrine Shell Crusher] s[Cry of Mergle] and kill totems from n[Scale Binder].", type = "Call", id = "gui-q10VyT4Z" },
      { order = 3, role = "ALL", text = "After the beach, we take on four n[Stormforged Guardians] before the first boss.", type = "Call", id = "gui-5nqWyIv9" },
      { order = 4, role = "ALL", text = "Jump to n[Hylbrande].", type = "Jump", id = "gui-1Kp6mF7a", target = "Hylbrande" },
      { order = 5, role = "ALL", text = "After Hylbrande, take portal into pirate docks and pull n[Burly Deckhands] with n[Tidesages].", type = "Call", id = "gui-82QzvlNc" },
      { order = 6, role = "ALL", text = "Interrupt n[Hourglass Tidesage] s[Brackish Bolt] and manage Cannon fire zones.", type = "Call", id = "gui-PoY36KwQ" },
      { order = 7, role = "ALL", text = "Jump to n[Timecap'n Hooktail].", type = "Jump", id = "gui-Yz42waIg", target = "Timecap'n Hooktail" },
      { order = 8, role = "ALL", text = "Final portal leads to broker area — focus kill n[Wandering Pulsar] and interrupt n[Ritualists].", type = "Call", id = "gui-8TwzMp7E" },
      { order = 9, role = "ALL", text = "Jump to n[So'leah].", type = "Jump", id = "gui-fs1QzDt3", target = "So'leah" }
    },
  },

  ["Hylbrande"] = {
    id = "enc-soleahs-gambit-tww-s3-hylbrande",
    order = 3,
    header = "Boss: Hylbrande",
    entries = {
      { order = 1, role = "TANK", text = "Face boss away from group for s[Titanic Crash] — heavy frontal with stun.", type = "Position", id = "gui-Xh9QfRLE" },
      { order = 2, role = "TANK", text = "Mitigate s[Shearing Swings] — fast 2-hit tank buster.", type = "Mechanic", id = "gui-ENrY7PjS" },
      { order = 3, role = "ALL", text = "Dodge s[Titanic Crash] frontal cone — wait for wind-up and sidestep.", type = "Mechanic", id = "gui-mq2KbCGy" },
      { order = 4, role = "ALL", text = "s[Purifying Burst] hits 3 random players — use defensives if low.", type = "Call", id = "gui-TzUqN34g" },
      { order = 5, role = "HEALER", text = "Top targets of s[Purifying Burst] — heavy holy damage.", type = "Mechanic", id = "gui-HLoIpnGz" },
      { order = 6, role = "ALL", text = "Interrupt n[Vault Purifier] casts: s[Empowered Defense] and s[Valorous Bolt].", type = "Interrupt", id = "gui-KyZtPGEv" },
      { order = 7, role = "DPS", text = "Kill n[Vault Purifier] quickly before intermission — they can block runes.", type = "Call", id = "gui-b1YqX3FN" },
      { order = 8, role = "ALL", text = "Kite s[Purged by Fire] beam to room edge — avoid central clutter.", type = "Mechanic", id = "gui-p7LtMiQD" },
      { order = 9, role = "ALL", text = "During s[Sanitizing Cycle], collect runes and deposit at correct consoles.", type = "Call", id = "gui-CrTZ4BhE" },
      { order = 10, role = "ALL", text = "One player should activate rear console to reveal rune placements.", type = "Call", id = "gui-fvLJUtQO" }
    }
  },

  ["Timecap'n Hooktail"] = {
    id = "enc-soleahs-gambit-tww-s3-hooktail",
    order = 4,
    header = "Boss: Timecap'n Hooktail",
    entries = {
      { order = 1, role = "TANK", text = "Aim s[Infinite Breath] at adds — face boss toward water.", type = "Position", id = "gui-YdOvCN1M" },
      { order = 2, role = "ALL", text = "Step out of s[Infinite Breath] cone — instant kill and stun.", type = "Mechanic", id = "gui-vFzRbiTl" },
      { order = 3, role = "ALL", text = "Group loosely to avoid s[Cannon Barrage] fire overlaps.", type = "Position", id = "gui-ANgXfzse" },
      { order = 4, role = "ALL", text = "Stack s[Cannon Barrage] fire puddles together — they last 2 min.", type = "Call", id = "gui-3yTqLSMd" },
      { order = 5, role = "ALL", text = "Fixate adds gain speed/damage over time — control with CC or kite.", type = "Mechanic", id = "gui-BnDZ6qOj" },
      { order = 6, role = "TANK", text = "Stay near cliff wall to maximise breath cone coverage.", type = "Position", id = "gui-sX4Eo9Tp" },
      { order = 7, role = "HEALER", text = "Dispel s[Time Bomb] when safe — triggers group AoE on removal.", type = "Call", id = "gui-d2Tz5QWg" },
      { order = 8, role = "HEALER", text = "Avoid dispel overlaps with s[Anchor Shot] — combo can be lethal.", type = "Mechanic", id = "gui-QmKFyWxJ" },
      { order = 9, role = "ALL", text = "Fight s[Anchor Shot] pull — use movement to avoid being dragged off.", type = "Mechanic", id = "gui-LRfzkcu9" },
      { order = 10, role = "DPS", text = "Help kite or stun adds to line them up for breath.", type = "Call", id = "gui-Kj3PeXtW" }
    }
  },

  ["So'leah"] = {
    id = "enc-soleahs-gambit-tww-s3-soleah",
    order = 5,
    header = "Boss: So'leah",
    entries = {
      { order = 1, role = "ALL", text = "Interrupt n[Assassin] s[Shuriken Blitz] to prevent group bleed.", type = "Interrupt", id = "gui-Yz1CavFQ" },
      { order = 2, role = "HEALER", text = "Stagger s[Collapsing Star] soaks — each charge applies stacking group DoT.", type = "Call", id = "gui-Qo8SbmJz" },
      { order = 3, role = "ALL", text = "Soak s[Collapsing Star] one at a time — final charge can safely expire.", type = "Mechanic", id = "gui-hLzqGEt9" },
      { order = 4, role = "HEALER", text = "Ramp healing for s[Hyperlight Spark] overlaps with star soaks.", type = "Call", id = "gui-Kgx9V0CU" },
      { order = 5, role = "ALL", text = "At 40% and later, boss casts s[Power Overwhelming] — enter immunity phase.", type = "Mechanic", id = "gui-2xvYnScF" },
      { order = 6, role = "ALL", text = "Stand in arrow lines and aim s[Hyperlight Jolt] through relics to break immunity.", type = "Call", id = "gui-PWfjxzRo" },
      { order = 7, role = "ALL", text = "Use successive jolts if needed — each missed relic can be hit next cast.", type = "Mechanic", id = "gui-BG6qxWyn" },
      { order = 8, role = "ALL", text = "Dodge s[Energy Fragmentation] projectiles — relics shoot in all directions.", type = "Mechanic", id = "gui-nXJTrl3Z" },
      { order = 9, role = "ALL", text = "Avoid s[Hyperlight Nova] zones around relics and boss — one-shot AoE.", type = "Mechanic", id = "gui-cKpGOLrw" },
      { order = 10, role = "TANK", text = "After jolt phase, reposition boss near carts to control relic overlap space.", type = "Position", id = "gui-FWsZ7VAh" }
    }
  }
}