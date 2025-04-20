DungeonGuide_Guides["Cinderbrew Meadery"] = {
  ["Cinderbrew Meadery"] = {
    order = 1,
    header = "Guide: Cinderbrew Meadery",
    ALL = {
      { text = "Sticky Honey slows enemies and allies — use carefully.", type = "Mechanic" },
      { text = "Thirsty buff = faster casts/attacks — soothe or skip.", type = "Mechanic" },
      { text = "Pull Hireds/Harvesters solo — high AoE.", type = "Mechanic" },
      { text = "Watch for: Failed Batch, Free Samples, Bee-stial Wrath.", type = "Mechanic" },
      { text = "Yes Men heal/buff — focus fire only.", type = "Mechanic" },
      { text = "Big group damage: Happy Hour, Fluttering Wing, etc.", type = "Mechanic" }
    },
    TANK = {
      { text = "Avoid Thirsty + bleed/DoT mobs together.", type = "Mechanic" },
      { text = "Drop Marinade at edges — don't buff bees.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Prep for spikes: Volatile Keg, Let it Hail, Fluttering Wing.", type = "Mechanic" },
      { text = "Heavy bleeds/poisons — dispel + triage.", type = "Mechanic" }
    },
    DPS = {
      { text = "CC + burn: Brew Drop, Cinderbees, Failed Batch barrels.", type = "Mechanic" },
      { text = "Assign DPS to Bee-Haw at 1% in Benk to clear barrels.", type = "Mechanic" }
    }
  },

  ["Brew Master Aldryr"] = {
    order = 2,
    header = "Boss: Brew Master Aldryr",
    ALL = {
      { text = "Blazing Belch frontal. Stand close + sidestep.", type = "Mechanic" },
      { text = "Happy Hour: Healer bar, Tank south, DPS other 3.", type = "Call" }
    },
    TANK = {
      { text = "Defensive on Keg Smash. Avoid honey puddle.", type = "Mechanic" },
      { text = "Kite boss during brawler phase — avoid stuns.", type = "Position" },
      { text = "Face boss to wall to reduce frontal danger.", type = "Mechanic" },
      { text = "Stay mid-room. Avoid Crawling Brawl zones.", type = "Position" },
      { text = "Pick up beer early in Happy Hour. Assign patrons if PUG.", type = "Mechanic" },
      { text = "Call: Tanking front. Watch frontal. Avoid puddles.", type = "Call" }
    },
    HEALER = {
      { text = "Throw Cinderbrew on 2 players. I’ll spot heal or use CDs.", type = "Call" },
      { text = "Burst healing: Keg Smash, Happy Hour, and adds.", type = "Mechanic" }
    },
    DPS = {
      { text = "Dodge frontal. Rotate mugs if needed.", type = "Mechanic" },
      { text = "Interrupt Keg Toss adds during Happy Hour.", type = "Interrupt" },
      { text = "Burn adds fast in brawler phase.", type = "Mechanic" }
    }
  },

  ["I'pa"] = {
    order = 3,
    header = "Boss: I'pa",
    ALL = {
      { text = "Spouting Stout incoming — dodge swirls!", type = "Call" },
      { text = "Brew Drops spawning — CC + burn before they reach boss.", type = "Call" }
    },
    TANK = {
      { text = "Move boss to opposite wall on Spouting Stout.", type = "Mechanic" },
      { text = "Keep boss off puddles — avoid tank knockbacks.", type = "Mechanic" },
      { text = "Call: Moving boss — avoid puddles + handle adds.", type = "Call" },
      { text = "Stun/knock Brew Drops before Fill 'Er Up.", type = "Mechanic" },
      { text = "Watch Uppercut — don't get knocked into puddles or adds.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Dispel Burning Fermentation ASAP. Spot heal 2 targets.", type = "Mechanic" },
      { text = "Prep CDs for Spouting Stout + Brew Drop combo.", type = "Call" }
    },
    DPS = {
      { text = "CC and cleave Brew Drops fast. Second wave respawns from puddles.", type = "Mechanic" },
      { text = "Interrupt Rejuvenating Honey from Flavor Scientist trash.", type = "Interrupt" }
    }
  },

  ["Benk Buzzbee"] = {
    order = 4,
    header = "Boss: Benk Buzzbee",
    ALL = {
      { text = "Snack Time active. DPS mount bee and destroy barrel.", type = "Call" },
      { text = "Avoid Honey Marinade puddles — they buff adds.", type = "Mechanic" }
    },
    TANK = {
      { text = "Use major on Honey Marinade. Drop puddle near wall.", type = "Mechanic" },
      { type = "Mechanic", text = "Honey Marinade placement is critical—use wall edge if possible." },
      { type = "Call", text = "Dropping marinade far. Keep bees away from puddle." },
      { type = "Mechanic", text = "Pick up threat on spawned Cinderbees ASAP—assign kick focus if needed." },
      { type = "Mechanic", text = "Avoid using Bee-Haw yourself — assign DPS to handle barrels." },
      { type = "Mechanic", text = "Use major defensives for Final Sting from low-health Worker Bees." },
      { type = "Interrupt", text = "Bee-stial Wrath enrage from Bee Wrangler must be kicked or soothed." }
    },
    HEALER = {
      { text = "Fluttering Wing. I will top group. Watch pushback.", type = "Call" },
      { text = "Dispel or heal through Shredding Sting bleeds.", type = "Mechanic" }
    },
    DPS = {
      { text = "Nuke Cinderbees. At 1% mount and Bee-Haw into barrels.", type = "Mechanic" },
      { text = "Bee-zooka line is dodgeable. Let target stay still.", type = "Mechanic" }
    }
  },

  ["Goldie Baronbottom"] = {
    order = 5,
    header = "Boss: Goldie Baronbottom",
    ALL = {
      { text = "Spread the Love active. Detonate volatile barrels in pairs.", type = "Call" },
      { text = "Let it Hail. Move out and prep defensives for high group damage.", type = "Call" }
    },
    TANK = {
      { text = "Face Cash Cannon away from group and clear barrels with it.", type = "Position" },
      { text = "Prep CD if triggering volatile barrels with Cash Cannon.", type = "Mechanic" },
      { type = "Mechanic", text = "Break 2 volatile barrels with first Cash Cannon using frontal aim." },
      { type = "Call", text = "Breaking barrels now. Prepare healing CDs for group DoT." },
      { type = "Position", text = "Always position boss away from barrels to avoid splash destruction." },
      { type = "Mechanic", text = "Use frontal to manage barrel control—avoid clipping allies." },
      { type = "Mechanic", text = "During Let it Hail, preposition to empty space and use defensives." },
      { type = "Mechanic", text = "Coordinate with DPS to use Ricochet detonations strategically." }
    },
    HEALER = {
      { text = "Volatile barrels apply Cindering Wounds. Prep CDs before detonation.", type = "Call" },
      { text = "Prep healing for Let it Hail and barrel chain reaction.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stand near barrels with Burning Ricochet to help clear safely.", type = "Mechanic" },
      { text = "Interrupt Honey Volley during trash phase. Big AoE + slow.", type = "Interrupt" }
    }
  }
}