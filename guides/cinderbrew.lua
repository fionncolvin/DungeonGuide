DungeonGuide_Guides["Cinderbrew Meadery"] = {
  id = "dung-cinderbrew",
  ["Cinderbrew Meadery"] = {
    id = "enc-cinderbrew-guide",
    order = 1,
    header = "Guide: Cinderbrew Meadery",
    ALL = {
      { text = "33-minute timer with split path after Boss 1.", type = "Mechanic", id = "gui-mjwlPbE32PA" },
      { text = "s|Sticky Honey| (Cooking/Alchemy 25+): AoE slow + haste debuff — affects allies too.", type = "Mechanic", id = "gui-S9Z39Og" },
      { text = "s|Flamethrower| (Eng/Gnome/Goblin 25+): Low AoE damage — best used by healers.", type = "Mechanic", id = "gui-Zwb3cLcp68M" },
      { text = "Watch for Thirsty enrages — mobs gain haste and damage.", type = "Mechanic", id = "gui-P3ESu4qPHg" },
      { text = "Heavy use of swirlies, AoE zones, and frontal attacks — constant movement needed.", type = "Mechanic", id = "gui-0wilnaHqoI" },
      { text = "Interrupt priority: s|Boiling Flames|, s|Honey Volley|, s|Free Samples|, s|Bee-stial Wrath|.", type = "Interrupt", id = "gui-2dPDlLbf2w" },
      { text = "Frequent magic debuffs — s|Burning Fermentation|, s|Bee Venom|, s|Erupting Inferno|.", type = "Mechanic", id = "gui-4wUjYl9w2o" },
    },
    TANK = {
      { text = "Route splits to n|I'pa| (left) or n|Buzzbee| (right) after n|Aldryr|.", type = "Mechanic", id = "gui-4mbUJuIxIs0" },
      { text = "Avoid pulling multiple CC-immune mobs (n|Chewie|, n|Harvesters|, n|Hopgoblins|).", type = "Mechanic", id = "gui-Bt3FfbYeK4" },
      { text = "Stagger Bee packs — s|Final Sting| and s|Swarming Surprise| can chain kill tanks.", type = "Mechanic", id = "gui-PNdUSfm0rps" },
      { text = "Pick up n|Brew Drops|, n|Bee-lets|, and n|Ravenous Cinderbees| quickly to control threat.", type = "Mechanic", id = "gui-rcKkbCJQRA" },
    },
    HEALER = {
      { text = "s|Flamethrower| is safe utility — avoid during heavy group damage.", type = "Mechanic", id = "gui-Ns0qoZ2A" },
      { text = "Prepare CDs for s|Volatile Keg|, s|Swarming Surprise|, and boss intermissions.", type = "Mechanic", id = "gui-6K1oR8sfZ20" },
    },
    DPS = {
      { text = "Kill Failed Batch kegs before they explode.", type = "Mechanic", id = "gui-OZ4KtoeE38s" },
      { text = "Use CC on n|Brew Drops| and Bees — prevent them reaching boss/barrels.", type = "Mechanic", id = "gui-IELGyq8w9ss" },
    },
  },

  ["Route"] = {
    id = "enc-cinderbrew-route",
    order = 2,
    header = "Route: Cinderbrew Meadery",
    ALL = {
      { text = "Pulling right side to start. Watch n|Chef Chewie| patrol.", type = "Call", id = "gui-8fcNHfunSg4" },
      { text = "Only one n|Hired Muscle| at a time. No double pulls.", type = "Call", id = "gui-dCxLtK2KroA" },
      { text = "Pulling far-right n|Pyromaniac|, n|Patrons|, and n|Hired Muscle| first.", type = "Call", id = "gui-wujRxZxxK0k" },
      { text = "If n|Attendant| is close, cleave it with first pull.", type = "Call", id = "gui-g4K41pxiUDU" },
      { text = "Pop Lust early while burning first pull cooldowns.", type = "Call", id = "gui-5xwkPsQL5Q" },
      { text = "Wait for safe patrol before pulling n|Chef Chewie|.", type = "Call", id = "gui-VZWYglRlafs" },
      { text = "After n|Chewie|, pull n|Hired Muscle| + nearby trash carefully.", type = "Mechanic", id = "gui-0dKnSwBXFZo" },
      { text = "Skip deep corner pack. Not needed for count.", type = "Call", id = "gui-8p72Zia2s0" },
      { text = "Heading north after first boss. Fighting n|I'pa| next.", type = "Call", id = "gui-QM79W2M9xIU" },
      { text = "One pack at a time here. Will struggle otherwise.", type = "Call", id = "gui-u3YwQrepmvQ" },
      { text = "Focus n|Flavor Scientists| for interrupts. Watch n|Hop Goblins|.", type = "Mechanic", id = "gui-ZH6PqNA8PKs" },
      { text = "Pull n|Careless Hop Goblin| first on n|I'pa| platform.", type = "Call", id = "gui-rJffNDDpKv4" },
      { text = "Pull packs out into hallway to avoid double patrols.", type = "Call", id = "gui-WG6i0qvhaUk" },
      { text = "After n|I'pa|, move south to n|Buzzbee| wing.", type = "Call", id = "gui-0y8O7qDhPLI" },
      { text = "Pulling three Bee packs carefully. Watch for Sting casts.", type = "Call", id = "gui-F99olTkCiU" },
      { text = "Pull corner n|Purveyor| with Worker Bees. Manage puddles.", type = "Call", id = "gui-Xi2wKqoSOiU" },
      { text = "Do not pull more than two n|Purveyors| at once.", type = "Call", id = "gui-L8GmJ7ywIRM" },
      { text = "Try skipping the n|Purveyor| near boss room entrance.", type = "Call", id = "gui-2uEiHPVsXZg" },
      { text = "Clear most Beelets before n|Buzzbee| fight. Pull a few into boss if clean.", type = "Call", id = "gui-uwfABRbgXZo" },
      { text = "After n|Buzzbee|, small pulls to n|Goldie|. Trash gives low count.", type = "Mechanic", id = "gui-VeOD6rvH6mw" }
    },
  },

  ["Brew Master Aldryr"] = {
    id = "enc-cinderbrew-brew-master-aldryr",
    order = 3,
    header = "Boss: Brew Master Aldryr",
    ALL = {
      { text = "s|Blazing Belch| frontal. Stand close + sidestep.", type = "Mechanic", id = "gui-KwdTxyY4i9M" },
      { text = "s|Happy Hour|: Healer bar, Tank south, DPS other 3.", type = "Call", id = "gui-hXTQqkA6C0g" }
    },
    TANK = {
      { text = "Defensive on s|Keg Smash|. Avoid honey puddle.", type = "Mechanic", id = "gui-SDAwn4Z4yl4" },
      { text = "Kite boss during brawler phase — avoid stuns.", type = "Position", id = "gui-xtEio9eZ0hM" },
      { text = "Face boss to wall to reduce frontal danger.", type = "Mechanic", id = "gui-eHhGjQUgKZs" },
      { text = "Stay mid-room. Avoid s|Crawling Brawl| zones.", type = "Position", id = "gui-usaIaTUq2Po" },
      { text = "Pick up beer early in s|Happy Hour|. Assign patrons if PUG.", type = "Mechanic", id = "gui-IyFYztjtAeE" },
      { text = "Tanking front. Watch frontal. Avoid puddles.", type = "Call", id = "gui-ygFF6nSem8" }
    },
    HEALER = {
      { text = "s|Throw Cinderbrew| on 2 players. I’ll spot heal or use CDs.", type = "Call", id = "gui-AmwGQ4cHuh8" },
      { text = "Burst healing: s|Keg Smash|, s|Happy Hour|, and adds.", type = "Mechanic", id = "gui-ZPYucBzoJ8E" }
    },
    DPS = {
      { text = "Dodge frontal. Rotate mugs if needed.", type = "Mechanic", id = "gui-OiCW0POm1Lo" },
      { text = "Interrupt s|Keg Toss| adds during s|Happy Hour|.", type = "Interrupt", id = "gui-qhbvaKjyaYs" },
      { text = "Burn adds fast in brawler phase.", type = "Mechanic", id = "gui-ItGGop5Wcq8" }
    }
  },

  ["I'pa"] = {
    id = "enc-cinderbrew-ipa",
    order = 4,
    header = "Boss: I'pa",
    ALL = {
      { text = "s|Spouting Stout| incoming — dodge swirls!", type = "Call", id = "gui-GFDl9bLOkjE" },
      { text = "n|Brew Drops| spawning — CC + burn before they reach boss.", type = "Call", id = "gui-HReiAAZfZc0" }
    },
    TANK = {
      { text = "Move boss to opposite wall on s|Spouting Stout|.", type = "Mechanic", id = "gui-KZygOAERT0" },
      { text = "Keep boss off puddles — avoid tank knockbacks.", type = "Mechanic", id = "gui-1GKEfn8kw0c" },
      { text = "Moving boss — avoid puddles + handle adds.", type = "Call", id = "gui-aDduXN9jRZk" },
      { text = "Stun/knock s|Brew Drops| before Fill 'Er Up.", type = "Mechanic", id = "gui-sQ1Gcv8OlIk" },
      { text = "Watch s|Uppercut| — don't get knocked into puddles or adds.", type = "Mechanic", id = "gui-nhzdzzpNyUc" }
    },
    HEALER = {
      { text = "Dispel s|Burning Fermentation| ASAP. Spot heal 2 targets.", type = "Mechanic", id = "gui-2d0xiHveU" },
      { text = "Prep CDs for s|Spouting Stout| + n|Brew Drop| combo.", type = "Call", id = "gui-FySH9ZQyDY" }
    },
    DPS = {
      { text = "CC and cleave n|Brew Drops| fast. Second wave respawns from puddles.", type = "Mechanic", id = "gui-sQxfQqXQKNM" },
      { text = "Interrupt s|Rejuvenating Honey| from n|Flavor Scientist| trash.", type = "Interrupt", id = "gui-OT9KoqCEiUM" }
    }
  },

  ["Benk Buzzbee"] = {
    id = "enc-cinderbrew-benk-buzzbee",
    order = 5,
    header = "Boss: Benk Buzzbee",
    ALL = {
      { text = "s|Snack Time| active. DPS mount bee and destroy barrel.", type = "Call", id = "gui-izrCzoyCbmc" },
      { text = "Avoid s|Honey Marinade| puddles — they buff adds.", type = "Mechanic", id = "gui-xzvDbrpvno" }
    },
    TANK = {
      { text = "Use major on s|Honey Marinade|. Drop puddle near wall.", type = "Mechanic", id = "gui-ShFlvbqoFBM" },
      { type = "Mechanic", text = "s|Honey Marinade| placement is critical—use wall edge if possible." },
      { type = "Call", text = "Dropping marinade far. Keep bees away from puddle." },
      { type = "Mechanic", text = "Pick up threat on spawned n|Cinderbees| ASAP—assign kick focus if needed." },
      { type = "Mechanic", text = "Avoid using Bee-Haw yourself — assign DPS to handle barrels." },
      { type = "Mechanic", text = "Use major defensives for s|Final Sting| from low-health n|Worker Bees|." },
      { type = "Interrupt", text = "s|Bee-stial Wrath| enrage from n|Bee Wrangler| must be kicked or soothed." }
    },
    HEALER = {
      { text = "s|Fluttering Wing|. I will top group. Watch pushback.", type = "Call", id = "gui-BrRy6NpeYw4" },
      { text = "Dispel or heal through s|Shredding Sting| bleeds.", type = "Mechanic", id = "gui-31Ezyi4R0ZA" }
    },
    DPS = {
      { text = "Nuke n|Cinderbees|. At 1% mount and Bee-Haw into barrels.", type = "Mechanic", id = "gui-IGFAmtZZsQY" },
      { text = "s|Bee-zooka| line is dodgeable. Let target stay still.", type = "Mechanic", id = "gui-oHzPXyQOSU" }
    }
  },

  ["Goldie Baronbottom"] = {
    id = "enc-cinderbrew-goldie-baronbottom",
    order = 6,
    header = "Boss: Goldie Baronbottom",
    ALL = {
      { text = "s|Spread the Love| active. Detonate volatile barrels in pairs.", type = "Call", id = "gui-uGHZxWkhygk" },
      { text = "s|Let it Hail|. Move out and prep defensives for high group damage.", type = "Call", id = "gui-a5Tv8UCj8g8" }
    },
    TANK = {
      { text = "Face s|Cash Cannon| away from group and clear barrels with it.", type = "Position", id = "gui-rZldQ1JtY6k" },
      { text = "Prep CD if triggering volatile barrels with s|Cash Cannon|.", type = "Mechanic", id = "gui-f2Zqxopsoqs" },
      { type = "Mechanic", text = "Break 2 volatile barrels with first s|Cash Cannon| using frontal aim." },
      { type = "Call", text = "Breaking barrels now. Prepare healing CDs for group DoT." },
      { type = "Position", text = "Always position boss away from barrels to avoid splash destruction." },
      { type = "Mechanic", text = "Use frontal to manage barrel control—avoid clipping allies." },
      { type = "Mechanic", text = "During s|Let it Hail|, preposition to empty space and use defensives." },
      { type = "Mechanic", text = "Coordinate with DPS to use Ricochet detonations strategically." }
    },
    HEALER = {
      { text = "Volatile barrels apply s|Cindering Wounds|. Prep CDs before detonation.", type = "Call", id = "gui-PK4UAqM8RPM" },
      { text = "Prep healing for s|Let it Hail| and barrel chain reaction.", type = "Mechanic", id = "gui-FSjII1yTvs" }
    },
    DPS = {
      { text = "Stand near barrels with s|Burning Ricochet| to help clear safely.", type = "Mechanic", id = "gui-9PcGsGpxHI" },
      { text = "Interrupt s|Honey Volley| during trash phase. Big AoE + slow.", type = "Interrupt", id = "gui-TjSqgMknAtE" }
    }
  }
}