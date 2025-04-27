DungeonGuide_Guides["Priory of the Sacred Flame"] = {
  ["Priory of the Sacred Flame"] = {
    order = 1,
    header = "Guide: Priory of the Sacred Flame",
    ALL = {
      { text = "Paladin/Priest can activate flame orb for 30min Holy AoE proc buff.", type = "Mechanic" },
      { text = "You must fight Dailcry + 1 Trusted Guard. Kill 2 of 3 Lieutenants to remove 1.", type = "Mechanic" },
      { text = "Interrupts: Greater Heal (Priest), Fireball Volley (Mage), Battle Cry (Dailcry), Burning Light (Braunpyke), Cinderblast (Taener).", type = "Interrupt" },
      { text = "Kill Risen Mages/Footmen staggered — death AoE heals allies via Light Expulsion.", type = "Mechanic" },
      { text = "Trusted Guards, Knights, Lightspawns, and Lieutenants are CC-immune. Plan interrupts.", type = "Mechanic" },
      { text = "Play stacked and rotate movement during Braunpyke and Murrpray to dodge beams, swirlies, and hammers.", type = "Mechanic" },
      { text = "Trusted Guard tankbusters: Cinderblast (Taener), Blazing Strike (Braunpyke). Kick or mitigate.", type = "Mechanic" },
      { text = "Some trash pulls have chain interrupts and high AoE — pre-assign kicks.", type = "Mechanic" }
    },
    TANK = {
      { text = "CDs for: Pierce Armor (Dailcry), Divine Judgment (Elaena), Blazing Strike (Braunpyke). Bleeds stack fast.", type = "Mechanic" },
      { text = "Pre-plan group soaks and positioning for Braunpyke and Murrpray phases.", type = "Mechanic" },
      { text = "Taunt Trusted Guard (Captain Dailcry) instantly. Don’t let it melee others.", type = "Mechanic" }
    },
    HEALER = {
      { text = "High group damage from: Heat Wave, Holy Radiance, Vindictive Wrath, Inner Fire, Embrace the Light (P2).", type = "Mechanic" },
      { text = "Dispel: Reflective Shield (Aemya), Divine Judgment debuff, Impale/bleeds, Heat Wave slows.", type = "Mechanic" }
    },
    DPS = {
      { text = "Save cooldowns for Murrpray intermission shield — faster break = fewer add waves.", type = "Mechanic" },
      { text = "Soak Sacrificial Pyres properly. Avoid doubling up. Immunity/tank soak if needed.", type = "Mechanic" }
    }
  },

  ["Route"] = {
    order = 2,
    header = "Route: Priory of the Sacred Flame",
    ALL = {
      { text = "Big pull to start with Footmen into Patrol into 2x packs at Fountain. Bloodlust here.", type = "Call" },
      { text = "Pull Guard Captain Suleyman next. Position on RIGHT stairs for Shield Slam.", type = "Call" },
      { text = "Up the stairs for Sergeant Shaynemail when she runs in + RIGHT pack.", type = "Call" },
      { text = "Patrol + tree-side 3-pack next.", type = "Call" },
      { text = "Chain Conjurers + Lightspawn + Neophytes. Respect tank damage.", type = "Call" },
      { text = "Pull High Priest Aemya next. Focus interrupts.", type = "Call" },
      { text = "Move to catch Duelmal mid-run if possible.", type = "Call" },
      { text = "Fight Captain Dailcry next. South-side mini-boss preferred for cleave.", type = "Call" },
      { text = "Full pull Cathedral Neophytes first. Watch Sacred Toll casts.", type = "Mechanic" },
      { text = "Clear left side first in Cathedral. Then right side.", type = "Call" },
      { text = "After Braunpyke, pull double Paladins, Priests, and Templars.", type = "Call" },
      { text = "LOS first stairwell pack into stairwell for safe pull.", type = "Position" },
      { text = "Focus Lightspawns carefully. Avoid healing mobs with Purification zones.", type = "Mechanic" },
      { text = "Clear right side first or patrol depending on timing.", type = "Call" },
      { text = "Middle group last. Must clear both sides of steps as they pull-in with boss.", type = "Call" },
      { text = "Final boss: Prioress Murrpray after full clear.", type = "Call" },
    },
  },
  
  ["Captain Dailcry"] = {
    order = 3,
    header = "Boss: Captain Dailcry",
    ALL = {
      { text = "Interrupt Cinder Blast (Duelmall) every time or tank dies.", type = "Interrupt" },
      { text = "Kick Battle Cry — group damage + Trusted Guard gets enraged.", type = "Interrupt" },
      { text = "Dodge Hurl Spear — line attack applies bleed to all hit.", type = "Mechanic" },
      { text = "Savage Mauling incoming — burn absorb to stop the channel.", type = "Call" },
      { text = "Trusted Guard shares HP — cleave but don’t focus.", type = "Mechanic" }
    },
    TANK = {
      { text = "Use major for Pierce Armor — big hit + stacking bleed.", type = "Mechanic" },
      { text = "Face boss away from group to control Hurl Spear direction.", type = "Position" },
      { text = "Taunt Trusted Guard instantly. Do not let it cleave others.", type = "Mechanic" },
      { text = "Reposition out of swirlies from Guard’s Emberstorm if active.", type = "Mechanic" },
      { text = "Mitigate Pierce + Mauling overlap — high physical burst.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs for Savage Mauling + Pierce Armor bleed combo.", type = "Call" },
      { text = "Top players with Hurl Spear bleed. Watch melee stack.", type = "Mechanic" }
    },
    DPS = {
      { text = "Pool CDs for Mauling absorb. Interrupt Cinderblast if Guard active.", type = "Mechanic" },
      { text = "Cleave Trusted Guard to boost boss damage. Avoid overfocus.", type = "Mechanic" }
    }
  },
  
  ["Baron Braunpyke"] = {
    order = 4,
    header = "Boss: Baron Braunpyke",
    ALL = {
      { text = "Vindictive Wrath active — all boss abilities are stronger. Play safe.", type = "Call" },
      { text = "Hammer of Purity: Group up + bait to one side. Move as a unit.", type = "Call" },
      { text = "Empowered: 5x Hammer zones. Stack before cast to manage space.", type = "Mechanic" },
      { text = "Sacrificial Pyre: Soak 3x (5x if empowered). Rotate soakers, don’t overstack.", type = "Mechanic" },
      { text = "Use immunities to soak Pyres safely — avoid excessive DoT stacks.", type = "Mechanic" }
    },
    TANK = {
      { text = "Pull boss to room edge to bait hammers safely.", type = "Position" },
      { text = "Soak 2x Sacrificial Pyres with defensive — announce timing.", type = "Mechanic" },
      { text = "Reposition boss opposite group post-Hammer cast.", type = "Position" }
    },
    HEALER = {
      { text = "Prepare CDs before Empowered Pyre soak or stacked hammers.", type = "Call" },
      { text = "Watch Sacrificial Flame DoT stacks — heal soakers immediately.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stack with group for Hammer baits. Don’t panic spread.", type = "Mechanic" },
      { text = "Rotate Pyre soaks smartly — avoid doubling up or early clears.", type = "Mechanic" }
    }
  },
  
  ["Prioress Murrpray"] = {
    order = 5,
    header = "Boss: Prioress Murrpray",
    ALL = {
      { text = "Holy Flame puddle — move ASAP to avoid DoT + flames.", type = "Mechanic" },
      { text = "Turn away before Blinding Light cast finishes or be disoriented.", type = "Mechanic" },
      { text = "Interrupt Holy Smite — high tank + group damage.", type = "Interrupt" },
      { text = "Phase 2: Burn shield fast to interrupt Embrace the Light.", type = "Call" },
      { text = "Use AoE roots, knockbacks, slows to delay adds on upper platform.", type = "Mechanic" }
    },
    TANK = {
      { text = "Tank boss near edge. Kite Purify beam back to conserve space.", type = "Position" },
      { text = "Cooldown if Inner Fire overlaps with Blinding Light.", type = "Mechanic" },
      { text = "Grab adds as they reach the platform — they melee and pulse.", type = "Mechanic" },
      { text = "Help burst shield with offensive cooldowns.", type = "Call" }
    },
    HEALER = {
      { text = "CDs for Inner Fire + Blinding Light overlap — heavy AoE.", type = "Call" },
      { text = "Heal through Embrace the Light channel — it pulses until broken.", type = "Mechanic" },
      { text = "Top off beam targets. Flame DoT can stack quickly.", type = "Mechanic" }
    },
    DPS = {
      { text = "Interrupt Holy Smite. Rotate if healer is locked down.", type = "Interrupt" },
      { text = "Pop CDs on upper platform to break shield quickly.", type = "Call" },
      { text = "Help slow and CC adds. Avoid tank/healer pressure.", type = "Mechanic" }
    }
  }
}