DungeonGuide_Guides["Priory of the Sacred Flame"] = {
  id = "dung-priory",
  ["Priory of the Sacred Flame"] = {
    id = "enc-priory-guide",
    order = 1,
    header = "Guide: Priory of the Sacred Flame",
    ALL = {
      { text = "Paladin/Priest can activate flame orb for 30min Holy AoE proc buff.", type = "Mechanic", id = "gui-ECoA78wXczY" },
      { text = "You must fight Dailcry + 1 Trusted Guard. Kill 2 of 3 Lieutenants to remove 1.", type = "Mechanic", id = "gui-xObZTyb5rmc" },
      { text = "Interrupts: Greater Heal (Priest), Fireball Volley (Mage), Battle Cry (Dailcry), Burning Light (Braunpyke), Cinderblast (Taener).", type = "Interrupt", id = "gui-qSpU9KDDLfE" },
      { text = "Kill Risen Mages/Footmen staggered — death AoE heals allies via Light Expulsion.", type = "Mechanic", id = "gui-IZ4lXRY2ys" },
      { text = "Trusted Guards, Knights, Lightspawns, and Lieutenants are CC-immune. Plan interrupts.", type = "Mechanic", id = "gui-5Kpqm4roYxU" },
      { text = "Play stacked and rotate movement during Braunpyke and Murrpray to dodge beams, swirlies, and hammers.", type = "Mechanic", id = "gui-Hc7EHgsPeU" },
      { text = "Trusted Guard tankbusters: Cinderblast (Taener), Blazing Strike (Braunpyke). Kick or mitigate.", type = "Mechanic", id = "gui-0gH4a2cvPqI" },
      { text = "Some trash pulls have chain interrupts and high AoE — pre-assign kicks.", type = "Mechanic", id = "gui-DsSywAWLVPo" }
    },
    TANK = {
      { text = "CDs for: Pierce Armor (Dailcry), Divine Judgment (Elaena), Blazing Strike (Braunpyke). Bleeds stack fast.", type = "Mechanic", id = "gui-sm3oozn6i4" },
      { text = "Pre-plan group soaks and positioning for Braunpyke and Murrpray phases.", type = "Mechanic", id = "gui-27O7YaAhC3Y" },
      { text = "Taunt Trusted Guard (Captain Dailcry) instantly. Don’t let it melee others.", type = "Mechanic", id = "gui-MDgdiC419w" }
    },
    HEALER = {
      { text = "High group damage from: Heat Wave, Holy Radiance, Vindictive Wrath, Inner Fire, Embrace the Light (P2).", type = "Mechanic", id = "gui-veBVRECAq2Q" },
      { text = "Dispel: Reflective Shield (Aemya), Divine Judgment debuff, Impale/bleeds, Heat Wave slows.", type = "Mechanic", id = "gui-IVplJVD2gIE" }
    },
    DPS = {
      { text = "Save cooldowns for Murrpray intermission shield — faster break = fewer add waves.", type = "Mechanic", id = "gui-LJjhkqAzwHQ" },
      { text = "Soak Sacrificial Pyres properly. Avoid doubling up. Immunity/tank soak if needed.", type = "Mechanic", id = "gui-9MQ1wJw2wjE" }
    }
  },

  ["Route"] = {
    id = "enc-priory-route",
    order = 2,
    header = "Route: Priory of the Sacred Flame",
    ALL = {
      { text = "Big pull to start with Footmen into Patrol into 2x packs at Fountain. Bloodlust here.", type = "Call", id = "gui-kIhqDxwfWk" },
      { text = "Pull Guard Captain Suleyman next. Position on RIGHT stairs for Shield Slam.", type = "Call", id = "gui-gfqks7ejSUQ" },
      { text = "Up the stairs for Sergeant Shaynemail when she runs in + RIGHT pack.", type = "Call", id = "gui-cyzAUTtDF8" },
      { text = "Patrol + tree-side 3-pack next.", type = "Call", id = "gui-UPNVz3p2NV0" },
      { text = "Chain Conjurers + Lightspawn + Neophytes. Respect tank damage.", type = "Call", id = "gui-Zc4XA9N91ZA" },
      { text = "Pull High Priest Aemya next. Focus interrupts.", type = "Call", id = "gui-eX5R4W9h0X8" },
      { text = "Move to catch Duelmal mid-run if possible.", type = "Call", id = "gui-ewaWcy1DJM" },
      { text = "Fight Captain Dailcry next. South-side mini-boss preferred for cleave.", type = "Call", id = "gui-m40lJTaD7t8" },
      { text = "Full pull Cathedral Neophytes first. Watch Sacred Toll casts.", type = "Mechanic", id = "gui-UeSsgsKPaXU" },
      { text = "Clear left side first in Cathedral. Then right side.", type = "Call", id = "gui-X9FH87CTkxc" },
      { text = "After Braunpyke, pull double Paladins, Priests, and Templars.", type = "Call", id = "gui-z4qacZAObMk" },
      { text = "LOS first stairwell pack into stairwell for safe pull.", type = "Position", id = "gui-FRgix4GVT4" },
      { text = "Focus Lightspawns carefully. Avoid healing mobs with Purification zones.", type = "Mechanic", id = "gui-Q2t7EOfZrZE" },
      { text = "Clear right side first or patrol depending on timing.", type = "Call", id = "gui-KY41qFQ1iwY" },
      { text = "Middle group last. Must clear both sides of steps as they pull-in with boss.", type = "Call", id = "gui-nI68QelBas" },
      { text = "Final boss: Prioress Murrpray after full clear.", type = "Call", id = "gui-3Jm9aaC5QpY" },
    },
  },
  
  ["Captain Dailcry"] = {
    id = "enc-priory-captain-dailcry",
    order = 3,
    header = "Boss: Captain Dailcry",
    ALL = {
      { text = "Interrupt Cinder Blast (Duelmall) every time or tank dies.", type = "Interrupt", id = "gui-2p15Xrf8voo" },
      { text = "Kick Battle Cry — group damage + Trusted Guard gets enraged.", type = "Interrupt", id = "gui-YV1GVLmqD4" },
      { text = "Dodge Hurl Spear — line attack applies bleed to all hit.", type = "Mechanic", id = "gui-aEyJA0UiFA" },
      { text = "Savage Mauling incoming — burn absorb to stop the channel.", type = "Call", id = "gui-eoZO2tTUQaw" },
      { text = "Trusted Guard shares HP — cleave but don’t focus.", type = "Mechanic", id = "gui-mrNhZ3t42uo" }
    },
    TANK = {
      { text = "Use major for Pierce Armor — big hit + stacking bleed.", type = "Mechanic", id = "gui-CK9pMeUDTYQ" },
      { text = "Face boss away from group to control Hurl Spear direction.", type = "Position", id = "gui-79sv3ogp88" },
      { text = "Taunt Trusted Guard instantly. Do not let it cleave others.", type = "Mechanic", id = "gui-pbmMTjgMJoo" },
      { text = "Reposition out of swirlies from Guard’s Emberstorm if active.", type = "Mechanic", id = "gui-1xPG2G2iDNY" },
      { text = "Mitigate Pierce + Mauling overlap — high physical burst.", type = "Mechanic", id = "gui-k5RRIMwggo" }
    },
    HEALER = {
      { text = "CDs for Savage Mauling + Pierce Armor bleed combo.", type = "Call", id = "gui-Nb61TSIUZRQ" },
      { text = "Top players with Hurl Spear bleed. Watch melee stack.", type = "Mechanic", id = "gui-libYLuQeFCY" }
    },
    DPS = {
      { text = "Pool CDs for Mauling absorb. Interrupt Cinderblast if Guard active.", type = "Mechanic", id = "gui-IGIWI4eWHqg" },
      { text = "Cleave Trusted Guard to boost boss damage. Avoid overfocus.", type = "Mechanic", id = "gui-bS3SqSzHyI" }
    }
  },
  
  ["Baron Braunpyke"] = {
    id = "enc-priory-baron-braunpyke",
    order = 4,
    header = "Boss: Baron Braunpyke",
    ALL = {
      { text = "Vindictive Wrath active — all boss abilities are stronger. Play safe.", type = "Call", id = "gui-lQUg69I0rz8" },
      { text = "Hammer of Purity: Group up + bait to one side. Move as a unit.", type = "Call", id = "gui-m5VFEzJeU" },
      { text = "Empowered: 5x Hammer zones. Stack before cast to manage space.", type = "Mechanic", id = "gui-xI3TyHf73os" },
      { text = "Sacrificial Pyre: Soak 3x (5x if empowered). Rotate soakers, don’t overstack.", type = "Mechanic", id = "gui-RscBFbvu75s" },
      { text = "Use immunities to soak Pyres safely — avoid excessive DoT stacks.", type = "Mechanic", id = "gui-Zw5wuFzD0GQ" }
    },
    TANK = {
      { text = "Pull boss to room edge to bait hammers safely.", type = "Position", id = "gui-eM8RoOCiNJQ" },
      { text = "Soak 2x Sacrificial Pyres with defensive — announce timing.", type = "Mechanic", id = "gui-iPFjC9QzOm4" },
      { text = "Reposition boss opposite group post-Hammer cast.", type = "Position", id = "gui-oKBapvHVGE" }
    },
    HEALER = {
      { text = "Prepare CDs before Empowered Pyre soak or stacked hammers.", type = "Call", id = "gui-d0mbSvIbDk" },
      { text = "Watch Sacrificial Flame DoT stacks — heal soakers immediately.", type = "Mechanic", id = "gui-tSsR27tXMwI" }
    },
    DPS = {
      { text = "Stack with group for Hammer baits. Don’t panic spread.", type = "Mechanic", id = "gui-UkjDZFB7z8E" },
      { text = "Rotate Pyre soaks smartly — avoid doubling up or early clears.", type = "Mechanic", id = "gui-OdoqP2w4r64" }
    }
  },
  
  ["Prioress Murrpray"] = {
    id = "enc-priory-prioress-murrpray",
    order = 5,
    header = "Boss: Prioress Murrpray",
    ALL = {
      { text = "Holy Flame puddle — move ASAP to avoid DoT + flames.", type = "Mechanic", id = "gui-nGxKbznuGbQ" },
      { text = "Turn away before Blinding Light cast finishes or be disoriented.", type = "Mechanic", id = "gui-bKVoYnUrbSo" },
      { text = "Interrupt Holy Smite — high tank + group damage.", type = "Interrupt", id = "gui-ufY2U8htLEQ" },
      { text = "Phase 2: Burn shield fast to interrupt Embrace the Light.", type = "Call", id = "gui-1b15vL44iKI" },
      { text = "Use AoE roots, knockbacks, slows to delay adds on upper platform.", type = "Mechanic", id = "gui-txUgMoLoT4c" }
    },
    TANK = {
      { text = "Tank boss near edge. Kite Purify beam back to conserve space.", type = "Position", id = "gui-wepajojg9xc" },
      { text = "Cooldown if Inner Fire overlaps with Blinding Light.", type = "Mechanic", id = "gui-hRHRYE6wovI" },
      { text = "Grab adds as they reach the platform — they melee and pulse.", type = "Mechanic", id = "gui-lIdXIYqAdhM" },
      { text = "Help burst shield with offensive cooldowns.", type = "Call", id = "gui-IhNLY9CwQMs" }
    },
    HEALER = {
      { text = "CDs for Inner Fire + Blinding Light overlap — heavy AoE.", type = "Call", id = "gui-g4mpRvyuIQ" },
      { text = "Heal through Embrace the Light channel — it pulses until broken.", type = "Mechanic", id = "gui-oR8NQhYPgrU" },
      { text = "Top off beam targets. Flame DoT can stack quickly.", type = "Mechanic", id = "gui-CN85LPJHq4" }
    },
    DPS = {
      { text = "Interrupt Holy Smite. Rotate if healer is locked down.", type = "Interrupt", id = "gui-ZLFZHIg0ltQ" },
      { text = "Pop CDs on upper platform to break shield quickly.", type = "Call", id = "gui-AsgaLXqBSTE" },
      { text = "Help slow and CC adds. Avoid tank/healer pressure.", type = "Mechanic", id = "gui-8HCUvLJiYtw" }
    }
  }
}