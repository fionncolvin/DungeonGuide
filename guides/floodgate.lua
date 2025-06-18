DungeonGuide_Guides["Operation: Floodgate"] = {
  ["Operation: Floodgate"] = {
    order = 1,
    header = "Intro: Operation: Floodgate",
    ALL = {
      { text = "32-minute timer with open layout — first two bosses can be done in any order.", type = "Mechanic" },
      { text = "Collect all 5 Weapon Stockpiles to unlock n|Swampface| — some are off-path.", type = "Mechanic" },
      { text = "Use gliders (by stockpile on dam) for shortcuts — let tank go first!", type = "Mechanic" },
      { text = "Zeppelin patrol fires missiles — use rocket after n|Demolition Duo| to shoot it down.", type = "Mechanic" },
      { text = "Interrupt priority: s|Maximum Distortion|, s|Warp Blood|, s|Trick Shot|, s|Surveying Beam|.", type = "Interrupt" },
      { text = "Magic dispels needed for s|Overcharge|, s|Electro-Gel|, s|Blood-Infused Strikes|.", type = "Mechanic" },
      { text = "Avoid swirlies, bombs, saws, and CC-immune mob abilities throughout all wings.", type = "Mechanic" },
    },
    TANK = {
      { text = "n|Venture Co. Architect|s gain DR on scaffolding — break it ASAP.", type = "Mechanic" },
      { text = "n|Loaderbot|s, n|Shreddinator 3000|, and n|Divers| have disruptive fixates or random bleeds.", type = "Mechanic" },
      { text = "Pull n|Bombshell Crabs| carefully — s|Crabsplosion| stacks on death.", type = "Mechanic" },
    },
    HEALER = {
      { text = "Prepare healing CDs for s|Warp Blood|, s|Backwash|, and s|Bubble Burp| overlaps.", type = "Mechanic" },
      { text = "Dispel s|Overcharge| quickly — stun on expiration is lethal in AoE overlap.", type = "Mechanic" },
    },
    DPS = {
      { text = "Prioritise n|Darkfuse Bloodwarper|s and n|Darkfuse Inspector|s — dangerous group hits and teleports.", type = "Mechanic" },
      { text = "Use CC to stop s|Wind-Up|, s|Surveying Beam|, and s|Jetison Kelp| when kicks are tight.", type = "Mechanic" },
    },
  },

  ["Route"] = {
    order = 2,
    header = "Route: Operation: Floodgate",
    ALL = {
      { text = "Pulling double n|Darkfuse Soldiers|, n|Venture Co. Contractors|, n|Surveyors|, and n|Shreddinator 3000| first. Bloodlust and burn cooldowns.", type = "Call" },
      { text = "Next pull: Jump down after Weapon Stock blows. All trash around pool.", type = "Call" },
      { text = "Up stairs into n|Darkfuse Demolitionist| + n|Mechadrone Sniper| + n|Darkfuse Inspectors|.", type = "Call" },
      { text = "Up LEFT stairs before n|Big M.O.M.M.A.|.", type = "Call" },
      { text = "Boss pull: n|Big M.O.M.M.A.| next.", type = "Call" },
      { text = "Post-boss: Pull n|Darkfuse Soldiers| and n|Darkfuse Bloodwarper|. Focus n|Bloodwarper|.", type = "Call" },
      { text = "Back across floor. Chain in n|Loaderbots|. Bloodlust when clearing n|Bloodwarper| pack.", type = "Call" },
      { text = "Glider across. Pull left into right then up stairs.", type = "Call" },
      { text = "Chain double n|Shreddinator 3000s| into Contractors.", type = "Call" },
      { text = "Short pull to boss: n|Contractors| and n|Surveyor|.", type = "Call" },
      { text = "Boss pull: n|Demolition Duo|.", type = "Call" },
      { text = "Post-boss: Pull all n|Disturbed Kelp|s together and AoE.", type = "Call" },
      { text = "Boss pull: n|Swampface|.", type = "Call" },
      { text = "Pull n|Bubbles| solo at bridge. Keep him controlled.", type = "Call" },
      { text = "Pull n|Contractors|, n|Electricians|, n|Inspectors| carefully. Kick n|Electricians|.", type = "Call" },
      { text = "Final pulls: n|Darkfuse Soldiers|, n|Contractors|, n|Jumpstarters| into final boss.", type = "Call" }
    },
  },
  
  ["Big M.O.M.M.A."] = {
    order = 3,
    header = "Boss: Big M.O.M.M.A.",
    ALL = {
      { text = "Interrupt s|Maximum Distortion| — pulsing AoE + pushback.", type = "Interrupt" },
      { text = "s|Jumpstart| phase — pop cooldowns and burn boss.", type = "Call" },
      { text = "s|Sonic Boom| on you — aim away and dodge to avoid silence/explosion.", type = "Call" }
    },
    TANK = {
      { text = "Major CD for s|Electrocrush| — big nature hit + 10s DoT.", type = "Mechanic" },
      { text = "Keep boss near edge pre-burn for space.", type = "Position" },
      { text = "Pick up n|Mechadrone| adds fast — prevent healer stress.", type = "Mechanic" },
      { text = "Stack adds for cleave + interrupts.", type = "Position" },
      { text = "Mark adds if interrupts are missed. Rotate kicks.", type = "Mechanic" },
      { text = "Reposition boss early during burn to avoid puddle overlap.", type = "Mechanic" },
      { text = "s|Electrocrush| DoT stacks with ambient pulses — mitigate.", type = "Mechanic" },
      { text = "Keep gap behind boss to bait s|Doom Storm| safely.", type = "Position" }
    },
    HEALER = {
      { text = "CDs for s|Jumpstart| — group-wide pulses every 1.5s.", type = "Call" },
      { text = "Watch s|Sonic Boom| target — high overlap risk.", type = "Mechanic" },
      { text = "Spot heal tank during s|Electrocrush| DoT.", type = "Mechanic" }
    },
    DPS = {
      { text = "Kill adds fast — avoid s|Kill-o-Block Barrier| wipe.", type = "Mechanic" },
      { text = "Spread for s|Doom Storm| from n|Mechadrone| dashes.", type = "Mechanic" },
      { text = "Save cooldowns for s|Jumpstart| burn phase.", type = "Call" }
    }
  },

  ["Demolition Duo"] = {
    order = 4,
    header = "Boss: Demolition Duo",
    ALL = {
      { text = "s|Gel| on me — moving to bomb. Dispel once stacked.", type = "Call" },
      { text = "Charge incoming — line it through bombs.", type = "Call" },
      { text = "Interrupt s|Quick Shot| or s|Trick Shot| from n|Keeza|.", type = "Interrupt" }
    },
    TANK = {
      { text = "Major for s|Wallop| — tank buster + 5yd cleave/knockup.", type = "Mechanic" },
      { text = "Drag n|Bront| to n|Keeza| for cleave + bomb clear.", type = "Position" },
      { text = "Final s|Charge| targets you — position near last bomb.", type = "Mechanic" },
      { text = "Swap targets. Both bosses must die together.", type = "Call" },
      { text = "Save short CD if s|Wallop| overlaps s|BBBFG| or s|Quick Shot|.", type = "Mechanic" },
      { text = "Use movement to reposition after charges.", type = "Mechanic" },
      { text = "Face n|Bront| away — avoid cleaving group.", type = "Position" },
      { text = "Hold final dispel until n|Bront’s| charge finishes.", type = "Call" }
    },
    HEALER = {
      { text = "CDs if bomb fails — heavy group DoT.", type = "Call" },
      { text = "Dispel s|Gel| when player stacks on bomb.", type = "Mechanic" },
      { text = "Top group before s|BBBFG| + s|Quick Shot| overlaps.", type = "Mechanic" }
    },
    DPS = {
      { text = "Help clear bombs early. Dispel/charge quickly.", type = "Mechanic" },
      { text = "Dodge s|BBBFG| lines from n|Keeza|.", type = "Mechanic" },
      { text = "Balance boss HPs to prevent enrage.", type = "Mechanic" }
    }
  },
  
  ["Swampface"] = {
    order = 5,
    header = "Boss: Swampface",
    ALL = {
      { text = "s|Mudslide cast| — dodge LEFT with partner.", type = "Call" },
      { text = "s|Awaken the Swamp| — pop defensives + dodge waves.", type = "Call" },
      { text = "Stay near your partner — 14yds breaks tether and pulls.", type = "Mechanic" }
    },
    TANK = {
      { text = "Major CD for s|Sludge Claws| — phys + nature hit + absorb.", type = "Mechanic" },
      { text = "If tethered, stay close to group — avoid dragging.", type = "Mechanic" },
      { text = "Keep boss steady during waves — no erratic movement.", type = "Position" },
      { text = "Always dodge LEFT.", type = "Call" },
      { text = "Anchor group mid-fight. Moving randomly drags others.", type = "Position" },
      { text = "s|Sludge Claws| hurts — spot healing needed.", type = "Call" },
      { text = "Dodge early to avoid snapping tethers through AoE.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs for s|Awaken| — heavy ramp damage.", type = "Call" },
      { text = "Heal tether partners — heavy ticking DoT.", type = "Mechanic" },
      { text = "Top group post-Mudslide for wave phase.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stick with partner. Dodge left together.", type = "Mechanic" },
      { text = "Use personals during s|Awaken| + Vine combo.", type = "Call" },
      { text = "Avoid overlapping swirlies — spread out.", type = "Position" }
    }
  },
  
  ["Geezle Gigazap"] = {
    order = 6,
    header = "Boss: Geezle Gigazap",
    ALL = {
      { text = "s|Turbocharge|soon — use defensive + dodge lines.", type = "Call" },
      { text = "Spark fixating me — kiting to a clean puddle.", type = "Call" }
    },
    TANK = {
      { text = "Major CD for s|Thunder Punch| — phys + nature DoT + knockback.", type = "Mechanic" },
      { text = "Keep back to console — avoid knockback into water.", type = "Position" },
      { text = "Avoid puddles while debuffed — don’t electrify them.", type = "Mechanic" },
      { text = "Shift boss slightly between casts to rotate safe puddles.", type = "Position" },
      { text = "Don’t charge through puddles with s|Thunder Punch| DoT.", type = "Mechanic" },
      { text = "Use mitigation for spark + puddle overlaps — big damage.", type = "Mechanic" }
    },
    HEALER = {
      { text = "CDs for s|Turbocharge| — AoE every 1s + random lines.", type = "Call" },
      { text = "Top off n|Gigazap| targets before puddle movement.", type = "Mechanic" }
    },
    DPS = {
      { text = "Spread n|Gigazap| away from puddles and group.", type = "Mechanic" },
      { text = "Use water to soak Sparks — avoid electrified ones.", type = "Mechanic" },
      { text = "Dodge swirlies + s|Thunder Punch| lines mid-phase.", type = "Mechanic" }
    }
  }
}