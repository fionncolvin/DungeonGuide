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
      { order = 1, role = "ALL", text = "Linear, three-wing layout with three mini-bosses required to summon first boss.", type = "Mechanic", id = "gui-WgJ6be0KP8k" },
      { order = 2, role = "ALL", text = "Dungeon-wide poison and bleed effects demand strong healing and poison dispels.", type = "Mechanic", id = "gui-wYUcL0opXhs" },
      { order = 3, role = "ALL", text = "Eggs trigger additional bat spawns — avoid stepping on them, especially during large pulls.", type = "Mechanic", id = "gui-skm7IQHslbM" },
      { order = 4, role = "ALL", text = "Casard Tailoring grants 1-minute stun on Discordant Attendants — works on high-priority mobs.", type = "Mechanic", id = "gui-PhxOHQGu2Z0" },
      { order = 5, role = "ALL", text = "New Season 3 changes include tuning adjustments, nerfed boss mechanics, and added AoE pressure.", type = "Mechanic", id = "gui-fZMc80RWXmu" }
    },
  },

  ["Route"] = {
    id = "enc-ara-kara-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are pulling everything down the stairs and across the bridge. Avoid egg traps.", type = "Call", id = "gui-WkOZ1ksg4dr" },
      { order = 2, role = "ALL", text = "After I engage n[Ixen], rotate interrupts on s[Horrifying Shrill]. CC s[Resonant Barrage] if needed.", type = "Call", id = "gui-EqPVXZuFAsA" },
      { order = 3, role = "ALL", text = "Next, we head to the middle platform and pull into n[Nack]. Be ready for poison + bleed overlaps.", type = "Call", id = "gui-mFCPpU82kxq" },
      { order = 4, role = "ALL", text = "On n[Nack], use group-wide CDs during s[Call of the Brood] + add spawns.", type = "Call", id = "gui-bq2gsydWvTw" },
      { order = 5, role = "ALL", text = "We then rotate to the right-side platform for n[Atek]. Watch for s[Poisonous Cloud] and bad positioning.", type = "Call", id = "gui-N2aGaKNH20Y" },
      { order = 6, role = "ALL", text = "After all 3 mini-bosses, n[Avanoxx] jumps in. Hold defensives for s[Alerting Shrill] and manage adds.", type = "Jump", id = "gui-YoFwMBb3sRM", target = "Avanoxx" },
      { order = 7, role = "ALL", text = "Cross bridge and prep interrupts on n[Web Mage], n[Blood Guard], and n[Stag Shell].", type = "Call", id = "gui-EwTx5Ce3GOn" },
      { order = 8, role = "ALL", text = "Before pulling n[Anub'zekt], watch for skip options or prep for heavy incoming damage.", type = "Jump", id = "gui-0lsd0Cc1u2Y", target = "Anub'zekt" },
      { order = 9, role = "ALL", text = "Final trash wing includes n[Overseers] and n[Drones]. Interrupt s[Venom Volley] and avoid s[Erupting Webs].", type = "Call", id = "gui-yPcMV2NQaCK" },
      { order = 10, role = "ALL", text = "Final boss n[Ki'katal] ahead. Ensure puddle control and CD availability.", type = "Jump", id = "gui-SAPzVGyoUZo", target = "Ki'katal the Harvester" }
    },
  },

  ["Ixen"] = {
    id = "enc-ara-kara-tww-s3-ixen",
    order = 3,
    header = "Mini-Boss: Ixen",
    entries = {
      { order = 1, role = "ALL", text = "Interrupt every cast of s[Horrifying Shrill] — fear will wipe group.", type = "Interrupt", id = "gui-bZ6GMKvp4Iw" },
      { order = 2, role = "ALL", text = "s[Resonant Barrage] is a channeled AoE — interrupt or use AoE CC if interrupts are limited.", type = "Mechanic", id = "gui-PnvlJ0nENKx" },
      { order = 3, role = "ALL", text = "If running 2x n[Trilling Attendant], rotate interrupts carefully to avoid overlap.", type = "Call", id = "gui-p6Jbgrkc3oz" },
      { order = 4, role = "ALL", text = "Dwarf racial and poison dispels help manage DoTs from nearby n[Crawlers] and n[Flyers].", type = "Call", id = "gui-8xRbOJ35oWN" },
      { order = 5, role = "TANK", text = "Face Ixen away from group to avoid cleaving s[Web Spray] into melee.", type = "Position", id = "gui-E28mCeXdQYU" }
    }
  },

  ["Nack"] = {
    id = "enc-ara-kara-tww-s3-nack",
    order = 4,
    header = "Mini-Boss: Nack",
    entries = {
      { order = 1, role = "ALL", text = "Use defensives during s[Call of the Brood] — heavy AoE plus add spawns.", type = "Call", id = "gui-rK1GsyLBzYH" },
      { order = 2, role = "ALL", text = "Interrupt s[Resonant Barrage] and CC nearby n[Attendants] if interrupt rotation is tight.", type = "Interrupt", id = "gui-kF2HbWgPRcq" },
      { order = 3, role = "TANK", text = "Grab spawned n[Ravenous Crawlers] quickly after s[Call of the Brood] to prevent healer pressure.", type = "Call", id = "gui-SAK29DWqlgn" },
      { order = 4, role = "HEALER", text = "Be ready for burst damage when s[Call of the Brood] overlaps with bleed and poison effects.", type = "Call", id = "gui-8L7UxYcbM0M" },
      { order = 5, role = "ALL", text = "Avoid stacking during s[Web Spray] frontal — position to dodge safely.", type = "Mechanic", id = "gui-ruqzOKXyCGM" }
    }
  },

  ["Atek"] = {
    id = "enc-ara-kara-tww-s3-atek",
    order = 5,
    header = "Mini-Boss: Atek",
    entries = {
      { order = 1, role = "ALL", text = "s[Poisonous Cloud] creates persistent denial zones — avoid stacking them in escape paths.", type = "Mechanic", id = "gui-XM6cTzWbqQv" },
      { order = 2, role = "ALL", text = "Stand clear of s[Web Spray] frontal — safe dodge space may be tight if clouds poorly placed.", type = "Mechanic", id = "gui-gI2ZJkqrKOc" },
      { order = 3, role = "TANK", text = "Face Atek away from group and reposition after each s[Poison Bolt] or s[Web Spray] cast.", type = "Position", id = "gui-WVKe3G9zMC8" },
      { order = 4, role = "HEALER", text = "Dispel s[Poison Bolt] stacks if players are low or comboed with AoE damage.", type = "Mechanic", id = "gui-lMtRJQqzIFK" },
      { order = 5, role = "ALL", text = "Visibility is poor near Atek's hitbox — zoom out and pre-position for cloud drops.", type = "Call", id = "gui-qYLPvEtRgm5" }
    }
  },

  ["Avanoxx"] = {
    id = "enc-ara-kara-tww-s3-avanoxx",
    order = 6,
    header = "Boss: Avanoxx",
    entries = {
      { order = 1, role = "ALL", text = "Starved Crawlers fixate players — keep them from reaching n[Avanoxx] or she gains s[Insatiable].", type = "Mechanic", id = "gui-CzhVLyiR2FO" },
      { order = 2, role = "ALL", text = "Group loosely between eggs and boss to cleave adds — don't let fixates cross red targeting circle.", type = "Call", id = "gui-nxJKLUgVzE2" },
      { order = 3, role = "ALL", text = "Use defensives for s[Alerting Shrill] — heavy AoE that also triggers egg hatching.", type = "Call", id = "gui-NGaKuoIdQSm" },
      { order = 4, role = "ALL", text = "s[Gossamer Onslaught] drops puddles under players — move in coordinated circles to stack them.", type = "Mechanic", id = "gui-AUWEyo5PDqN" },
      { order = 5, role = "TANK", text = "s[Voracious Bite] applies 50% increased damage taken — avoid further damage during debuff.", type = "Mechanic", id = "gui-ocAEb0zrf3n" },
      { order = 6, role = "TANK", text = "Position boss between egg spawns so melee can cleave adds, but stay outside red circle.", type = "Position", id = "gui-pvFEKlYRxVb" },
      { order = 7, role = "HEALER", text = "Ramp heals before s[Alerting Shrill] and prep for overlaps with s[Gossamer Onslaught].", type = "Call", id = "gui-8UZ5W7lExAe" },
      { order = 8, role = "HEALER", text = "Watch fixate targets — they can get clipped by multiple adds or puddles.", type = "Mechanic", id = "gui-MYiGCyFRfW6" },
      { order = 9, role = "DPS", text = "Use AoE CC and knockbacks on Starved Crawlers to prevent accidental boss contact.", type = "Call", id = "gui-ZAOkciqPvYg" },
      { order = 10, role = "DPS", text = "Burn boss if near death — CC adds and kite to prevent wipes from late s[Insatiable].", type = "Call", id = "gui-rb0Pzj3eIMy" }
    }
  },

  ["Anub'zekt"] = {
    id = "enc-ara-kara-tww-s3-anubzekt",
    order = 7,
    header = "Boss: Anub'zekt",
    entries = {
      { order = 1, role = "ALL", text = "s[Infestation] rotates through group — when it expires, it drops a chasing swarm. Drop away from others.", type = "Mechanic", id = "gui-7Kohg2DWM5z" },
      { order = 2, role = "ALL", text = "During s[Eye of the Swarm], move into safe zone in front of boss — rest of arena becomes lethal.", type = "Mechanic", id = "gui-xPpFkwmU2a7" },
      { order = 3, role = "ALL", text = "Spread swarm drops left (group side) and right (tank side) to keep space clean and dodging safe.", type = "Call", id = "gui-kMnNQv4sXyo" },
      { order = 4, role = "TANK", text = "Face boss away from group — s[Impale] is a frontal cone that persists through both phases.", type = "Position", id = "gui-NwK3lTYaI6F" },
      { order = 5, role = "TANK", text = "During s[Eye of the Swarm], stand far right to control safe zone direction and avoid hitting group with s[Impale].", type = "Position", id = "gui-2GHyR3aXpEb" },
      { order = 6, role = "TANK", text = "Open with defensives — boss applies debuff immediately on pull.", type = "Call", id = "gui-gzHDn7ayXqu" },
      { order = 7, role = "HEALER", text = "Top players with s[Infestation] — expiring debuff deals damage and applies DoT if mishandled.", type = "Mechanic", id = "gui-VZduBcFgOik" },
      { order = 8, role = "HEALER", text = "During swarm phase, pre-cast AoE heals and watch for add casts like s[Silken Restraint].", type = "Call", id = "gui-SvXMcEAOaJn" },
      { order = 9, role = "DPS", text = "Interrupt s[Silken Restraint] from n[Web Mages] — rooted players die if caught in swarm phase.", type = "Interrupt", id = "gui-E0FGbKwmVdu" },
      { order = 10, role = "DPS", text = "s[Burrow Charge] targets farthest player — bait to mobile classes who can blink/dash out.", type = "Call", id = "gui-A78nXc1pvFw" }
    }
  },

  ["Ki'katal the Harvester"] = {
    id = "enc-ara-kara-tww-s3-kikatal",
    order = 8,
    header = "Boss: Ki'katal the Harvester",
    entries = {
      { order = 1, role = "ALL", text = "During s[Cosmic Singularity], root in a Black Blood puddle or use movement ability ~0.8s before detonation.", type = "Mechanic", id = "gui-cKnTYvPz9Ba" },
      { order = 2, role = "ALL", text = "s[Cultivated Poison] applies poison DoT. When removed, fires diagonal waves — face away from group.", type = "Mechanic", id = "gui-Kn30RJefhuw" },
      { order = 3, role = "ALL", text = "Track your puddle early — each player must have a fresh root zone for each s[Cosmic Singularity].", type = "Call", id = "gui-hPEZqytMb7S" },
      { order = 4, role = "ALL", text = "Dodge s[Erupting Webs] swirlies — overlaps with poison waves and root zones late in the fight.", type = "Mechanic", id = "gui-dlBKRv2Qc4n" },
      { order = 5, role = "TANK", text = "Pick up n[Blood Workers] quickly after each s[Cosmic Singularity] — roots expire and adds fixate.", type = "Call", id = "gui-O3Eyw6N7bSk" },
      { order = 6, role = "HEALER", text = "Poison waves now DoT instead of one-shot — heal through if a player is clipped.", type = "Mechanic", id = "gui-KbRZYfADJYy" },
      { order = 7, role = "HEALER", text = "Pre-top players before s[Singularity] — failing to root results in heavy hit + damage taken debuff.", type = "Call", id = "gui-NfCtVXuW3zM" },
      { order = 8, role = "DPS", text = "Kill n[Blood Workers] with light AoE — be careful not to detonate puddles early via cleave.", type = "Call", id = "gui-wUHVqXkLfSb" },
      { order = 9, role = "DPS", text = "Use movement or immunity if no puddle is available for s[Singularity] — timing must be perfect.", type = "Mechanic", id = "gui-VIscTx7zqkZ" },
      { order = 10, role = "DPS", text = "Avoid breaking roots early with AoE like s[Divine Toll], s[Starfall], or chain lightning effects.", type = "Mechanic", id = "gui-Y0tuJMrhIgb" }
    }
  }
}