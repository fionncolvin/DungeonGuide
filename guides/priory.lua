DungeonGuide_Guides["Priory of the Sacred Flame"] = {
  ["Priory of the Sacred Flame"] = {
    order = 1,
    header = "Guide: Priory of the Sacred Flame",
    ALL = {
      { text = "Paladin and Priest can activate the orb in the courtyard and final boss room for Blessing of the Sacred Flame (30min Holy AoE proc).", type = "Mechanic" },
      { text = "You must fight 1 Trusted Guard with Dailcry. Defeat any 2 of 3 Lieutenants to choose which is removed. Taener Duelmal is generally preferred.", type = "Mechanic" },
      { text = "Interrupt priority: Greater Heal (Devout Priest), Fireball Volley (Risen Mage), Battle Cry (Dailcry), Burning Light (Braunpyke), Cinderblast (Taener).", type = "Interrupt" },
      { text = "Kill Risen Footmen and Risen Mages staggered — Light Expulsion death effect deals AoE and heals nearby mobs.", type = "Mechanic" },
      { text = "CC-immune mobs include Arathi Knights, Lightspawns, all Lieutenants and Trusted Guards. Plan kicks and avoid stacking these.", type = "Mechanic" },
      { text = "Play grouped and rotate as a unit in Braunpyke and Murrpray fights to simplify swirlies, beams, and hammer dodges.", type = "Mechanic" }
    },
    TANK = {
      { text = "Pierce Armor (Dailcry), Divine Judgment (Elaena), and Blazing Strike (Sir Braunpyke) all require CDs — stacking bleeds are common.", type = "Mechanic" },
      { text = "Plan positioning for bursty swirls and soak circles (especially Braunpyke and Murrpray intermission).", type = "Mechanic" }
    },
    HEALER = {
      { text = "High group damage from Heat Wave (Damian), Holy Radiance (Elaena), Vindictive Wrath (Braunpyke), Inner Fire (Murrpray), and Embrace the Light (Murrpray intermission).", type = "Mechanic" },
      { text = "Dispel priorities: Reflective Shield (Aemya), Divine Judgment debuff (Elaena), bleeds from Impale and War Lynxes, and any magic slows from Heat Wave.", type = "Mechanic" }
    },
    DPS = {
      { text = "Save damage cooldowns for Murrpray intermission shield — faster break = fewer add waves.", type = "Mechanic" },
      { text = "Coordinate soaks on Sacrificial Pyre and avoid overstacking — use immunities or tank CDs if soaking twice.", type = "Mechanic" }
    }
  },

  ["Captain Dailcry"] = {
    order = 2,
    header = "Boss: Captain Dailcry",
    ALL = {
      { text = "Interrupt Battle Cry — group dmg + Trusted Guard enrages.", type = "Interrupt" },
      { text = "Interrupt Cinderblast from guard if active — lethal tank hit + stun.", type = "Interrupt" },
      { text = "Savage Mauling. Burn shield quickly.", type = "Call" },
      { text = "Dodge Hurl Spear — it pierces all players in its path.", type = "Mechanic" }
    },
    TANK = {
      { text = "Use defensive for Pierce Armor — heavy hit + stacking bleed.", type = "Mechanic" },
      { text = "Position boss so group avoids Hurl Spear line.", type = "Position" },
      { text = "Pick up Trusted Guard ASAP — taunt on spawn.", type = "Mechanic" },
      { text = "Save taunt if Savage Mauling lands on you and healer is stunned or out of range.", type = "Mechanic" },
      { text = "Position Trusted Guard near boss to cleave both efficiently.", type = "Position" },
      { text = "Savage Mauling incoming, prepare absorb burn phase.", type = "Call" }
    }
  },

  ["Baron Braunpyke"] = {
    order = 3,
    header = "Boss: Baron Braunpyke",
    ALL = {
      { text = "Interrupt Burning Light — heavy dmg + boss heal.", type = "Interrupt" },
      { text = "Empowered phase. Stagger sacrificial pyre soaks.", type = "Call" },
      { text = "Avoid standing near sacrificial pyres not being soaked.", type = "Mechanic" }
    },
    TANK = {
      { text = "Soak up to 2 stacks from Sacrificial Pyre with defensive.", type = "Mechanic" },
      { text = "Tank boss on edges and bait after Hammer of Purity to safe zone.", type = "Position" },
      { text = "Pick up adds quickly during Empowered phase to reduce chaos.", type = "Mechanic" },
      { text = "I'll soak two in Empowered Pyre, You split the rest.", type = "Call" },
      { text = "Watch boss energy. Position group for safe bait during Empowered phase.", type = "Position" },
      { text = "Soaking Pyre now.", type = "Call" }
    }
  },

  ["Prioress Murrpray"] = {
    order = 4,
    header = "Boss: Prioress Murrpray",
    ALL = {
      { text = "Interrupt Holy Smite — random target holy burst.", type = "Interrupt" },
      { text = "Phase 2. I will burst shield fast and CC adds.", type = "Call" },
      { text = "Avoid AoE flash from Blinding Light cast by turning away.", type = "Mechanic" }
    },
    TANK = {
      { text = "Position boss so Purify beam is kited to edge.", type = "Position" },
      { text = "Rotate cooldowns for Inner Fire + Blinding Light overlap.", type = "Mechanic" },
      { text = "Hold aggro on adds during intermission if they reach platform.", type = "Mechanic" },
      { text = "Assist in shield burn using big cooldowns — timing matters!", type = "Call" },
      { text = "Pull boss slightly to edge to help ranged bait Holy Flame puddles.", type = "Position" }
    }
  }
}