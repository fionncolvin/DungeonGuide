DungeonGuide_Guides["Operation: Floodgate"] = {
  ["Operation: Floodgate"] = {
    order = 1,
    header = "Guide: Operation: Floodgate",
    ALL = {
      { text = "Destroy 5 Weapon Stockpiles to unlock Swampface. One requires a goblin glider — let tank go first.", type = "Mechanic" },
      { text = "After Demolition Duo, use the rocket to destroy the Zeppelin. Removes swamp spotlights.", type = "Mechanic" },
      { text = "Avoid patrol pulls. Many mobs are CC-immune or apply heavy bleeds/healing absorbs.", type = "Mechanic" },
      { text = "Important kicks: Maximum Distortion, Trick Shot, Surveying Beam, Blood Bolt, Harpoon, Lightning Bolt.", type = "Interrupt" },
      { text = "Danger mobs: Shreddinator (sawblades/flame), Diver (Harpoon + bombs), Demolitionist (RPGG), Jumpstarter (AOE/tank hit).", type = "Mechanic" },
      { text = "Each Spark in Gigazap must touch a Dam Water puddle — don’t share or overlap.", type = "Mechanic" },
      { text = "Dodge direction is always LEFT on Swampface. Set this expectation early.", type = "Mechanic" }
    },
    TANK = {
      { text = "Jumpstarter and Bloodwarper mobs hit very hard. Use CDs and pull cautiously.", type = "Mechanic" },
      { text = "Aggro Divers and Snipers quickly. Random targeting can spike group early.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Major healing events: Jumpstart (Big M.O.M.M.A.), Bomb fail (Duo), Awaken (Swampface), Turbocharge (Gigazap).", type = "Mechanic" },
      { text = "Bleeds and magic DoTs from Surveyors, Divers, and Soldiers need fast dispels.", type = "Mechanic" }
    },
    DPS = {
      { text = "Plan CDs for Jumpstart, Burn phase (M.O.M.M.A.), Bomb waves, and Sparks.", type = "Mechanic" },
      { text = "Interrupt and burn high-priority trash. Many mobs do AoE or massive single-target hits.", type = "Mechanic" }
    }
  },

  ["Big M.O.M.M.A."] = {
    order = 2,
    header = "Boss: Big M.O.M.M.A.",
    ALL = {
      { text = "Interrupt Maximum Distortion on adds or it's pulsing AoE + pushback.", type = "Interrupt" },
      { text = "Jumpstart phase. Pop cooldowns and burn boss.", type = "Call" },
      { text = "Targeted by Sonic Boom. Aim away and dodge to avoid silence/explosion.", type = "Call" }
    },
    TANK = {
      { text = "Use major for Electrocrush — heavy nature hit + 10s DoT.", type = "Mechanic" },
      { text = "Keep boss near platform edge before burn phase for space.", type = "Position" },
      { text = "Pick up Mechadrone adds fast to prevent healer stress.", type = "Mechanic" },
      { text = "Drag adds closer together to enable efficient cleave + interrupts.", type = "Position" },
      { text = "Mark adds for team if kicks are being missed. Rotate interrupts.", type = "Mechanic" },
      { text = "Reposition boss early during burn phase to avoid electric puddle overlaps.", type = "Mechanic" },
      { text = "Electrocrush DoT stacks with ambient pulses. Use active mitigation.", type = "Mechanic" },
      { text = "Keep an gap open behind boss to bait Doom Storm away from group.", type = "Position" },
    },
    HEALER = {
      { text = "Prep CDs for Jumpstart — heavy group-wide pulses every 1.5s.", type = "Call" },
      { text = "Watch targeted player during Sonic Boom. High risk if overlap occurs.", type = "Mechanic" },
      { text = "Extra healing on tank during Electrocrush DoT.", type = "Mechanic" }
    },
    DPS = {
      { text = "Focus adds fast to prevent Kill-o-Block Barrier wipe.", type = "Mechanic" },
      { text = "Spread for Doom Storm swirlies from Mechadrone dash.", type = "Mechanic" },
      { text = "Save cooldowns for burn phase. Time them with Jumpstart.", type = "Call" }
    }
  },

  ["Demolition Duo"] = {
    order = 3,
    header = "Boss: Demolition Duo",
    ALL = {
      { text = "Gel on me. I will move to bomb and then dispel me.", type = "Call" },
      { text = "Barreling Charge incoming. Line up charge through bombs.", type = "Call" },
      { text = "Interrupt Quick Shot or Trick Shot from Keeza if possible.", type = "Interrupt" }
    },
    TANK = {
      { text = "Use major for Wallop — tank buster + 5yd cleave and knockup.", type = "Mechanic" },
      { text = "Drag Bront to Keeza for cleave + bomb clear synergy.", type = "Position" },
      { text = "Final charge always targets you — position for last bomb.", type = "Mechanic" },
      { text = "Watch boss HPs — call target. Both need to die together.", type = "Call" },
      { text = "Save short CD for Wallop overlap with BBBFG or Quick Shot.", type = "Mechanic" },
      { text = "Use movement ability to reposition fast after tank-targeted charge.", type = "Mechanic" },
      { text = "Face Bront away from group to avoid collateral cleave.", type = "Position" },
      { text = "Hold final dispel until Bront’s charge finishes.", type = "Call" },
    },
    HEALER = {
      { text = "Prep defensive CDs if 1+ bombs fail to clear — massive DoT.", type = "Call" },
      { text = "Dispel Kinetic Gel when player is stacked on bomb.", type = "Mechanic" },
      { text = "Top group before BBBFG + Quick Shot overlap.", type = "Mechanic" }
    },
    DPS = {
      { text = "Help clear bombs with dispel/charge — position proactively.", type = "Mechanic" },
      { text = "Dodge BBBFG line attacks from Keeza.", type = "Mechanic" },
      { text = "Balance DPS on both bosses to avoid enrage phase.", type = "Mechanic" }
    }
  },

  ["Swampface"] = {
    order = 4,
    header = "Boss: Swampface",
    ALL = {
      { text = "Mudslide cast. Dodge left with partner.", type = "Call" },
      { text = "Awaken the Swamp coming. Use defensive and dodge waves.", type = "Call" },
      { text = "Stay with your tethered partner. 14yds breaks and pulls.", type = "Mechanic" }
    },
    TANK = {
      { text = "Use major for Sludge Claws — phys + nature hit + absorb.", type = "Mechanic" },
      { text = "If a DPS dies, you may get tethered — stay close to group.", type = "Mechanic" },
      { text = "Keep boss steady during wave phase. Avoid erratic movement.", type = "Position" },
      { text = "Always dodge left.", type = "Call" },
      { text = "Anchor group position mid-fight. Don't shift randomly — you pull them with you.", type = "Position" },
      { text = "Spot healing please. Sludge Claws hurts.", type = "Call" },
      { text = "Dodge wave direction early to prevent tethers snapping through AoE.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Prep CDs during Awaken the Swamp — big ramp damage.", type = "Call" },
      { text = "Watch Vine partners. High incoming ticking DoT.", type = "Mechanic" },
      { text = "Top group after Mudslide to prep for wave dodging.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stick with partner and dodge as a pair. Left is default.", type = "Mechanic" },
      { text = "Use personals during Awaken + Vine combo.", type = "Call" },
      { text = "Avoid overlapping swirlies. Position away from others.", type = "Position" }
    }
  },

  ["Geezle Gigazap"] = {
    order = 5,
    header = "Boss: Geezle Gigazap",
    ALL = {
      { text = "Turbocharge soon. Use defensive and dodge lines.", type = "Call" },
      { text = "Spark fixating me. Kiting to a clean puddle.", type = "Call" }
    },
    TANK = {
      { text = "Major CD for Thunder Punch — big phys + nature DoT + knockback.", type = "Mechanic" },
      { text = "Position with back to console to avoid knockback into water.", type = "Position" },
      { text = "Stay away from puddles while debuffed to avoid shocking them.", type = "Mechanic" },
      { text = "Drag boss slightly between casts to rotate fresh safe puddles for group.", type = "Position" },
      { text = "Avoid charging through puddles with Thunder Punch DoT — you'll electrify them.", type = "Mechanic" },
      { text = "Save active mitigation for puddle-soaking spark overlap — high incoming damage.", type = "Mechanic" },
    },
    HEALER = {
      { text = "Prep for Turbocharge — AoE every 1s + random line hits.", type = "Call" },
      { text = "Dispel Overcharge debuff from pre-fight Electricians.", type = "Mechanic" },
      { text = "Top players with Gigazap before puddle placement.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread Gigazap away from puddles and group.", type = "Mechanic" },
      { text = "Use water to absorb Sparks but avoid electrified ones.", type = "Mechanic" },
      { text = "Dodge swirlies and Thunder Punch lines mid-phase.", type = "Mechanic" }
    }
  }
}