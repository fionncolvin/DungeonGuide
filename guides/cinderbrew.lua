DungeonGuide_Guides["Cinderbrew Meadery"] = {
  ["Cinderbrew Meadery"] = {
    order = 1,
    header = "Intro: Cinderbrew Meadery",
    ALL = {
      { text = "33-minute timer with split path after Boss 1.", type = "Mechanic" },
      { text = "s|Sticky Honey| (Cooking/Alchemy 25+): AoE slow + haste debuff — affects allies too.", type = "Mechanic" },
      { text = "s|Flamethrower| (Eng/Gnome/Goblin 25+): Low AoE damage — best used by healers.", type = "Mechanic" },
      { text = "Watch for Thirsty enrages — mobs gain haste and damage.", type = "Mechanic" },
      { text = "Heavy use of swirlies, AoE zones, and frontal attacks — constant movement needed.", type = "Mechanic" },
      { text = "Interrupt priority: s|Boiling Flames|, s|Honey Volley|, s|Free Samples|, s|Bee-stial Wrath|.", type = "Interrupt" },
      { text = "Frequent magic debuffs — s|Burning Fermentation|, s|Bee Venom|, s|Erupting Inferno|.", type = "Mechanic" },
    },
    TANK = {
      { text = "Route splits to n|I'pa| (left) or n|Buzzbee| (right) after n|Aldryr|.", type = "Mechanic" },
      { text = "Avoid pulling multiple CC-immune mobs (n|Chewie|, n|Harvesters|, n|Hopgoblins|).", type = "Mechanic" },
      { text = "Stagger Bee packs — s|Final Sting| and s|Swarming Surprise| can chain kill tanks.", type = "Mechanic" },
      { text = "Pick up n|Brew Drops|, n|Bee-lets|, and n|Ravenous Cinderbees| quickly to control threat.", type = "Mechanic" },
    },
    HEALER = {
      { text = "s|Flamethrower| is safe utility — avoid during heavy group damage.", type = "Mechanic" },
      { text = "Prepare CDs for s|Volatile Keg|, s|Swarming Surprise|, and boss intermissions.", type = "Mechanic" },
    },
    DPS = {
      { text = "Kill Failed Batch kegs before they explode.", type = "Mechanic" },
      { text = "Use CC on n|Brew Drops| and Bees — prevent them reaching boss/barrels.", type = "Mechanic" },
    },
  },

  ["Route"] = {
    order = 2,
    header = "Route: Cinderbrew Meadery",
    ALL = {
      { text = "Pulling right side to start. Watch n|Chef Chewie| patrol.", type = "Call" },
      { text = "Only one n|Hired Muscle| at a time. No double pulls.", type = "Call" },
      { text = "Pulling far-right n|Pyromaniac|, n|Patrons|, and n|Hired Muscle| first.", type = "Call" },
      { text = "If n|Attendant| is close, cleave it with first pull.", type = "Call" },
      { text = "Pop Lust early while burning first pull cooldowns.", type = "Call" },
      { text = "Wait for safe patrol before pulling n|Chef Chewie|.", type = "Call" },
      { text = "After n|Chewie|, pull n|Hired Muscle| + nearby trash carefully.", type = "Mechanic" },
      { text = "Skip deep corner pack. Not needed for count.", type = "Call" },
      { text = "Heading north after first boss. Fighting n|I'pa| next.", type = "Call" },
      { text = "One pack at a time here. Will struggle otherwise.", type = "Call" },
      { text = "Focus n|Flavor Scientists| for interrupts. Watch n|Hop Goblins|.", type = "Mechanic" },
      { text = "Pull n|Careless Hop Goblin| first on n|I'pa| platform.", type = "Call" },
      { text = "Pull packs out into hallway to avoid double patrols.", type = "Call" },
      { text = "After n|I'pa|, move south to n|Buzzbee| wing.", type = "Call" },
      { text = "Pulling three Bee packs carefully. Watch for Sting casts.", type = "Call" },
      { text = "Pull corner n|Purveyor| with Worker Bees. Manage puddles.", type = "Call" },
      { text = "Do not pull more than two n|Purveyors| at once.", type = "Call" },
      { text = "Try skipping the n|Purveyor| near boss room entrance.", type = "Call" },
      { text = "Clear most Beelets before n|Buzzbee| fight. Pull a few into boss if clean.", type = "Call" },
      { text = "After n|Buzzbee|, small pulls to n|Goldie|. Trash gives low count.", type = "Mechanic" }
    },
  },

  ["Brew Master Aldryr"] = {
    order = 3,
    header = "Boss: Brew Master Aldryr",
    ALL = {
      { text = "s|Blazing Belch| frontal. Stand close + sidestep.", type = "Mechanic" },
      { text = "s|Happy Hour|: Healer bar, Tank south, DPS other 3.", type = "Call" }
    },
    TANK = {
      { text = "Defensive on s|Keg Smash|. Avoid honey puddle.", type = "Mechanic" },
      { text = "Kite boss during brawler phase — avoid stuns.", type = "Position" },
      { text = "Face boss to wall to reduce frontal danger.", type = "Mechanic" },
      { text = "Stay mid-room. Avoid s|Crawling Brawl| zones.", type = "Position" },
      { text = "Pick up beer early in s|Happy Hour|. Assign patrons if PUG.", type = "Mechanic" },
      { text = "Tanking front. Watch frontal. Avoid puddles.", type = "Call" }
    },
    HEALER = {
      { text = "s|Throw Cinderbrew| on 2 players. I’ll spot heal or use CDs.", type = "Call" },
      { text = "Burst healing: s|Keg Smash|, s|Happy Hour|, and adds.", type = "Mechanic" }
    },
    DPS = {
      { text = "Dodge frontal. Rotate mugs if needed.", type = "Mechanic" },
      { text = "Interrupt s|Keg Toss| adds during s|Happy Hour|.", type = "Interrupt" },
      { text = "Burn adds fast in brawler phase.", type = "Mechanic" }
    }
  },

  ["I'pa"] = {
    order = 4,
    header = "Boss: I'pa",
    ALL = {
      { text = "s|Spouting Stout| incoming — dodge swirls!", type = "Call" },
      { text = "n|Brew Drops| spawning — CC + burn before they reach boss.", type = "Call" }
    },
    TANK = {
      { text = "Move boss to opposite wall on s|Spouting Stout|.", type = "Mechanic" },
      { text = "Keep boss off puddles — avoid tank knockbacks.", type = "Mechanic" },
      { text = "Moving boss — avoid puddles + handle adds.", type = "Call" },
      { text = "Stun/knock s|Brew Drops| before Fill 'Er Up.", type = "Mechanic" },
      { text = "Watch s|Uppercut| — don't get knocked into puddles or adds.", type = "Mechanic" }
    },
    HEALER = {
      { text = "Dispel s|Burning Fermentation| ASAP. Spot heal 2 targets.", type = "Mechanic" },
      { text = "Prep CDs for s|Spouting Stout| + n|Brew Drop| combo.", type = "Call" }
    },
    DPS = {
      { text = "CC and cleave n|Brew Drops| fast. Second wave respawns from puddles.", type = "Mechanic" },
      { text = "Interrupt s|Rejuvenating Honey| from n|Flavor Scientist| trash.", type = "Interrupt" }
    }
  },

  ["Benk Buzzbee"] = {
    order = 5,
    header = "Boss: Benk Buzzbee",
    ALL = {
      { text = "s|Snack Time| active. DPS mount bee and destroy barrel.", type = "Call" },
      { text = "Avoid s|Honey Marinade| puddles — they buff adds.", type = "Mechanic" }
    },
    TANK = {
      { text = "Use major on s|Honey Marinade|. Drop puddle near wall.", type = "Mechanic" },
      { type = "Mechanic", text = "s|Honey Marinade| placement is critical—use wall edge if possible." },
      { type = "Call", text = "Dropping marinade far. Keep bees away from puddle." },
      { type = "Mechanic", text = "Pick up threat on spawned n|Cinderbees| ASAP—assign kick focus if needed." },
      { type = "Mechanic", text = "Avoid using Bee-Haw yourself — assign DPS to handle barrels." },
      { type = "Mechanic", text = "Use major defensives for s|Final Sting| from low-health n|Worker Bees|." },
      { type = "Interrupt", text = "s|Bee-stial Wrath| enrage from n|Bee Wrangler| must be kicked or soothed." }
    },
    HEALER = {
      { text = "s|Fluttering Wing|. I will top group. Watch pushback.", type = "Call" },
      { text = "Dispel or heal through s|Shredding Sting| bleeds.", type = "Mechanic" }
    },
    DPS = {
      { text = "Nuke n|Cinderbees|. At 1% mount and Bee-Haw into barrels.", type = "Mechanic" },
      { text = "s|Bee-zooka| line is dodgeable. Let target stay still.", type = "Mechanic" }
    }
  },

  ["Goldie Baronbottom"] = {
    order = 6,
    header = "Boss: Goldie Baronbottom",
    ALL = {
      { text = "s|Spread the Love| active. Detonate volatile barrels in pairs.", type = "Call" },
      { text = "s|Let it Hail|. Move out and prep defensives for high group damage.", type = "Call" }
    },
    TANK = {
      { text = "Face s|Cash Cannon| away from group and clear barrels with it.", type = "Position" },
      { text = "Prep CD if triggering volatile barrels with s|Cash Cannon|.", type = "Mechanic" },
      { type = "Mechanic", text = "Break 2 volatile barrels with first s|Cash Cannon| using frontal aim." },
      { type = "Call", text = "Breaking barrels now. Prepare healing CDs for group DoT." },
      { type = "Position", text = "Always position boss away from barrels to avoid splash destruction." },
      { type = "Mechanic", text = "Use frontal to manage barrel control—avoid clipping allies." },
      { type = "Mechanic", text = "During s|Let it Hail|, preposition to empty space and use defensives." },
      { type = "Mechanic", text = "Coordinate with DPS to use Ricochet detonations strategically." }
    },
    HEALER = {
      { text = "Volatile barrels apply s|Cindering Wounds|. Prep CDs before detonation.", type = "Call" },
      { text = "Prep healing for s|Let it Hail| and barrel chain reaction.", type = "Mechanic" }
    },
    DPS = {
      { text = "Stand near barrels with s|Burning Ricochet| to help clear safely.", type = "Mechanic" },
      { text = "Interrupt s|Honey Volley| during trash phase. Big AoE + slow.", type = "Interrupt" }
    }
  }
}