DungeonGuide_Guides["dung-soleahs-gambit-tww-s3"] = {
  name = "So'leah's Gambit",
  id = "dung-soleahs-gambit-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["So'leah's Gambit"] = {
    id = "enc-soleahs-gambit-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "30-minute key. Three linear wings via portals: Murloc Beach → Pirate Docks → Broker Vault.", type = "Mechanic", id = "gui-fk7QOn6UMEU" },
      { order = 2, role = "ALL", text = "Expect heavy caster spam + ground denial. Assign interrupts early and rotate stops (stuns/kicks).", type = "Mechanic", id = "gui-J6yoGnDayd4" },
      { order = 3, role = "ALL", text = "Beach priorities: kill s[Invigorating Fish Stick] instantly; kick n[Murkbrine Shellcrusher] s[Cry of Mergle] (enrage) and n[Murkbrine Fishmancer] s[Water Bolt].", type = "Call", id = "gui-VGORHsnkNWE" },
      { order = 4, role = "ALL", text = "Water hides swirlies — watch for Goliath boulders and s[Tidal Stomp] shockwaves in shallow pools.", type = "Mechanic", id = "gui-3SvXqfBpEbU" },
      { order = 5, role = "ALL", text = "Docks priorities: kick n[Hourglass Tidesage] s[Brackish Bolt]; spread loosely for Cannon splash; soothe/kite hard-hitting n[Burly Deckhand]s if needed.", type = "Call", id = "gui-ZWcWc75PgfU" },
      { order = 6, role = "ALL", text = "Vault priorities: hard swap n[Wandering Pulsar]; kick n[Focused Ritualist] s[Unstable Rift] to avoid extra explosions.", type = "Call", id = "gui-ZqsrW0HCQ" },
      { order = 7, role = "ALL", text = "Boss add/stops you'll need: n[Vault Purifier] (Hylbrande) — stop s[Empowered Defense]; So'leah assassins — kick s[Shuriken Blitz].", type = "Call", id = "gui-vLBOzL4O3h8" },
      { order = 8, role = "ALL", text = "Space game: place fires/puddles at edges so mid stays clear for Hylbrande runes and So'leah relic lines.", type = "Mechanic", id = "gui-if58ixxhYP0" },
      { order = 9, role = "HEALER", text = "Plan dispels for s[Time Bomb] (Hooktail). Save externals for Hylbrande tank combos and So'leah star soaks + raid hits.", type = "Mechanic", id = "gui-GR5wPjjkTPM" },
      { order = 10, role = "TANK", text = "Control pack movement: drag mobs out of s[Invigorating Fish Stick] aura; face dangerous frontals away; reposition to preserve safe lanes.", type = "Mechanic", id = "gui-nmeQWQIZDg" },
      { order = 11, role = "DPS", text = "Pad later — priority is sticks, tidesage casts, pulsars, and any mob with active DR/enrage buffs.", type = "Mechanic", id = "gui-y3SijvPEkdM" },
      { order = 12, role = "ALL", text = "Common BL: opener beach pull or first boss. Adapt based on group CDs/route.", type = "Call", id = "gui-bEv2ufzWtbY" }
    }
  },

  ["Route"] = {
    id = "enc-soleahs-gambit-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We open with Bloodlust on the murloc beach - pull n[Coastwalker Goliath] with nearby packs. Watch s[Tidal Stomp] timing.", type = "Call", id = "gui-y71SMeFhP44" },
      { order = 2, role = "ALL", text = "Ensure interrupts on n[Murkbrine Shellcrusher] s[Cry of Mergle] and n[Murkbrine Fishmancer] s[Water Bolt].", type = "Call", id = "gui-om6HD0Yf3Pk" },
      { order = 3, role = "ALL", text = "Swap to n[Murkbrine Scalebinder] s[Invigorating Fish Stick] on spawn - it heals/DRs nearby mobs.", type = "Call", id = "gui-BQjB2WPe7KI" },
      { order = 4, role = "ALL", text = "Kite if needed when s[Invigorating Fish Stick] is active, or drag packs out of its aura.", type = "Call", id = "gui-excbcvEl3Y" },
      { order = 5, role = "ALL", text = "Manage n[Stormforged Guardian] - dodge s[Charged Pulse] swirls and line s[Crackle] away from the group.", type = "Call", id = "gui-8NLNmydxA4E" },
      { order = 6, role = "ALL", text = "Jump to n[Hylbrande].", type = "Jump", id = "gui-7NuiXwSyzq8", target = "Hylbrande" },
      { order = 7, role = "ALL", text = "Pirate docks: kick n[Hourglass Tidesage] s[Brackish Bolt], soothe/kite n[Burly Deckhand] s[Super Saison].", type = "Call", id = "gui-9iHHINLcr2U" },
      { order = 8, role = "ALL", text = "Spread loosely for n[Corsair Officer] s[Sword Toss] ricochet and avoid Cannon fire zones.", type = "Call", id = "gui-EH7PuejvL2c" },
      { order = 9, role = "ALL", text = "Jump to n[Timecap'n Hooktail].", type = "Jump", id = "gui-KN6rR7kD4", target = "Timecap'n Hooktail" },
      { order = 10, role = "ALL", text = "Broker wing: hard swap to n[Wandering Pulsar]; kick n[Focused Ritualist] s[Unstable Rift].", type = "Call", id = "gui-fySuFNR9lJc" },
      { order = 11, role = "ALL", text = "Jump to n[So'leah].", type = "Jump", id = "gui-AynbaTgzy3Y", target = "So'leah" }
    },
  },

  ["Hylbrande"] = {
    id = "enc-soleahs-gambit-tww-s3-hylbrande",
    order = 3,
    header = "Boss: Hylbrande",
    entries = {
      { order = 1, role = "ALL", text = "Dodge s[Titanic Crash] frontal - boss faces away from group.", type = "Call", id = "gui-PqXF4soip0k" },
      { order = 2, role = "ALL", text = "Kite s[Purged by Fire] beam to walls; overlap puddles; keep centre clear.", type = "Call", id = "gui-yi97bWudvO4" },
      { order = 3, role = "ALL", text = "Kill n[Vault Purifier] and stop s[Empowered Defense]; kick s[Valorous Bolt].", type = "Call", id = "gui-bmjD4c9dsvI" },
      { order = 4, role = "ALL", text = "s[Sanitizing Cycle] - pick a rune, match the console; one player reveals pattern at back.", type = "Call", id = "gui-4HtXBxBkH0k" },
      { order = 5, role = "TANK", text = "Face boss to a wall; sidestep s[Titanic Crash] wind-up to avoid self-stun.", type = "Position", id = "gui-KPsl1xoSxts" },
      { order = 6, role = "TANK", text = "Mitigate s[Shearing Swings] - plan AM/CDs if it overlaps with s[Purifying Burst].", type = "Mechanic", id = "gui-gZhxQwhN9yA" },
      { order = 7, role = "TANK", text = "Grab n[Vault Purifier] on spawn; drag into cleave and away from consoles.", type = "Position", id = "gui-LuvyKX7ViuM" },
      { order = 8, role = "TANK", text = "Place beam puddles at edges; reposition boss to preserve clean rune lanes.", type = "Mechanic", id = "gui-jPpHR26L1ec" },
      { order = 9, role = "HEALER", text = "Top targets for s[Purifying Burst]; call personals if two low get targeted.", type = "Mechanic", id = "gui-wTqzLJVXmn8" },
      { order = 10, role = "HEALER", text = "Prep CDs for s[Purged by Fire] + s[Purifying Burst] overlaps; heal on the move.", type = "Mechanic", id = "gui-38R7VoCvX90" },
      { order = 11, role = "HEALER", text = "Intermission: spot-heal orb runners; pre-top before crossing ground effects.", type = "Mechanic", id = "gui-iKJVsd379Nc" },
      { order = 12, role = "HEALER", text = "Tank spikes: s[Shearing Swings] or add melee - have an external ready.", type = "Call", id = "gui-YgKmKdr09aM" },
      { order = 13, role = "DPS", text = "Prio n[Vault Purifier]; stop s[Empowered Defense] (stun/stop as it applies) and kick s[Valorous Bolt].", type = "Interrupt", id = "gui-MFjLxfxuZcY" },
      { order = 14, role = "DPS", text = "Bait/kite s[Purged by Fire] wide, then stack new puddles on old to save space.", type = "Mechanic", id = "gui-Zt4QGwdPtp0" },
      { order = 15, role = "DPS", text = "During s[Sanitizing Cycle], grab a rune fast; use mobility to reach your console.", type = "Mechanic", id = "gui-Kqr9ns2pmTs" },
      { order = 16, role = "DPS", text = "Stay off tank/front; hold bursts for add waves to prevent s[Empowered Defense] uptime.", type = "Call", id = "gui-ZJhvOJWtb60" }
    }
  },

  ["Timecap'n Hooktail"] = {
    id = "enc-soleahs-gambit-tww-s3-hooktail",
    order = 4,
    header = "Boss: Timecap'n Hooktail",
    entries = {
      { order = 1, role = "ALL", text = "Tank aims s[Infinite Breath] through fixate adds; everyone else stay out of the cone.", type = "Call", id = "gui-HhYah91hygE" },
      { order = 2, role = "ALL", text = "Place s[Cannon Barrage] fires together along the edge; rotate as space fills.", type = "Call", id = "gui-7xHXVGdIDg" },
      { order = 3, role = "ALL", text = "Fight s[Anchor Shot] pulls — use movement to avoid being dragged off the platform.", type = "Call", id = "gui-J04jjLwdEmw" },
      { order = 4, role = "ALL", text = "Fixate adds ramp up speed/damage — keep them slowed/stunned and path them into the breath.", type = "Mechanic", id = "gui-oZawhPwaTQ" },
      { order = 5, role = "TANK", text = "Position boss near the wall facing the water; line s[Infinite Breath] through adds and away from party.", type = "Position", id = "gui-v0h3bq4Vyc" },
      { order = 6, role = "TANK", text = "Step to adjust the cone just before breath lands; don't clip stacked fire or teammates.", type = "Mechanic", id = "gui-gXGShTRK72g" },
      { order = 7, role = "TANK", text = "Drag boss along the rim as fires accumulate to preserve safe space for the group.", type = "Position", id = "gui-e5GHFMOSfYQ" },
      { order = 8, role = "TANK", text = "Gather new adds until the next breath; use short kites to keep them in the cone path.", type = "Mechanic", id = "gui-MaRLDeLBHR4" },
      { order = 9, role = "HEALER", text = "Dispel s[Time Bomb] one-by-one; call target and heal the AoE on removal.", type = "Call", id = "gui-Q7GhsZJiLvs" },
      { order = 10, role = "HEALER", text = "Avoid dispelling during s[Anchor Shot] pulls — wait until footing is safe.", type = "Mechanic", id = "gui-FRpeeSV8gnA" },
      { order = 11, role = "HEALER", text = "Prep spot-heals for Cannon splash and players caught by add melees; externals for tank during add stacks.", type = "Mechanic", id = "gui-ywl9a9IlbKg" },
      { order = 12, role = "HEALER", text = "If a player is stunned by breath, triage quickly — they're vulnerable to follow-up damage.", type = "Mechanic", id = "gui-M3a5peRdPQ" },
      { order = 13, role = "DPS", text = "Control fixate adds (slows/stuns/knockbacks) to line them for s[Infinite Breath]; minimal padding.", type = "Call", id = "gui-X03RK2IxyAo" },
      { order = 14, role = "DPS", text = "Bait s[Cannon Barrage] to the same quadrant to keep the centre clear for movement.", type = "Position", id = "gui-yK0YBprb3w" },
      { order = 15, role = "DPS", text = "If breath misses, finish low adds quickly to stabilise before the next wave.", type = "Mechanic", id = "gui-Ssevq4ky8U" },
      { order = 16, role = "DPS", text = "Melee: stay off the cone's flanks during breath adjustments; ranged: maintain safe angles for pulls.", type = "Mechanic", id = "gui-20prwgo8004" }
    }
  },

  ["So'leah"] = {
    id = "enc-soleahs-gambit-tww-s3-soleah",
    order = 5,
    header = "Boss: So'leah",
    entries = {
      { order = 1, role = "ALL", text = "Kick n[Assassin] s[Shuriken Blitz] and prio-kill the add to prevent group bleed.", type = "Interrupt", id = "gui-fHPZEo1wSQ" },
      { order = 2, role = "ALL", text = "s[Collapsing Star] — soak one at a time with personals; final charge can safely expire.", type = "Call", id = "gui-M1iVAfy3Vug" },
      { order = 3, role = "ALL", text = "s[Power Overwhelming] — stand in arrow lines and aim s[Hyperlight Jolt] through relics to break shield.", type = "Call", id = "gui-aS4c0f0ub4k" },
      { order = 4, role = "ALL", text = "Keep space tidy: dodge s[Energy Fragmentation] shots and avoid s[Hyperlight Nova] zones around relics/boss.", type = "Mechanic", id = "gui-mEixn4fI" },
      { order = 5, role = "TANK", text = "Park boss near the edge; after each shield break, reposition to keep relic lanes clear.", type = "Position", id = "gui-GufqyA8V1xo" },
      { order = 6, role = "TANK", text = "No heavy buster, but s[Hyperlight Spark] + melee hurts — plan AM and call externals during star soaks.", type = "Mechanic", id = "gui-vg9EpQmYB9Q" },
      { order = 7, role = "TANK", text = "Don't drag boss through arrow lines during s[Hyperlight Jolt]; wait, then move to a clean area.", type = "Position", id = "gui-awu7rHVaWaM" },
      { order = 8, role = "TANK", text = "Help control n[Assassin]: stun/stop s[Shuriken Blitz] and keep it in cleave for fast kill.", type = "Call", id = "gui-L1kwi47qCiM" },
      { order = 9, role = "HEALER", text = "Stagger s[Collapsing Star] soaks; ramp for overlaps with s[Hyperlight Spark]. Use externals for low HP soakers.", type = "Mechanic", id = "gui-I2t2OxD3FzY" },
      { order = 10, role = "HEALER", text = "Triage s[Shuriken Blitz] bleed targets and the tank during movement. Expect spikes after shield breaks.", type = "Mechanic", id = "gui-z5RrPYXHBt8" },
      { order = 11, role = "HEALER", text = "During s[Power Overwhelming], pre-top before lines form; heal on the move while players align s[Hyperlight Jolt].", type = "Call", id = "gui-lkwRsVdxoBw" },
      { order = 12, role = "HEALER", text = "After shield break, cover raid for s[Energy Fragmentation] volleys while the tank repositions.", type = "Mechanic", id = "gui-pYN84DtzBiw" },
      { order = 13, role = "DPS", text = "Prio interrupts on n[Assassin] s[Shuriken Blitz]; swap and delete the add quickly.", type = "Interrupt", id = "gui-pRynzVuj488" },
      { order = 14, role = "DPS", text = "Soak s[Collapsing Star] by assignment; use personals/DRs if you're low. Don't double-soak.", type = "Mechanic", id = "gui-bjPHY1MtYzc" },
      { order = 15, role = "DPS", text = "s[Power Overwhelming]: get into an arrow line fast; aim s[Hyperlight Jolt] through as many relics as possible.", type = "Call", id = "gui-RvTGsrcmks8" },
      { order = 16, role = "DPS", text = "Maintain clean lanes: avoid s[Hyperlight Nova] auras, keep moving to dodge s[Energy Fragmentation].", type = "Mechanic", id = "gui-dCh2CxgNqY" }
    }
  }
}
