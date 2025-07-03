DungeonGuide_Guides["Operation: Floodgate"] = {
  id = "dung-floodgate",
  ["Operation: Floodgate"] = {
    id = "enc-floodgate-guide",
    order = 1,
    header = "Guide: Operation: Floodgate",
    ALL = {
      { text = "32-minute timer with open layout — first two bosses can be done in any order.", type = "Mechanic", id = "gui-i6hdbRa4yjs" },
      { text = "Collect all 5 Weapon Stockpiles to unlock n|Swampface| — some are off-path.", type = "Mechanic", id = "gui-zOtwsukZ5Bg" },
      { text = "Use gliders (by stockpile on dam) for shortcuts — let tank go first!", type = "Mechanic", id = "gui-wCkEGlbzSS0" },
      { text = "Zeppelin patrol fires missiles — use rocket after n|Demolition Duo| to shoot it down.", type = "Mechanic", id = "gui-DGyNVzY62w" },
      { text = "Interrupt priority: s|Maximum Distortion|, s|Warp Blood|, s|Trick Shot|, s|Surveying Beam|.", type = "Interrupt", id = "gui-mzbIZmcLio" },
      { text = "Magic dispels needed for s|Overcharge|, s|Electro-Gel|, s|Blood-Infused Strikes|.", type = "Mechanic", id = "gui-VO39kXzlsLQ" },
      { text = "Avoid swirlies, bombs, saws, and CC-immune mob abilities throughout all wings.", type = "Mechanic", id = "gui-isLxSCTPOKk" },
    },
    TANK = {
      { text = "n|Venture Co. Architect|s gain DR on scaffolding — break it ASAP.", type = "Mechanic", id = "gui-DkHJOa3v2BE" },
      { text = "n|Loaderbot|s, n|Shreddinator 3000|, and n|Divers| have disruptive fixates or random bleeds.", type = "Mechanic", id = "gui-Gej86gG0TVw" },
      { text = "Pull n|Bombshell Crabs| carefully — s|Crabsplosion| stacks on death.", type = "Mechanic", id = "gui-VosZOR2lcOc" },
    },
    HEALER = {
      { text = "Prepare healing CDs for s|Warp Blood|, s|Backwash|, and s|Bubble Burp| overlaps.", type = "Mechanic", id = "gui-rW2jj1srXWo" },
      { text = "Dispel s|Overcharge| quickly — stun on expiration is lethal in AoE overlap.", type = "Mechanic", id = "gui-De0vQFgiIYM" },
    },
    DPS = {
      { text = "Prioritise n|Darkfuse Bloodwarper|s and n|Darkfuse Inspector|s — dangerous group hits and teleports.", type = "Mechanic", id = "gui-tyZcTsi7W8E" },
      { text = "Use CC to stop s|Wind-Up|, s|Surveying Beam|, and s|Jetison Kelp| when kicks are tight.", type = "Mechanic", id = "gui-dSnqczjIxrU" },
    },
  },

  ["Route"] = {
    id = "enc-floodgate-route",
    order = 2,
    header = "Route: Operation: Floodgate",
    ALL = {
      { text = "Pulling double n|Darkfuse Soldiers|, n|Venture Co. Contractors|, n|Surveyors|, and n|Shreddinator 3000| first. Bloodlust and burn cooldowns.", type = "Call", id = "gui-NCFjtHrwLQg" },
      { text = "Next pull: Jump down after Weapon Stock blows. All trash around pool.", type = "Call", id = "gui-rp8MtULJKnw" },
      { text = "Up stairs into n|Darkfuse Demolitionist| + n|Mechadrone Sniper| + n|Darkfuse Inspectors|.", type = "Call", id = "gui-EzscQNsopm4" },
      { text = "Up LEFT stairs before n|Big M.O.M.M.A.|.", type = "Call", id = "gui-oBwAZxR9P4E" },
      { text = "Boss pull: n|Big M.O.M.M.A.| next.", type = "Call", id = "gui-ks1xLdlsCDY" },
      { text = "Post-boss: Pull n|Darkfuse Soldiers| and n|Darkfuse Bloodwarper|. Focus n|Bloodwarper|.", type = "Call", id = "gui-mI2Uwu6J2uU" },
      { text = "Back across floor. Chain in n|Loaderbots|. Bloodlust when clearing n|Bloodwarper| pack.", type = "Call", id = "gui-A627BGVwkio" },
      { text = "Glider across. Pull left into right then up stairs.", type = "Call", id = "gui-rs8I4V0RX5o" },
      { text = "Chain double n|Shreddinator 3000s| into Contractors.", type = "Call", id = "gui-m9EffM96yw" },
      { text = "Short pull to boss: n|Contractors| and n|Surveyor|.", type = "Call", id = "gui-SY2xpuzDdU" },
      { text = "Boss pull: n|Demolition Duo|.", type = "Call", id = "gui-WxdVC3DGtdU" },
      { text = "Post-boss: Pull all n|Disturbed Kelp|s together and AoE.", type = "Call", id = "gui-BjG2NaGSusk" },
      { text = "Boss pull: n|Swampface|.", type = "Call", id = "gui-i6ykxT0uZeo" },
      { text = "Pull n|Bubbles| solo at bridge. Keep him controlled.", type = "Call", id = "gui-9TBw8a49oKw" },
      { text = "Pull n|Contractors|, n|Electricians|, n|Inspectors| carefully. Kick n|Electricians|.", type = "Call", id = "gui-yDrBWJbQ0RU" },
      { text = "Final pulls: n|Darkfuse Soldiers|, n|Contractors|, n|Jumpstarters| into final boss.", type = "Call", id = "gui-OBTG7XsQ34" }
    },
  },
  
  ["Big M.O.M.M.A."] = {
    id = "enc-floodgate-big-momma",
    order = 3,
    header = "Boss: Big M.O.M.M.A.",
    ALL = {
      { text = "Interrupt s|Maximum Distortion| — pulsing AoE + pushback.", type = "Interrupt", id = "gui-RMekVpcGEQ" },
      { text = "s|Jumpstart| phase — pop cooldowns and burn boss.", type = "Call", id = "gui-lU3SaCHKdfY" },
      { text = "s|Sonic Boom| on you — aim away and dodge to avoid silence/explosion.", type = "Call", id = "gui-L5fVNDwH1To" }
    },
    TANK = {
      { text = "Major CD for s|Electrocrush| — big nature hit + 10s DoT.", type = "Mechanic", id = "gui-Ey6UOVac5jQ" },
      { text = "Keep boss near edge pre-burn for space.", type = "Position", id = "gui-JjwoRNBCFcU" },
      { text = "Pick up n|Mechadrone| adds fast — prevent healer stress.", type = "Mechanic", id = "gui-3Rh7EfhUjc" },
      { text = "Stack adds for cleave + interrupts.", type = "Position", id = "gui-P34WhM7ImZg" },
      { text = "Mark adds if interrupts are missed. Rotate kicks.", type = "Mechanic", id = "gui-ryBzfUATEI" },
      { text = "Reposition boss early during burn to avoid puddle overlap.", type = "Mechanic", id = "gui-ZbWkGzDeEP4" },
      { text = "s|Electrocrush| DoT stacks with ambient pulses — mitigate.", type = "Mechanic", id = "gui-ZGIkW1At5qA" },
      { text = "Keep gap behind boss to bait s|Doom Storm| safely.", type = "Position", id = "gui-aOnQQUs0HeI" }
    },
    HEALER = {
      { text = "CDs for s|Jumpstart| — group-wide pulses every 1.5s.", type = "Call", id = "gui-Tu1DPpbiE8s" },
      { text = "Watch s|Sonic Boom| target — high overlap risk.", type = "Mechanic", id = "gui-HIEdE8rv60" },
      { text = "Spot heal tank during s|Electrocrush| DoT.", type = "Mechanic", id = "gui-TLcz6RYyKE" }
    },
    DPS = {
      { text = "Kill adds fast — avoid s|Kill-o-Block Barrier| wipe.", type = "Mechanic", id = "gui-Mm41xyA4R4Q" },
      { text = "Spread for s|Doom Storm| from n|Mechadrone| dashes.", type = "Mechanic", id = "gui-wA9JXGG9YKs" },
      { text = "Save cooldowns for s|Jumpstart| burn phase.", type = "Call", id = "gui-2yHjxKDCWo" }
    }
  },

  ["Demolition Duo"] = {
    id = "enc-floodgate-demolition-duo",
    order = 4,
    header = "Boss: Demolition Duo",
    ALL = {
      { text = "s|Gel| on me — moving to bomb. Dispel once stacked.", type = "Call", id = "gui-inVRZcNumpM" },
      { text = "Charge incoming — line it through bombs.", type = "Call", id = "gui-YsehYQJFCh0" },
      { text = "Interrupt s|Quick Shot| or s|Trick Shot| from n|Keeza|.", type = "Interrupt", id = "gui-D77Rs6GJ12c" }
    },
    TANK = {
      { text = "Major for s|Wallop| — tank buster + 5yd cleave/knockup.", type = "Mechanic", id = "gui-W30GbqBfyvs" },
      { text = "Drag n|Bront| to n|Keeza| for cleave + bomb clear.", type = "Position", id = "gui-gJ2FzOthk7U" },
      { text = "Final s|Charge| targets you — position near last bomb.", type = "Mechanic", id = "gui-kddQc2lesyc" },
      { text = "Swap targets. Both bosses must die together.", type = "Call", id = "gui-borAFTb6Apw" },
      { text = "Save short CD if s|Wallop| overlaps s|BBBFG| or s|Quick Shot|.", type = "Mechanic", id = "gui-0yhV3PT9sI" },
      { text = "Use movement to reposition after charges.", type = "Mechanic", id = "gui-FCD75VysAhw" },
      { text = "Face n|Bront| away — avoid cleaving group.", type = "Position", id = "gui-8KgLlSMDi8g" },
      { text = "Hold final dispel until n|Bront’s| charge finishes.", type = "Call", id = "gui-G1sFDKxHN8" }
    },
    HEALER = {
      { text = "CDs if bomb fails — heavy group DoT.", type = "Call", id = "gui-mdMnN2Pjrk4" },
      { text = "Dispel s|Gel| when player stacks on bomb.", type = "Mechanic", id = "gui-VV7pljXpjI" },
      { text = "Top group before s|BBBFG| + s|Quick Shot| overlaps.", type = "Mechanic", id = "gui-am3ssZC79uE" }
    },
    DPS = {
      { text = "Help clear bombs early. Dispel/charge quickly.", type = "Mechanic", id = "gui-RraolEJQLQs" },
      { text = "Dodge s|BBBFG| lines from n|Keeza|.", type = "Mechanic", id = "gui-SPL57G647Y0" },
      { text = "Balance boss HPs to prevent enrage.", type = "Mechanic", id = "gui-edsQK7063gs" }
    }
  },
  
  ["Swampface"] = {
    id = "enc-floodgate-swampface",
    order = 5,
    header = "Boss: Swampface",
    ALL = {
      { text = "s|Mudslide cast| — dodge LEFT with partner.", type = "Call", id = "gui-OxX4Y5n5Z2I" },
      { text = "s|Awaken the Swamp| — pop defensives + dodge waves.", type = "Call", id = "gui-F1podl676nQ" },
      { text = "Stay near your partner — 14yds breaks tether and pulls.", type = "Mechanic", id = "gui-bmolTOQSayw" }
    },
    TANK = {
      { text = "Major CD for s|Sludge Claws| — phys + nature hit + absorb.", type = "Mechanic", id = "gui-xizpmOPgs" },
      { text = "If tethered, stay close to group — avoid dragging.", type = "Mechanic", id = "gui-tde8FoXhw0" },
      { text = "Keep boss steady during waves — no erratic movement.", type = "Position", id = "gui-X30kArTJx0" },
      { text = "Always dodge LEFT.", type = "Call", id = "gui-4Yv99gDOc8" },
      { text = "Anchor group mid-fight. Moving randomly drags others.", type = "Position", id = "gui-3RIVDB8aW4Q" },
      { text = "s|Sludge Claws| hurts — spot healing needed.", type = "Call", id = "gui-55lsSaqdp0I" },
      { text = "Dodge early to avoid snapping tethers through AoE.", type = "Mechanic", id = "gui-YMqd6XLTS2s" }
    },
    HEALER = {
      { text = "CDs for s|Awaken| — heavy ramp damage.", type = "Call", id = "gui-G3U2aBhgIA" },
      { text = "Heal tether partners — heavy ticking DoT.", type = "Mechanic", id = "gui-PUcNaPQZqr0" },
      { text = "Top group post-Mudslide for wave phase.", type = "Mechanic", id = "gui-zEBbBdKylGo" }
    },
    DPS = {
      { text = "Stick with partner. Dodge left together.", type = "Mechanic", id = "gui-MwtJRkwJx2s" },
      { text = "Use personals during s|Awaken| + Vine combo.", type = "Call", id = "gui-tGBZW5VE6Y" },
      { text = "Avoid overlapping swirlies — spread out.", type = "Position", id = "gui-FbTVFrlDpk" }
    }
  },
  
  ["Geezle Gigazap"] = {
    id = "enc-floodgate-geezle-gigazap",
    order = 6,
    header = "Boss: Geezle Gigazap",
    ALL = {
      { text = "s|Turbocharge|soon — use defensive + dodge lines.", type = "Call", id = "gui-7jVXvLC6oXs" },
      { text = "Spark fixating me — kiting to a clean puddle.", type = "Call", id = "gui-Mar0Mvj5NKM" }
    },
    TANK = {
      { text = "Major CD for s|Thunder Punch| — phys + nature DoT + knockback.", type = "Mechanic", id = "gui-whqGTSg5W0" },
      { text = "Keep back to console — avoid knockback into water.", type = "Position", id = "gui-8cMVQ9puyg" },
      { text = "Avoid puddles while debuffed — don’t electrify them.", type = "Mechanic", id = "gui-yrWUTqqpBoA" },
      { text = "Shift boss slightly between casts to rotate safe puddles.", type = "Position", id = "gui-xz597X8wfKk" },
      { text = "Don’t charge through puddles with s|Thunder Punch| DoT.", type = "Mechanic", id = "gui-ReW09UMWhw" },
      { text = "Use mitigation for spark + puddle overlaps — big damage.", type = "Mechanic", id = "gui-cSu1qIKeE0" }
    },
    HEALER = {
      { text = "CDs for s|Turbocharge| — AoE every 1s + random lines.", type = "Call", id = "gui-flcsY0ll1Og" },
      { text = "Top off n|Gigazap| targets before puddle movement.", type = "Mechanic", id = "gui-9Jx8Y8lZ9OE" }
    },
    DPS = {
      { text = "Spread n|Gigazap| away from puddles and group.", type = "Mechanic", id = "gui-fFtmNQBi4lo" },
      { text = "Use water to soak Sparks — avoid electrified ones.", type = "Mechanic", id = "gui-u9BKZXK4v1Q" },
      { text = "Dodge swirlies + s|Thunder Punch| lines mid-phase.", type = "Mechanic", id = "gui-ZKrjTMw8LSA" }
    }
  }
}