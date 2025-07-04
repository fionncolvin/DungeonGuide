DungeonGuide_Guides["Priory of the Sacred Flame"] = {
  id = "dung-priory",
  ["Priory of the Sacred Flame"] = {
    id = "enc-priory-guide",
    order = 1,
    header = "Intro",
    entries = {
      { role = "ALL", text = "Paladin/Priest can activate flame orb for 30min Holy AoE proc buff.", type = "Mechanic", id = "gui-ECoA78wXczY" },
      { role = "ALL", text = "You must fight Dailcry + 1 Trusted Guard. Kill 2 of 3 Lieutenants to remove 1.", type = "Mechanic", id = "gui-xObZTyb5rmc" },
      { role = "ALL", text = "Interrupts: Greater Heal (Priest), Fireball Volley (Mage), Battle Cry (Dailcry), Burning Light (Braunpyke), Cinderblast (Taener).", type = "Interrupt", id = "gui-qSpU9KDDLfE" },
      { role = "ALL", text = "Kill Risen Mages/Footmen staggered — death AoE heals allies via Light Expulsion.", type = "Mechanic", id = "gui-IZ4lXRY2ys" },
      { role = "ALL", text = "Trusted Guards, Knights, Lightspawns, and Lieutenants are CC-immune. Plan interrupts.", type = "Mechanic", id = "gui-5Kpqm4roYxU" },
      { role = "ALL", text = "Play stacked and rotate movement during Braunpyke and Murrpray to dodge beams, swirlies, and hammers.", type = "Mechanic", id = "gui-Hc7EHgsPeU" },
      { role = "ALL", text = "Trusted Guard tankbusters: Cinderblast (Taener), Blazing Strike (Braunpyke). Kick or mitigate.", type = "Mechanic", id = "gui-0gH4a2cvPqI" },
      { role = "ALL", text = "Some trash pulls have chain interrupts and high AoE — pre-assign kicks.", type = "Mechanic", id = "gui-DsSywAWLVPo" },
      { role = "TANK", text = "CDs for: Pierce Armor (Dailcry), Divine Judgment (Elaena), Blazing Strike (Braunpyke). Bleeds stack fast.", type = "Mechanic", id = "gui-sm3oozn6i4" },
      { role = "TANK", text = "Pre-plan group soaks and positioning for Braunpyke and Murrpray phases.", type = "Mechanic", id = "gui-27O7YaAhC3Y" },
      { role = "TANK", text = "Taunt Trusted Guard (Captain Dailcry) instantly. Don’t let it melee others.", type = "Mechanic", id = "gui-MDgdiC419w" },
      { role = "HEALER", text = "High group damage from: Heat Wave, Holy Radiance, Vindictive Wrath, Inner Fire, Embrace the Light (P2).", type = "Mechanic", id = "gui-veBVRECAq2Q" },
      { role = "HEALER", text = "Dispel: Reflective Shield (Aemya), Divine Judgment debuff, Impale/bleeds, Heat Wave slows.", type = "Mechanic", id = "gui-IVplJVD2gIE" },
      { role = "DPS", text = "Save cooldowns for Murrpray intermission shield — faster break = fewer add waves.", type = "Mechanic", id = "gui-LJjhkqAzwHQ" },
      { role = "DPS", text = "Soak Sacrificial Pyres properly. Avoid doubling up. Immunity/tank soak if needed.", type = "Mechanic", id = "gui-9MQ1wJw2wjE" }
    },
  },

  ["Route"] = {
    id = "enc-priory-route",
    order = 2,
    header = "Route",
    entries = {
      { role = "ALL", text = "Big pull to start with Footmen into Patrol into 2x packs at Fountain. Bloodlust here.", type = "Call", id = "gui-kIhqDxwfWk" },
      { role = "ALL", text = "Pull Guard Captain Suleyman next. Position on RIGHT stairs for Shield Slam.", type = "Call", id = "gui-gfqks7ejSUQ" },
      { role = "ALL", text = "Up the stairs for Sergeant Shaynemail when she runs in + RIGHT pack.", type = "Call", id = "gui-cyzAUTtDF8" },
      { role = "ALL", text = "Patrol + tree-side 3-pack next.", type = "Call", id = "gui-UPNVz3p2NV0" },
      { role = "ALL", text = "Chain Conjurers + Lightspawn + Neophytes. Respect tank damage.", type = "Call", id = "gui-Zc4XA9N91ZA" },
      { role = "ALL", text = "Pull High Priest Aemya next. Focus interrupts.", type = "Call", id = "gui-eX5R4W9h0X8" },
      { role = "ALL", text = "Move to catch Duelmal mid-run if possible.", type = "Call", id = "gui-ewaWcy1DJM" },
      { role = "ALL", text = "Fight Captain Dailcry next. South-side mini-boss preferred for cleave.", type = "Call", id = "gui-m40lJTaD7t8" },
      { role = "ALL", text = "Full pull Cathedral Neophytes first. Watch Sacred Toll casts.", type = "Mechanic", id = "gui-UeSsgsKPaXU" },
      { role = "ALL", text = "Clear left side first in Cathedral. Then right side.", type = "Call", id = "gui-X9FH87CTkxc" },
      { role = "ALL", text = "After Braunpyke, pull double Paladins, Priests, and Templars.", type = "Call", id = "gui-z4qacZAObMk" },
      { role = "ALL", text = "LOS first stairwell pack into stairwell for safe pull.", type = "Position", id = "gui-FRgix4GVT4" },
      { role = "ALL", text = "Focus Lightspawns carefully. Avoid healing mobs with Purification zones.", type = "Mechanic", id = "gui-Q2t7EOfZrZE" },
      { role = "ALL", text = "Clear right side first or patrol depending on timing.", type = "Call", id = "gui-KY41qFQ1iwY" },
      { role = "ALL", text = "Middle group last. Must clear both sides of steps as they pull-in with boss.", type = "Call", id = "gui-nI68QelBas" },
      { role = "ALL", text = "Final boss: Prioress Murrpray after full clear.", type = "Call", id = "gui-3Jm9aaC5QpY" }
    },
  },
  
  ["Captain Dailcry"] = {
    id = "enc-priory-captain-dailcry",
    order = 3,
    header = "Boss: Captain Dailcry",
    entries = {
      { role = "ALL", text = "Interrupt Cinder Blast (Duelmall) every time or tank dies.", type = "Interrupt", id = "gui-2p15Xrf8voo" },
      { role = "ALL", text = "Kick Battle Cry — group damage + Trusted Guard gets enraged.", type = "Interrupt", id = "gui-YV1GVLmqD4" },
      { role = "ALL", text = "Dodge Hurl Spear — line attack applies bleed to all hit.", type = "Mechanic", id = "gui-aEyJA0UiFA" },
      { role = "ALL", text = "Savage Mauling incoming — burn absorb to stop the channel.", type = "Call", id = "gui-eoZO2tTUQaw" },
      { role = "ALL", text = "Trusted Guard shares HP — cleave but don’t focus.", type = "Mechanic", id = "gui-mrNhZ3t42uo" },
      { role = "TANK", text = "Use major for Pierce Armor — big hit + stacking bleed.", type = "Mechanic", id = "gui-CK9pMeUDTYQ" },
      { role = "TANK", text = "Face boss away from group to control Hurl Spear direction.", type = "Position", id = "gui-79sv3ogp88" },
      { role = "TANK", text = "Taunt Trusted Guard instantly. Do not let it cleave others.", type = "Mechanic", id = "gui-pbmMTjgMJoo" },
      { role = "TANK", text = "Reposition out of swirlies from Guard’s Emberstorm if active.", type = "Mechanic", id = "gui-1xPG2G2iDNY" },
      { role = "TANK", text = "Mitigate Pierce + Mauling overlap — high physical burst.", type = "Mechanic", id = "gui-k5RRIMwggo" },
      { role = "HEALER", text = "CDs for Savage Mauling + Pierce Armor bleed combo.", type = "Call", id = "gui-Nb61TSIUZRQ" },
      { role = "HEALER", text = "Top players with Hurl Spear bleed. Watch melee stack.", type = "Mechanic", id = "gui-libYLuQeFCY" },
      { role = "DPS", text = "Pool CDs for Mauling absorb. Interrupt Cinderblast if Guard active.", type = "Mechanic", id = "gui-IGIWI4eWHqg" },
      { role = "DPS", text = "Cleave Trusted Guard to boost boss damage. Avoid overfocus.", type = "Mechanic", id = "gui-bS3SqSzHyI" }
    },
  },
  
  ["Baron Braunpyke"] = {
    id = "enc-priory-baron-braunpyke",
    order = 4,
    header = "Boss: Baron Braunpyke",
    entries = {
      { role = "ALL", text = "Vindictive Wrath active — all boss abilities are stronger. Play safe.", type = "Call", id = "gui-lQUg69I0rz8" },
      { role = "ALL", text = "Hammer of Purity: Group up + bait to one side. Move as a unit.", type = "Call", id = "gui-m5VFEzJeU" },
      { role = "ALL", text = "Empowered: 5x Hammer zones. Stack before cast to manage space.", type = "Mechanic", id = "gui-xI3TyHf73os" },
      { role = "ALL", text = "Sacrificial Pyre: Soak 3x (5x if empowered). Rotate soakers, don’t overstack.", type = "Mechanic", id = "gui-RscBFbvu75s" },
      { role = "ALL", text = "Use immunities to soak Pyres safely — avoid excessive DoT stacks.", type = "Mechanic", id = "gui-Zw5wuFzD0GQ" },
      { role = "TANK", text = "Pull boss to room edge to bait hammers safely.", type = "Position", id = "gui-eM8RoOCiNJQ" },
      { role = "TANK", text = "Soak 2x Sacrificial Pyres with defensive — announce timing.", type = "Mechanic", id = "gui-iPFjC9QzOm4" },
      { role = "TANK", text = "Reposition boss opposite group post-Hammer cast.", type = "Position", id = "gui-oKBapvHVGE" },
      { role = "HEALER", text = "Prepare CDs before Empowered Pyre soak or stacked hammers.", type = "Call", id = "gui-d0mbSvIbDk" },
      { role = "HEALER", text = "Watch Sacrificial Flame DoT stacks — heal soakers immediately.", type = "Mechanic", id = "gui-tSsR27tXMwI" },
      { role = "DPS", text = "Stack with group for Hammer baits. Don’t panic spread.", type = "Mechanic", id = "gui-UkjDZFB7z8E" },
      { role = "DPS", text = "Rotate Pyre soaks smartly — avoid doubling up or early clears.", type = "Mechanic", id = "gui-OdoqP2w4r64" }
    },
  },
  
  ["Prioress Murrpray"] = {
    id = "enc-priory-prioress-murrpray",
    order = 5,
    header = "Boss: Prioress Murrpray",
    entries = {
      { role = "ALL", text = "Holy Flame puddle — move ASAP to avoid DoT + flames.", type = "Mechanic", id = "gui-nGxKbznuGbQ" },
      { role = "ALL", text = "Turn away before Blinding Light cast finishes or be disoriented.", type = "Mechanic", id = "gui-bKVoYnUrbSo" },
      { role = "ALL", text = "Interrupt Holy Smite — high tank + group damage.", type = "Interrupt", id = "gui-ufY2U8htLEQ" },
      { role = "ALL", text = "Phase 2: Burn shield fast to interrupt Embrace the Light.", type = "Call", id = "gui-1b15vL44iKI" },
      { role = "ALL", text = "Use AoE roots, knockbacks, slows to delay adds on upper platform.", type = "Mechanic", id = "gui-txUgMoLoT4c" },
      { role = "TANK", text = "Tank boss near edge. Kite Purify beam back to conserve space.", type = "Position", id = "gui-wepajojg9xc" },
      { role = "TANK", text = "Cooldown if Inner Fire overlaps with Blinding Light.", type = "Mechanic", id = "gui-hRHRYE6wovI" },
      { role = "TANK", text = "Grab adds as they reach the platform — they melee and pulse.", type = "Mechanic", id = "gui-lIdXIYqAdhM" },
      { role = "TANK", text = "Help burst shield with offensive cooldowns.", type = "Call", id = "gui-IhNLY9CwQMs" },
      { role = "HEALER", text = "CDs for Inner Fire + Blinding Light overlap — heavy AoE.", type = "Call", id = "gui-g4mpRvyuIQ" },
      { role = "HEALER", text = "Heal through Embrace the Light channel — it pulses until broken.", type = "Mechanic", id = "gui-oR8NQhYPgrU" },
      { role = "HEALER", text = "Top off beam targets. Flame DoT can stack quickly.", type = "Mechanic", id = "gui-CN85LPJHq4" },
      { role = "DPS", text = "Interrupt Holy Smite. Rotate if healer is locked down.", type = "Interrupt", id = "gui-ZLFZHIg0ltQ" },
      { role = "DPS", text = "Pop CDs on upper platform to break shield quickly.", type = "Call", id = "gui-AsgaLXqBSTE" },
      { role = "DPS", text = "Help slow and CC adds. Avoid tank/healer pressure.", type = "Mechanic", id = "gui-8HCUvLJiYtw" }
    },
  }
}