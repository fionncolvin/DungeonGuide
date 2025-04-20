DungeonGuide_Guides["Cinderbrew Meadery"] = {
  ["Cinderbrew Meadery"] = {
    order = 1,
    header = "Guide: Cinderbrew Meadery",
    ALL = {
      { text = "Sticky Honey (Alchemy/Cooking) applies AoE slow but can hit allies — use cautiously.", type = "Mechanic" },
      { text = "Flamethrowers (Engineering/Race) are decent for healers but avoid on DPS/tanks.", type = "Mechanic" },
      { text = "Thirsty buff in first wing increases cast/attack speed — soothe or avoid.", type = "Mechanic" },
      { text = "Hired Muscles and Honey Harvesters deal high AoE — never pull more than one.", type = "Mechanic" },
      { text = "Most dangerous trash: Failed Batch (Flavor Scientist), Free Samples (Taste Tester), Bee-stial Wrath (Wrangler).", type = "Mechanic" },
      { text = "Yes Men trash before Goldie heals + buffs each other — focus fire only.", type = "Mechanic" },
      { text = "Group-wide damage events: Happy Hour, Spouting Stout, Fluttering Wing, Let it Hail.", type = "Mechanic" }
    },
    TANK = {
      { text = "Avoid pulling enraged mobs with Thirsty buff or multiple bleed/DoT sources.", type = "Mechanic" },
      { text = "Drop Honey Marinade at edges in Benk fight to avoid bee buffs.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Be ready for burst damage spikes from Volatile Keg, Failed Batch, Let it Hail, and Fluttering Wing.", type = "Mechanic" },
      { text = "Bleeds, poisons, and DoTs stack heavily — prioritize dispels and triage.", type = "Mechanic" }
    },
    DPS = {
      { text = "CC and focus Brew Drop adds, Ravenous Cinderbees, and Failed Batch barrels.", type = "Mechanic" },
      { text = "Use Bee-Haw at 1% to clear barrels in Benk fight. Assign one DPS to manage this.", type = "Mechanic" }
    }  
  },

  ["Brew Master Aldryr"] = {
    order = 2,
    header = "Boss: Brew Master Aldryr",
    ALL = {
      { text = "Blazing Belch frontal. Stand close to boss and sidestep.", type = "Mechanic" },
      { text = "Happy Hour Mugs: Healer bar, Tank south single, DPS other 3.", type = "Call" }
    },
    TANK = {
      { text = "Use defensive on Keg Smash. Physical hit and honey puddle.", type = "Mechanic" },
      { text = "Kite boss during brawler phase to avoid melee getting stunned.", type = "Position" },
      { type = "Mechanic", text = "Face boss toward a wall for Blazing Belch to reduce frontal cone risk." },
      { type = "Mechanic", text = "Use defensive on Keg Smash. Followed by hot honey puddles—watch positioning." },
      { type = "Call", text = "Tanking front. Watch frontal. Avoid puddles." },
      { type = "Mechanic", text = "Pick up a beer mug early during Happy Hour. Assign patron order if PUG." },
      { type = "Mechanic", text = "Kite boss slowly during brawl phase to keep clear melee range." },
      { type = "Position", text = "Stay mid-room. Avoid dragging boss into Crawling Brawl circles." }
    },
    HEALER = {
      { text = "Throw Cinderbrew on 2 players. I will spot heal or use personal if targeted.", type = "Call" },
      { text = "Prep CDs for Happy Hour — Rowdy Yell deals group-wide damage.", type = "Call" },
      { text = "Throw Cinderbrew DoT targets need extra attention.", type = "Mechanic" }
    },
    DPS = {
      { text = "Avoid puddles after Throw Cinderbrew and Keg Smash.", type = "Mechanic" },
      { text = "Interrupt Chef Chewie trash to avoid CC immunity phase.", type = "Mechanic" }
    }
  },

  ["I'pa"] = {
    order = 3,
    header = "Boss: I'pa",
    ALL = {
      { text = "Spouting Stout incoming. Dodge swirls.", type = "Call" },
      { text = "Brew Drops spawning. CC and nuke before they reach boss.", type = "Call" }
    },
    TANK = {
      { type = "Mechanic", text = "Move boss immediately on Spouting Stout to opposite wall." },
      { type = "Mechanic", text = "Drag boss away from respawning puddles. Keep tank knockback under control." },
      { type = "Call", text = "Boss repositioning now. Avoid puddles. Handle Brew Drops." },
      { type = "Mechanic", text = "Use stun/knockback on Brew Drops to prevent Fill 'Er Up." },
      { type = "Mechanic", text = "Watch Bottoms Uppercut. Avoid knockback into puddles or adds." }      
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