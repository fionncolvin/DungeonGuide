DungeonGuide_Guides["dung-ara-kara-tww-s3"] = {
  name = "Ara-Kara, City of Echoes",
  id = "dung-ara-kara-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["Intro"] = {
    id = "enc-ara-kara-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "Linear, three-wing layout with three mini-bosses required to summon first boss.", type = "Mechanic", id = "gui-wogFWkLR1lY" },
      { order = 2, role = "ALL", text = "Dungeon-wide poison and bleed effects demand strong healing and poison dispels.", type = "Mechanic", id = "gui-UDUaVBOCwiU" },
      { order = 3, role = "ALL", text = "Eggs trigger additional bat spawns — avoid stepping on them, especially during large pulls.", type = "Mechanic", id = "gui-qMgHdwqUqg" },
      { order = 4, role = "ALL", text = "Casard Tailoring grants 1-minute stun on Discordant Attendants — works on high-priority mobs.", type = "Mechanic", id = "gui-u0pNAyVBXxk" },
      { order = 5, role = "ALL", text = "New Season 3 changes include tuning adjustments, nerfed boss mechanics, and added AoE pressure.", type = "Mechanic", id = "gui-DUTpYaZEkTE" }
    },
  },

  ["Route"] = {
    id = "enc-ara-kara-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are pulling everything down the stairs and across the bridge. Avoid egg traps.", type = "Call", id = "gui-Hy7BgSab8Xk" },
      { order = 2, role = "ALL", text = "After I engage n[Ixin], rotate interrupts on s[Horrifying Shrill]. CC s[Resonant Barrage] if needed.", type = "Call", id = "gui-xG4RaNKBXI" },
      { order = 3, role = "ALL", text = "Next, we head to the middle platform and pull into n[Nakt]. Be ready for poison + bleed overlaps.", type = "Call", id = "gui-O9W1ICbveSI" },
      { order = 4, role = "ALL", text = "On n[Nakt], use group-wide CDs during s[Call of the Brood] + add spawns.", type = "Call", id = "gui-SXso4JmgBM" },
      { order = 5, role = "ALL", text = "We then rotate to the right-side platform for n[Atik]. Watch for s[Poisonous Cloud] and bad positioning.", type = "Call", id = "gui-84jQgIYukSU" },
      { order = 6, role = "ALL", text = "After all 3 mini-bosses, n[Avanoxx] jumps in. Hold defensives for s[Alerting Shrill] and manage adds.", type = "Jump", id = "gui-Zn8HrrtDg5o", target = "Avanoxx" },
      { order = 7, role = "ALL", text = "Cross bridge and prep interrupts on n[Web Mage], n[Blood Guard], and n[Stag Shell].", type = "Call", id = "gui-YhdUjnXY" },
      { order = 8, role = "ALL", text = "Before pulling n[Anub'zekt], watch for skip options or prep for heavy incoming damage.", type = "Jump", id = "gui-5QpLXEY9WVg", target = "Anub'zekt" },
      { order = 9, role = "ALL", text = "Final trash wing includes n[Overseers] and n[Drones]. Interrupt s[Venom Volley] and avoid s[Erupting Webs].", type = "Call", id = "gui-2GQVKN4rHzU" },
      { order = 10, role = "ALL", text = "Final boss n[Ki'katal] ahead. Ensure puddle control and CD availability.", type = "Jump", id = "gui-YXnzCSNs50w", target = "Ki'katal the Harvester" }
    },
  },

  ["Ixin"] = {
    id = "enc-ara-kara-tww-s3-ixin",
    order = 3,
    header = "Mini-Boss: Ixin",
    entries = {
      { order = 1, role = "ALL", text = "Interrupt every cast of s[Horrifying Shrill] — fear will wipe group.", type = "Interrupt", id = "gui-ADqApnPrVcw" },
      { order = 2, role = "ALL", text = "s[Resonant Barrage] is a channeled AoE — interrupt or use AoE CC if interrupts are limited.", type = "Mechanic", id = "gui-UWFqtkXpJA8" },
      { order = 3, role = "ALL", text = "If running 2x n[Trilling Attendant], rotate interrupts carefully to avoid overlap.", type = "Call", id = "gui-oEbMEllgqA" },
      { order = 4, role = "ALL", text = "Dwarf racial and poison dispels help manage DoTs from nearby n[Crawlers] and n[Flyers].", type = "Call", id = "gui-uvbG0J70RZg" },
      { order = 5, role = "TANK", text = "Face Ixin away from group to avoid cleaving s[Web Spray] into melee.", type = "Position", id = "gui-gC8Hky7A51w" }
    }
  },

  ["Nakt"] = {
    id = "enc-ara-kara-tww-s3-nakt",
    order = 4,
    header = "Mini-Boss: Nakt",
    entries = {
      { order = 1, role = "ALL", text = "Use defensives during s[Call of the Brood] — heavy AoE plus add spawns.", type = "Call", id = "gui-WeO8nJ9hiJ8" },
      { order = 2, role = "ALL", text = "Interrupt s[Resonant Barrage] and CC nearby n[Attendants] if interrupt rotation is tight.", type = "Interrupt", id = "gui-qj1jzFybmvU" },
      { order = 3, role = "TANK", text = "Grab spawned n[Ravenous Crawlers] quickly after s[Call of the Brood] to prevent healer pressure.", type = "Call", id = "gui-U3bLnIiwLs" },
      { order = 4, role = "HEALER", text = "Be ready for burst damage when s[Call of the Brood] overlaps with bleed and poison effects.", type = "Call", id = "gui-TaVnRSRSOko" },
      { order = 5, role = "ALL", text = "Avoid stacking during s[Web Spray] frontal — position to dodge safely.", type = "Mechanic", id = "gui-fNoKiFIjiNg" }
    }
  },

  ["Atik"] = {
    id = "enc-ara-kara-tww-s3-atik",
    order = 5,
    header = "Mini-Boss: Atik",
    entries = {
      { order = 1, role = "ALL", text = "s[Poisonous Cloud] creates persistent denial zones — avoid stacking them in escape paths.", type = "Mechanic", id = "gui-Wv9l4BnZZ0" },
      { order = 2, role = "ALL", text = "Stand clear of s[Web Spray] frontal — safe dodge space may be tight if clouds poorly placed.", type = "Mechanic", id = "gui-vgCJE5Jnoqw" },
      { order = 3, role = "TANK", text = "Face Atik away from group and reposition after each s[Poison Bolt] or s[Web Spray] cast.", type = "Position", id = "gui-2smJcFVsRo" },
      { order = 4, role = "HEALER", text = "Dispel s[Poison Bolt] stacks if players are low or comboed with AoE damage.", type = "Mechanic", id = "gui-kV1GtVFGf6w" },
      { order = 5, role = "ALL", text = "Visibility is poor near Atik's hitbox — zoom out and pre-position for cloud drops.", type = "Call", id = "gui-F0dM82ZvKmU" }
    }
  },

  ["Avanoxx"] = {
    id = "enc-ara-kara-tww-s3-avanoxx",
    order = 6,
    header = "Boss: Avanoxx",
    entries = {
      { order = 1, role = "ALL", text = "Starved Crawlers fixate players — keep them from reaching n[Avanoxx] or she gains s[Insatiable].", type = "Mechanic", id = "gui-XFqF1iU1n0" },
      { order = 2, role = "ALL", text = "Group loosely between eggs and boss to cleave adds — don't let fixates cross red targeting circle.", type = "Call", id = "gui-TCsG9njo7Vo" },
      { order = 3, role = "ALL", text = "Use defensives for s[Alerting Shrill] — heavy AoE that also triggers egg hatching.", type = "Call", id = "gui-gXIwrdeo5g" },
      { order = 4, role = "ALL", text = "s[Gossamer Onslaught] drops puddles under players — move in coordinated circles to stack them.", type = "Mechanic", id = "gui-z84Uk7QLI9M" },
      { order = 5, role = "TANK", text = "s[Voracious Bite] applies 50% increased damage taken — avoid further damage during debuff.", type = "Mechanic", id = "gui-lbcPj6KYOg" },
      { order = 6, role = "TANK", text = "Position boss between egg spawns so melee can cleave adds, but stay outside red circle.", type = "Position", id = "gui-RPsvL2GqgMc" },
      { order = 7, role = "HEALER", text = "Ramp heals before s[Alerting Shrill] and prep for overlaps with s[Gossamer Onslaught].", type = "Call", id = "gui-SXn9pOGz2I" },
      { order = 8, role = "HEALER", text = "Watch fixate targets — they can get clipped by multiple adds or puddles.", type = "Mechanic", id = "gui-QaAer6IwJVk" },
      { order = 9, role = "DPS", text = "Use AoE CC and knockbacks on Starved Crawlers to prevent accidental boss contact.", type = "Call", id = "gui-fnpanEevYQ" },
      { order = 10, role = "DPS", text = "Burn boss if near death — CC adds and kite to prevent wipes from late s[Insatiable].", type = "Call", id = "gui-aFhlF0VlP4" }
    }
  },

  ["Anub'zekt"] = {
    id = "enc-ara-kara-tww-s3-anubzekt",
    order = 7,
    header = "Boss: Anub'zekt",
    entries = {
      { order = 1, role = "ALL", text = "s[Infestation] rotates through group — when it expires, it drops a chasing swarm. Drop away from others.", type = "Mechanic", id = "gui-k91mFbUGqS0" },
      { order = 2, role = "ALL", text = "During s[Eye of the Swarm], move into safe zone in front of boss — rest of arena becomes lethal.", type = "Mechanic", id = "gui-7tArszjYTo" },
      { order = 3, role = "TANK", text = "During s[Eye of the Swarm], tank right, group left to control safe zone and avoid s[Impale] on group.", type = "Position", id = "gui-FEme1PY0tyI" },
      { order = 4, role = "ALL", text = "Spread swarm drops left (group side) and right (tank side) to keep space clean and dodging safe.", type = "Call", id = "gui-hSMBIsohqGU" },
      { order = 5, role = "TANK", text = "Face boss away from group — s[Impale] is a frontal cone that persists through both phases.", type = "Position", id = "gui-Q0PaZPIujq8" },
      { order = 6, role = "TANK", text = "During s[Eye of the Swarm], stand far right to control safe zone direction and avoid hitting group with s[Impale].", type = "Position", id = "gui-3P7AYzuizc" },
      { order = 7, role = "TANK", text = "Open with defensives — boss applies debuff immediately on pull.", type = "Call", id = "gui-K4bwlOIHaT4" },
      { order = 8, role = "HEALER", text = "Top players with s[Infestation] — expiring debuff deals damage and applies DoT if mishandled.", type = "Mechanic", id = "gui-UKMuzNhsE8" },
      { order = 9, role = "HEALER", text = "During swarm phase, pre-cast AoE heals and watch for add casts like s[Silken Restraint].", type = "Call", id = "gui-HCNM3w9l4zM" },
      { order = 10, role = "DPS", text = "Interrupt s[Silken Restraint] from n[Web Mages] — rooted players die if caught in swarm phase.", type = "Interrupt", id = "gui-egkKP6enVK4" },
      { order = 11, role = "DPS", text = "s[Burrow Charge] targets farthest player — bait to mobile classes who can blink/dash out.", type = "Call", id = "gui-FcVjwZHjvHE" }
    }
  },

  ["Ki'katal the Harvester"] = {
    id = "enc-ara-kara-tww-s3-kikatal",
    order = 8,
    header = "Boss: Ki'katal the Harvester",
    entries = {
      { order = 1, role = "ALL", text = "During s[Cosmic Singularity], root in a Black Blood puddle or use movement ability ~0.8s before detonation.", type = "Mechanic", id = "gui-cz4aLt8EE8M" },
      { order = 2, role = "ALL", text = "If rooted by n[Blood Worker] puddle, interrupt or CC the add to free yourself after s[Cosmic Singularity].", type = "Mechanic", id = "gui-k1FME0DxE8" },
      { order = 3, role = "ALL", text = "s[Cultivated Poison] applies poison DoT. When removed, fires diagonal waves — face away from group.", type = "Mechanic", id = "gui-eg3xRMzm4eU" },
      { order = 4, role = "ALL", text = "Track your puddle early — each player must have a fresh root zone for each s[Cosmic Singularity].", type = "Call", id = "gui-hQVZgHhaE" },
      { order = 5, role = "ALL", text = "Dodge s[Erupting Webs] swirlies — overlaps with poison waves and root zones late in the fight.", type = "Mechanic", id = "gui-RrTJVJvbhzY" },
      { order = 6, role = "TANK", text = "Pick up n[Blood Workers] quickly after each s[Cosmic Singularity] — roots expire and adds fixate.", type = "Call", id = "gui-BL2MDIulScY" },
      { order = 7, role = "HEALER", text = "Poison waves now DoT instead of one-shot — heal through if a player is clipped.", type = "Mechanic", id = "gui-Un31lxTnh2k" },
      { order = 8, role = "HEALER", text = "Pre-top players before s[Singularity] — failing to root results in heavy hit + damage taken debuff.", type = "Call", id = "gui-8Kanpe8TStY" },
      { order = 9, role = "DPS", text = "Kill n[Blood Workers] with light AoE — be careful not to detonate puddles early via cleave.", type = "Call", id = "gui-1CLCYRnUDiQ" },
      { order = 10, role = "DPS", text = "Use movement or immunity if no puddle is available for s[Singularity] — timing must be perfect.", type = "Mechanic", id = "gui-UOuXHWCAhng" },
      { order = 11, role = "DPS", text = "Avoid breaking roots early with AoE like s[Divine Toll], s[Starfall], or chain lightning effects.", type = "Mechanic", id = "gui-tnh7HWdmPBc" }
    }
  }
}
