DungeonGuide_Guides["dung-priory-tww-s2"] = {
  unitMapIDs = { 2215, 2308, 2309 },
  challengeMapID = {499},
  name = "Priory of the Sacred Flame",
  id = "dung-priory-tww-s2",
  season = "TWW-S2",
  guideType = "M+",
  
  ["Priory of the Sacred Flame"] = {
    id = "enc-priory-guide",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "Paladin/Priest can activate flame orb for 30min Holy AoE proc buff.", type = "Mechanic", id = "gui-ECoA78wXczY" },
      { order = 2, role = "ALL", text = "You must fight Dailcry + 1 Trusted Guard. Kill 2 of 3 Lieutenants to remove 1.", type = "Mechanic", id = "gui-xObZTyb5rmc" },
      { order = 3, role = "ALL", text = "Interrupts: Greater Heal (Priest), Fireball Volley (Mage), Battle Cry (Dailcry), Burning Light (Braunpyke), Cinderblast (Taener).", type = "Interrupt", id = "gui-qSpU9KDDLfE" },
      { order = 4, role = "ALL", text = "Kill Risen Mages/Footmen staggered - death AoE heals allies via Light Expulsion.", type = "Mechanic", id = "gui-IZ4lXRY2ys" },
      { order = 5, role = "ALL", text = "Trusted Guards, Knights, Lightspawns, and Lieutenants are CC-immune. Plan interrupts.", type = "Mechanic", id = "gui-5Kpqm4roYxU" },
      { order = 6, role = "ALL", text = "Play stacked and rotate movement during Braunpyke and Murrpray to dodge beams, swirlies, and hammers.", type = "Mechanic", id = "gui-Hc7EHgsPeU" },
      { order = 7, role = "ALL", text = "Trusted Guard tankbusters: Cinderblast (Taener), Blazing Strike (Braunpyke). Kick or mitigate.", type = "Mechanic", id = "gui-0gH4a2cvPqI" },
      { order = 8, role = "ALL", text = "Some trash pulls have chain interrupts and high AoE - pre-assign kicks.", type = "Mechanic", id = "gui-DsSywAWLVPo" },
      { order = 9, role = "TANK", text = "CDs for: Pierce Armor (Dailcry), Divine Judgment (Elaena), Blazing Strike (Braunpyke). Bleeds stack fast.", type = "Mechanic", id = "gui-sm3oozn6i4" },
      { order = 10, role = "TANK", text = "Pre-plan group soaks and positioning for Braunpyke and Murrpray phases.", type = "Mechanic", id = "gui-27O7YaAhC3Y" },
      { order = 11, role = "TANK", text = "Taunt Trusted Guard (Captain Dailcry) instantly. Don't let it melee others.", type = "Mechanic", id = "gui-MDgdiC419w" },
      { order = 12, role = "HEALER", text = "High group damage from: Heat Wave, Holy Radiance, Vindictive Wrath, Inner Fire, Embrace the Light (P2).", type = "Mechanic", id = "gui-veBVRECAq2Q" },
      { order = 13, role = "HEALER", text = "Dispel: Reflective Shield (Aemya), Divine Judgment debuff, Impale/bleeds, Heat Wave slows.", type = "Mechanic", id = "gui-IVplJVD2gIE" },
      { order = 14, role = "DPS", text = "Save cooldowns for Murrpray intermission shield - faster break = fewer add waves.", type = "Mechanic", id = "gui-LJjhkqAzwHQ" },
      { order = 15, role = "DPS", text = "Soak Sacrificial Pyres properly. Avoid doubling up. Immunity/tank soak if needed.", type = "Mechanic", id = "gui-9MQ1wJw2wjE" },
      { order = 16, role = "ALL", text = "Route", type = "Jump", target="Route", id = "gui-EKYX3gkN4U-b4BdqDhcumw" }
    },
  },

  ["Route"] = {
    id = "enc-priory-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "Big pull to start with Footmen into Patrol into 2x packs at Fountain. Bloodlust here.", type = "Call", id = "gui-kIhqDxwfWk" },
      { order = 2, role = "ALL", text = "Pull Guard Captain Suleyman next. Position on LEFT stairs for Shield Slam.", type = "Call", id = "gui-gfqks7ejSUQ" },
      { order = 3, role = "ALL", text = "Up the stairs for Sergeant Shaynemail when she runs in + RIGHT pack. Avoiding the Sharpshooter on the left.", type = "Call", id = "gui-cyzAUTtDF8" },
      { order = 4, role = "ALL", text = "Patrol + tree-side 3-pack next.", type = "Call", id = "gui-UPNVz3p2NV0" },
      { order = 5, role = "ALL", text = "Chain Conjurers + Lightspawn + Neophytes. Respect tank damage.", type = "Call", id = "gui-Zc4XA9N91ZA" },
      { order = 6, role = "ALL", text = "Pull High Priest Aemya next. Focus interrupts.", type = "Call", id = "gui-eX5R4W9h0X8" },
      { order = 7, role = "ALL", text = "Move to catch Duelmal mid-run if possible.", type = "Call", id = "gui-ewaWcy1DJM" },
      { order = 8, role = "ALL", text = "Fight Captain Dailcry next. South-side mini-boss preferred for cleave.", type = "Call", id = "gui-m40lJTaD7t8" },
      { order = 9, role = "ALL", text = "Boss Fight: Captain Dailcry", type = "Jump", target="Captain Dailcry", id = "gui-wut5kvUhDUK" },
      { order = 10, role = "ALL", text = "Full pull Cathedral Neophytes first. Watch Sacred Toll casts.", type = "Call", id = "gui-UeSsgsKPaXU" },
      { order = 11, role = "ALL", text = "Clear left side first in Cathedral. Then right side.", type = "Call", id = "gui-X9FH87CTkxc" },
      { order = 12, role = "ALL", text = "Boss Fight: Baron Braunpyke", type = "Jump", target="Baron Braunpyke", id = "gui-pmj_Kq2ihUW" },
      { order = 13, role = "ALL", text = "After Braunpyke, pull double Paladins, Priests, and Templars.", type = "Call", id = "gui-z4qacZAObMk" },
      { order = 14, role = "ALL", text = "LOS first stairwell pack into stairwell for safe pull.", type = "Call", id = "gui-FRgix4GVT4" },
      { order = 15, role = "ALL", text = "Focus Lightspawns carefully. Avoid healing mobs with Purification zones.", type = "Call", id = "gui-Q2t7EOfZrZE" },
      { order = 16, role = "ALL", text = "Clear right side first or patrol depending on timing.", type = "Call", id = "gui-KY41qFQ1iwY" },
      { order = 17, role = "ALL", text = "Middle group last. Must clear both sides of steps as they pull-in with boss.", type = "Call", id = "gui-nI68QelBas" },
      { order = 18, role = "ALL", text = "Final boss: Prioress Murrpray after full clear.", type = "Call", id = "gui-3Jm9aaC5QpY" },
      { order = 19, role = "ALL", text = "Boss Fight: Prioress Murrpray", type = "Jump", target="Prioress Murrpray", id = "gui-U0-2uRhkhky" }
    },
  },
  
  ["Captain Dailcry"] = {
    id = "enc-priory-captain-dailcry",
    order = 3,
    header = "Boss: Captain Dailcry",
    entries = {
      { order = 1, role = "ALL", text = "Interrupt Cinder Blast (Duelmall) every time or tank dies.", type = "Interrupt", id = "gui-2p15Xrf8voo" },
      { order = 2, role = "ALL", text = "Kick Battle Cry - group damage + Trusted Guard gets enraged.", type = "Interrupt", id = "gui-YV1GVLmqD4" },
      { order = 3, role = "ALL", text = "Dodge Hurl Spear - line attack applies bleed to all hit.", type = "Mechanic", id = "gui-aEyJA0UiFA" },
      { order = 4, role = "ALL", text = "Savage Mauling incoming - burn absorb to stop the channel.", type = "Call", id = "gui-eoZO2tTUQaw" },
      { order = 5, role = "ALL", text = "Trusted Guard shares HP - cleave but don't focus.", type = "Mechanic", id = "gui-mrNhZ3t42uo" },
      { order = 6, role = "TANK", text = "Use major for Pierce Armor - big hit + stacking bleed.", type = "Mechanic", id = "gui-CK9pMeUDTYQ" },
      { order = 7, role = "TANK", text = "Face boss away from group to control Hurl Spear direction.", type = "Position", id = "gui-79sv3ogp88" },
      { order = 8, role = "TANK", text = "Taunt Trusted Guard instantly. Do not let it cleave others.", type = "Mechanic", id = "gui-pbmMTjgMJoo" },
      { order = 9, role = "TANK", text = "Reposition out of swirlies from Guard's Emberstorm if active.", type = "Mechanic", id = "gui-1xPG2G2iDNY" },
      { order = 10, role = "TANK", text = "Mitigate Pierce + Mauling overlap - high physical burst.", type = "Mechanic", id = "gui-k5RRIMwggo" },
      { order = 11, role = "HEALER", text = "CDs for Savage Mauling + Pierce Armor bleed combo.", type = "Call", id = "gui-Nb61TSIUZRQ" },
      { order = 12, role = "HEALER", text = "Top players with Hurl Spear bleed. Watch melee stack.", type = "Mechanic", id = "gui-libYLuQeFCY" },
      { order = 13, role = "DPS", text = "Pool CDs for Mauling absorb. Interrupt Cinderblast if Guard active.", type = "Mechanic", id = "gui-IGIWI4eWHqg" },
      { order = 14, role = "DPS", text = "Cleave Trusted Guard to boost boss damage. Avoid overfocus.", type = "Mechanic", id = "gui-bS3SqSzHyI" }
    },
  },
  
  ["Baron Braunpyke"] = {
    id = "enc-priory-baron-braunpyke",
    order = 4,
    header = "Boss: Baron Braunpyke",
    entries = {
      { order = 1, role = "ALL", text = "Vindictive Wrath active - all boss abilities are stronger. Play safe.", type = "Call", id = "gui-lQUg69I0rz8" },
      { order = 2, role = "ALL", text = "Hammer of Purity: Group up + bait to one side. Move as a unit.", type = "Call", id = "gui-m5VFEzJeU" },
      { order = 3, role = "ALL", text = "Empowered: 5x Hammer zones. Stack before cast to manage space.", type = "Mechanic", id = "gui-xI3TyHf73os" },
      { order = 4, role = "ALL", text = "Sacrificial Pyre: Soak 3x (5x if empowered). Rotate soakers, don't overstack.", type = "Mechanic", id = "gui-RscBFbvu75s" },
      { order = 5, role = "ALL", text = "Use immunities to soak Pyres safely - avoid excessive DoT stacks.", type = "Mechanic", id = "gui-Zw5wuFzD0GQ" },
      { order = 6, role = "TANK", text = "Pull boss to room edge to bait hammers safely.", type = "Position", id = "gui-eM8RoOCiNJQ" },
      { order = 7, role = "TANK", text = "Soak 2x Sacrificial Pyres with defensive - announce timing.", type = "Mechanic", id = "gui-iPFjC9QzOm4" },
      { order = 8, role = "TANK", text = "Reposition boss opposite group post-Hammer cast.", type = "Position", id = "gui-oKBapvHVGE" },
      { order = 9, role = "HEALER", text = "Prepare CDs before Empowered Pyre soak or stacked hammers.", type = "Call", id = "gui-d0mbSvIbDk" },
      { order = 10, role = "HEALER", text = "Watch Sacrificial Flame DoT stacks - heal soakers immediately.", type = "Mechanic", id = "gui-tSsR27tXMwI" },
      { order = 11, role = "DPS", text = "Stack with group for Hammer baits. Don't panic spread.", type = "Mechanic", id = "gui-UkjDZFB7z8E" },
      { order = 12, role = "DPS", text = "Rotate Pyre soaks smartly - avoid doubling up or early clears.", type = "Mechanic", id = "gui-OdoqP2w4r64" }
    },
  },
  
  ["Prioress Murrpray"] = {
    id = "enc-priory-prioress-murrpray",
    order = 5,
    header = "Boss: Prioress Murrpray",
    entries = {
      { order = 1, role = "ALL", text = "Holy Flame puddle - move ASAP to avoid DoT + flames.", type = "Mechanic", id = "gui-nGxKbznuGbQ" },
      { order = 2, role = "ALL", text = "Turn away before Blinding Light cast finishes or be disoriented.", type = "Mechanic", id = "gui-bKVoYnUrbSo" },
      { order = 3, role = "ALL", text = "Interrupt Holy Smite - high tank + group damage.", type = "Interrupt", id = "gui-ufY2U8htLEQ" },
      { order = 4, role = "ALL", text = "Phase 2: Burn shield fast to interrupt Embrace the Light.", type = "Call", id = "gui-1b15vL44iKI" },
      { order = 5, role = "ALL", text = "Use AoE roots, knockbacks, slows to delay adds on upper platform.", type = "Mechanic", id = "gui-txUgMoLoT4c" },
      { order = 6, role = "TANK", text = "Tank boss near edge. Kite Purify beam back to conserve space.", type = "Position", id = "gui-wepajojg9xc" },
      { order = 7, role = "TANK", text = "Cooldown if Inner Fire overlaps with Blinding Light.", type = "Mechanic", id = "gui-hRHRYE6wovI" },
      { order = 8, role = "TANK", text = "Grab adds as they reach the platform - they melee and pulse.", type = "Mechanic", id = "gui-lIdXIYqAdhM" },
      { order = 9, role = "TANK", text = "Help burst shield with offensive cooldowns.", type = "Call", id = "gui-IhNLY9CwQMs" },
      { order = 10, role = "HEALER", text = "CDs for Inner Fire + Blinding Light overlap - heavy AoE.", type = "Call", id = "gui-g4mpRvyuIQ" },
      { order = 11, role = "HEALER", text = "Heal through Embrace the Light channel - it pulses until broken.", type = "Mechanic", id = "gui-oR8NQhYPgrU" },
      { order = 12, role = "HEALER", text = "Top off beam targets. Flame DoT can stack quickly.", type = "Mechanic", id = "gui-CN85LPJHq4" },
      { order = 13, role = "DPS", text = "Interrupt Holy Smite. Rotate if healer is locked down.", type = "Interrupt", id = "gui-ZLFZHIg0ltQ" },
      { order = 14, role = "DPS", text = "Pop CDs on upper platform to break shield quickly.", type = "Call", id = "gui-AsgaLXqBSTE" },
      { order = 15, role = "DPS", text = "Help slow and CC adds. Avoid tank/healer pressure.", type = "Mechanic", id = "gui-8HCUvLJiYtw" }
    }
  }
}
