DungeonGuide_Guides["Operation: Floodgate"] = {
  ["Operation: Floodgate"] = {
    order = 1,
    header = "Guide: Operation: Floodgate",
    ALL = {
      { text = "Destroy 5 Weapon Stockpiles to unlock Swampface. One needs goblin glider — let tank go first.", type = "Mechanic" },
      { text = "After Demolition Duo, use rocket to destroy Zeppelin. Removes swamp spotlights.", type = "Mechanic" },
      { text = "Avoid patrol pulls. Many mobs are CC-immune or apply bleeds/healing absorbs.", type = "Mechanic" },
      { text = "Important kicks: Maximum Distortion, Trick Shot, Surveying Beam, Blood Bolt, Harpoon, Lightning Bolt.", type = "Interrupt" },
      { text = "Danger mobs: Shreddinator (saw/flame), Diver (Harpoon + bombs), Demolitionist (RPGG), Jumpstarter (AoE/tank hit).", type = "Mechanic" },
      { text = "Each Spark in Gigazap must touch a Dam Water puddle — don’t overlap.", type = "Mechanic" },
      { text = "Swampface dodge direction is always LEFT. Set expectation early.", type = "Mechanic" }
    },
    TANK = {
      { text = "Jumpstarter + Bloodwarper hit hard. Use CDs and pull slow.", type = "Mechanic" },
      { text = "Aggro Divers + Snipers fast. They spike group early.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Big healing: Jumpstart (M.O.M.M.A.), Bomb fail (Duo), Awaken (Swampface), Turbocharge (Gigazap).", type = "Mechanic" },
      { text = "Dispel bleeds/magic DoTs from Surveyors, Divers, and Soldiers quickly.", type = "Mechanic" }
    },
    DPS = {
      { text = "Plan CDs: Jumpstart, M.O.M.M.A. burn, Bomb waves, Sparks.", type = "Mechanic" },
      { text = "Interrupt + burn dangerous trash. Many do AoE or big hits.", type = "Mechanic" }
    }
  },
  
  ["Big M.O.M.M.A."] = {
    order = 2,
    header = "Boss: Big M.O.M.M.A.",
    ALL = {
      { text = "Interrupt Maximum Distortion — pulsing AoE + pushback.", type = "Interrupt" },
      { text = "Jumpstart phase — pop cooldowns and burn boss.", type = "Call" },
      { text = "Sonic Boom on you — aim away and dodge to avoid silence/explosion.", type = "Call" }
    },
    TANK = {
      { text = "Major CD for Electrocrush — big nature hit + 10s DoT.", type = "Mechanic" },
      { text = "Keep boss near edge pre-burn for space.", type = "Position" },
      { text = "Pick up Mechadrone adds fast — prevent healer stress.", type = "Mechanic" },
      { text = "Stack adds for cleave + interrupts.", type = "Position" },
      { text = "Mark adds if interrupts are missed. Rotate kicks.", type = "Mechanic" },
      { text = "Reposition boss early during burn to avoid puddle overlap.", type = "Mechanic" },
      { text = "Electrocrush DoT stacks with ambient pulses — mitigate.", type = "Mechanic" },
      { text = "Keep gap behind boss to bait Doom Storm safely.", type = "Position" }
    },
    HEALER = {
      { text = "CDs for Jumpstart — group-wide pulses every 1.5s.", type = "Call" },
      { text = "Watch Sonic Boom target — high overlap risk.", type = "Mechanic" },
      { text = "Spot heal tank during Electrocrush DoT.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill adds fast — avoid Kill-o-Block Barrier wipe.", type = "Mechanic" },
      { text = "Spread for Doom Storm from Mechadrone dashes.", type = "Mechanic" },
      { text = "Save cooldowns for burn phase — align with Jumpstart.", type = "Call" }
    }
  },
  
  ["Demolition Duo"] = {
    order = 3,
    header = "Boss: Demolition Duo",
    ALL = {
      { text = "Gel on me — I’ll move to bomb. Dispel once stacked.", type = "Call" },
      { text = "Charge incoming — line it through bombs.", type = "Call" },
      { text = "Interrupt Quick Shot or Trick Shot from Keeza.", type = "Interrupt" }
    },
    TANK = {
      { text = "Major for Wallop — tank buster + 5yd cleave/knockup.", type = "Mechanic" },
      { text = "Drag Bront to Keeza for cleave + bomb clear.", type = "Position" },
      { text = "Final charge targets you — position near last bomb.", type = "Mechanic" },
      { text = "Swap target. Both bosses must die together.", type = "Call" },
      { text = "Save short CD if Wallop overlaps BBBFG/Quick Shot.", type = "Mechanic" },
      { text = "Use movement to reposition fast after charge.", type = "Mechanic" },
      { text = "Face Bront away — avoid cleaving group.", type = "Position" },
      { text = "Hold final dispel until Bront’s charge finishes.", type = "Call" }
    },
    HEALER = {
      { text = "CDs if bomb fails — heavy group DoT.", type = "Call" },
      { text = "Dispel Gel when player stacks on bomb.", type = "Mechanic" },
      { text = "Top group before BBBFG + Quick Shot overlap.", type = "Mechanic" }
    },
    DPS = {
      { text = "Help clear bombs with dispel/charge — move early.", type = "Mechanic" },
      { text = "Dodge BBBFG lines from Keeza.", type = "Mechanic" },
      { text = "Balance boss HPs — avoid enrage.", type = "Mechanic" }
    }
  },
  
  ["Swampface"] = {
    order = 4,
    header = "Boss: Swampface",
    ALL = {
      { text = "Mudslide cast — dodge LEFT with partner.", type = "Call" },
      { text = "Awaken the Swamp — pop defensives + dodge waves.", type = "Call" },
      { text = "Stay near your partner — 14yds breaks tether and pulls.", type = "Mechanic" }
    },
    TANK = {
      { text = "Major CD for Sludge Claws — phys + nature hit + absorb.", type = "Mechanic" },
      { text = "If tethered, stay close to group — avoid dragging.", type = "Mechanic" },
      { text = "Keep boss steady during waves — no erratic movement.", type = "Position" },
      { text = "Always dodge LEFT.", type = "Call" },
      { text = "Anchor group mid-fight. Moving randomly drags others.", type = "Position" },
      { text = "Sludge Claws hurts — spot healing needed.", type = "Call" },
      { text = "Dodge early to avoid snapping tethers through AoE.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs for Awaken — heavy ramp damage.", type = "Call" },
      { text = "Heal tether partners — heavy ticking DoT.", type = "Mechanic" },
      { text = "Top group post-Mudslide for wave phase.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stick with partner. Dodge left together.", type = "Mechanic" },
      { text = "Use personals during Awaken + Vine combo.", type = "Call" },
      { text = "Avoid overlapping swirlies — spread out.", type = "Position" }
    }
  },
  
  ["Geezle Gigazap"] = {
    order = 5,
    header = "Boss: Geezle Gigazap",
    ALL = {
      { text = "Turbocharge soon — use defensive + dodge lines.", type = "Call" },
      { text = "Spark fixating me — kiting to a clean puddle.", type = "Call" }
    },
    TANK = {
      { text = "Major CD for Thunder Punch — phys + nature DoT + knockback.", type = "Mechanic" },
      { text = "Keep back to console — avoid knockback into water.", type = "Position" },
      { text = "Avoid puddles while debuffed — don’t electrify them.", type = "Mechanic" },
      { text = "Shift boss slightly between casts to rotate safe puddles.", type = "Position" },
      { text = "Don’t charge through puddles with Thunder Punch DoT.", type = "Mechanic" },
      { text = "Use mitigation for spark + puddle overlaps — big damage.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs for Turbocharge — AoE every 1s + random lines.", type = "Call" },
      { text = "Top off Gigazap targets before puddle movement.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread Gigazap away from puddles and group.", type = "Mechanic" },
      { text = "Use water to soak Sparks — avoid electrified ones.", type = "Mechanic" },
      { text = "Dodge swirlies + Thunder Punch lines mid-phase.", type = "Mechanic" }
    }
  }
  }