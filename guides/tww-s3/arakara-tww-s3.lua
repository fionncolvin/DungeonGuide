DungeonGuide_Guides["dung-ara-kara-tww-s3"] = {
  unitMapIDs = { 2216, 2357, 2358 },
  challengeMapID = {503},
  name = "Ara-Kara, City of Echoes",
  id = "dung-ara-kara-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["Ara-Kara, City of Echoes"] = {
    id = "enc-ara-kara-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "Linear, three-wing layout with three mini-bosses required to summon first boss.", type = "Mechanic", id = "gui-GprLSwLgezM" },
      { order = 2, role = "ALL", text = "Dungeon-wide poison and bleed effects demand strong healing and poison dispels.", type = "Mechanic", id = "gui-QgxEveIdGks" },
      { order = 3, role = "ALL", text = "Eggs trigger additional bat spawns - avoid stepping on them, especially during large pulls.", type = "Mechanic", id = "gui-QmaJqt8EKQY" },
      { order = 4, role = "ALL", text = "Casard Tailoring grants 1-minute stun on Discordant Attendants - works on high-priority mobs.", type = "Mechanic", id = "gui-sTVC1A9zRU" },
      { order = 5, role = "ALL", text = "New S3 changes: added bleed to Jabbing Flyers (now hits all players), reduced Nakt's AoE, nerfed Ki'katal damage, reworked some trash abilities.", type = "Mechanic", id = "gui-swDlTtYB400" },
      { order = 6, role = "ALL", text = "Tailoring stun also works on Hulking Bloodguards, cancelling Locust Swarm for safer trash pulls.", type = "Call", id = "gui-PRp86ipAeA" }
    },
  },

  ["Route"] = {
    id = "enc-ara-kara-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1,  role = "ALL", text = "We are pulling everything down the stairs and across the bridge. Avoid egg traps.", type = "Call",   id = "gui-WbbPXjxDHLs" },
      { order = 2,  role = "ALL", text = "CC and Kill n[Trilling Attendant] fast to stop s[Resonant Barrage]/s[Web Bolt] spam.", target = "Trilling Attendant", type = "Target", id = "gui-ba3PqXN1b00" },
      { order = 3,  role = "ALL", text = "Interrupt s[Horrifying Shrill] from n[Ixin] - this is lethal if it goes off.", type = "Call",   id = "gui-RM4CuYNX9LA" },
      { order = 4,  role = "ALL", text = "After I engage n[Ixin], rotate interrupts on s[Horrifying Shrill] and stop s[Resonant Barrage] if possible.", type = "Call", id = "gui-0eRlBONYg6Q" },
      { order = 5,  role = "ALL", text = "Mini-Boss-1: n[Ixin].", type = "Jump", target = "Ixin", id = "gui-bgmbkLrzQFo" },
      { order = 6,  role = "ALL", text = "Next, we head to the middle platform and pull into n[Nakt]. Be ready for poison + bleed overlaps.", type = "Call",  id = "gui-2oncmBttEs" },
      { order = 7,  role = "ALL", text = "On n[Nakt], use group CDs during s[Call of the Brood] + add spawns.", type = "Call",  id = "gui-oXF3deIeoXg" },
      { order = 8,  role = "ALL", text = "Mini-Boss-2: n[Nakt].", type = "Jump", target = "Nakt", id = "gui-TZ7Zo5rcIQ" },
      { order = 9,  role = "ALL", text = "We then rotate to the right-side platform for n[Atik]. Watch for s[Poisonous Cloud] and bad positioning.", type = "Call", id = "gui-ldBJFqnHcc" },
      { order = 10, role = "ALL", text = "Mini-Boss-3: n[Atik].", type = "Jump", target = "Atik", id = "gui-Xa1TkFSK9o" },
      { order = 11, role = "ALL", text = "Back for n[Avanoxx] jumps in. Hold defensives for s[Alerting Shrill] and control Starved Crawlers.", type = "Call", id = "gui-W30hBkmGG94" },
      { order = 12, role = "ALL", text = "Boss-1: n[Avanoxx]", type = "Jump", id = "gui-BtyNCf42HqU", target = "Avanoxx" },
      { order = 13, role = "ALL", text = "Cross bridge and prep interrupts on n[Bloodstained Webmage] (s[Revolting Volley]), n[Bloodstained Webmage] (s[Web Bolt]), n[Sentry Stagshell] (s[Alarm Shrill]).", type = "Call", id = "gui-Uxs4ZYNl1gI" },
      { order = 14, role = "ALL", text = "CC and Kill n[Sentry Stagshell] before it casts s[Alarm Shrill].", target = "Sentry Stagshell", type = "Target", id = "gui-ggs6NkOu3wI" },
      { order = 15, role = "ALL", text = "Kick n[Bloodstained Webmage] - stop s[Revolting Volley] first, then s[Web Bolt].", target = "Bloodstained Webmage", type = "Target", id = "gui-gFUIw6XxPU" },
      { order = 16, role = "ALL", text = "Kill n[Hulking Bloodguard] first to remove Bulwark; interrupt/CC s[Locust Swarm].", target = "Hulking Bloodguard", type = "Target", id = "gui-Cc7aQyVIX64" },
      { order = 17, role = "ALL", text = "Boss-2: n[Anub'zekt].", type = "Target", target = "Anub'zekt", id = "gui-OfL8bowOjgs" },
      { order = 18, role = "ALL", text = "Final trash wing includes n[Blood Overseer] (kick s[Venom Volley]) and n[Reinforced Drone] (dispel magic slow/heal reduction).", type = "Call", id = "gui-n4lOKLksBlk" },
      { order = 19, role = "ALL", text = "Tank tags n[Winged Carrier] first — they leap to the first target in range. Use grips/knockbacks if needed.", target = "Winged Carrier", type = "Target", id = "gui-7MeUHsyOImY" },
      { order = 20, role = "ALL", text = "Boss-3: n[Ki'katal the Harvester].", type = "Jump", target = "Ki'katal the Harvester", id = "gui-I7RyjB1ADgg" }
    }
  },

  ["Ixin"] = {
    id = "enc-ara-kara-tww-s3-ixin",
    order = 3,
    header = "Mini-Boss: Ixin",
    entries = {
      { order = 1, role = "ALL", text = "Need a kick for s[Horrifying Shrill] - never let this fear cast.", type = "Call", id = "gui-jjHurvBiAUc" },
      { order = 2, role = "ALL", text = "Stand behind or to the side and dodge swirlies during s[Web Spray] frontal.", type = "Mechanic", id = "gui-y3Shr9hlWdk" },
      { order = 3, role = "ALL", text = "If n[Trilling Attendant] is present, rotate kicks on s[Resonant Barrage]; use AoE CC if rotation breaks.", type = "Call", id = "gui-QZccghW6EgE" },
      { order = 4, role = "ALL", text = "Spare interrupts go to s[Web Bolt] from nearby casters - prevent random one-shots.", type = "Call", id = "gui-I3BPCz3kTjY" },
      { order = 5, role = "HEALER", text = "Dispel magic roots from web patches; spot-heal Barrage tick damage if a channel slips.", type = "Call", id = "gui-BG0LuVrxbyg" },
      { order = 6, role = "TANK", text = "Face Ixin away from the group; hold steady for melee and avoid dragging through eggs.", type = "Position", id = "gui-rkjPuV353c" },
      { order = 7, role = "DPS", text = "Stun/knock n[Trilling Attendant] during s[Resonant Barrage]; kick priority is Shrill > Barrage > Bolt.", type = "Call", id = "gui-oHl36K7nZ40" },
      { order = 8, role = "ALL", text = "Avoid standing in web patches - stacking root is disruptive during Shrill/Barrage timings.", type = "Mechanic", id = "gui-LWN7bfzQuTc" }
    }
  },

  ["Nakt"] = {
    id = "enc-ara-kara-tww-s3-nakt",
    order = 4,
    header = "Mini-Boss: Nakt",
    entries = {
      { order = 1, role = "ALL", text = "On s[Call of the Brood] use group CDs and swap to spawned n[Engorged Crawler] adds.", type = "Call", id = "gui-E90BVNNLvYw" },
      { order = 2, role = "ALL", text = "Kick priority: s[Resonant Barrage] (nearby n[Trilling Attendant]) > s[Web Bolt] (any casters).", type = "Call", id = "gui-SWgYeDc1ZQk" },
      { order = 3, role = "ALL", text = "Dodge s[Web Spray] frontal - stay off the cone and avoid baiting it through the group.", type = "Mechanic", id = "gui-Fua5xBagJek" },
      { order = 4, role = "ALL", text = "Poison stacks from n[Engorged Crawler] s[Venomous Spit] ramp fast - call for dispels/defensives at high stacks.", type = "Call", id = "gui-WeVXoRHNuPI" },
      { order = 5, role = "ALL", text = "If interrupts are thin, AoE CC during s[Resonant Barrage] channels to stabilise.", type = "Call", id = "gui-SjO121MPtJM" },
      { order = 6, role = "TANK", text = "On s[Call of the Brood], snap-threat the adds and drag Nakt a few steps so melee can cleave safely.", type = "Call", id = "gui-27Z2DRwJ3sc" },
      { order = 7, role = "TANK", text = "Keep Nakt faced away; reposition after each s[Web Spray] to keep cones off the group.", type = "Position", id = "gui-N86t88eaQ5M" },
      { order = 8, role = "HEALER", text = "Pre-ramp for s[Call of the Brood]; prioritise poison dispels on players with high stacks or low HP.", type = "Call", id = "gui-kIVJuiqSCw" },
      { order = 9, role = "DPS", text = "Swap to n[Engorged Crawler] immediately; stun/knock to control them, then resume boss cleave.", type = "Call", id = "gui-zwVImBF14A" }
    }
  },

  ["Atik"] = {
    id = "enc-ara-kara-tww-s3-atik",
    order = 5,
    header = "Mini-Boss: Atik",
    entries = {
      { order = 1, role = "ALL", text = "Drop s[Poisonous Cloud] away from escape paths and not in safe dodge spots for s[Web Spray].", type = "Call", id = "gui-iarmNWkcd0" },
      { order = 2, role = "ALL", text = "Stay out of s[Poisonous Cloud] zones - ticks are lethal if combined with bleed/poison effects.", type = "Mechanic", id = "gui-rWyRc2UgO4w" },
      { order = 3, role = "ALL", text = "Dodge s[Web Spray] frontal - space can be tight if clouds are in bad spots.", type = "Mechanic", id = "gui-ydgwjLCSwZM" },
      { order = 4, role = "ALL", text = "Interrupt s[Poison Bolt] where possible to limit poison DoT stacks on the group.", type = "Call", id = "gui-o4U22HI2dc" },
      { order = 5, role = "ALL", text = "Visibility near Atik's hitbox is poor - zoom out and pre-position before cloud spawns.", type = "Call", id = "gui-mOLTaMKJwCE" },
      { order = 6, role = "TANK", text = "Face Atik away from group; reposition after each s[Poison Bolt] or s[Web Spray] to maintain safe angles.", type = "Position", id = "gui-GAF1ylzyUo" },
      { order = 7, role = "TANK", text = "Drag boss if clouds block melee range to avoid DPS downtime.", type = "Call", id = "gui-bogQWnU0dC8" },
      { order = 8, role = "HEALER", text = "Dispel s[Poison Bolt] from low HP players or those targeted during AoE overlap.", type = "Call", id = "gui-H0iFnZgQ6H4" },
      { order = 9, role = "HEALER", text = "Watch for combo damage when clouds force movement during DoT ticks.", type = "Call", id = "gui-YPQnsWggKHw" },
      { order = 10, role = "DPS", text = "Help interrupt s[Poison Bolt] if healer is struggling with poison cleanses.", type = "Call", id = "gui-EQ7JpznfbUQ" }
    }
  },

  ["Avanoxx"] = {
    id = "enc-ara-kara-tww-s3-avanoxx",
    order = 6,
    header = "Boss: Avanoxx",
    entries = {
      { order = 1, role = "ALL", text = "Starved Crawlers fixate players - stop them reaching n[Avanoxx] or she gains s[Insatiable] stacks.", type = "Mechanic", id = "gui-XXtdGH4UGDc" },
      { order = 2, role = "ALL", text = "Stack just outside boss's red targeting circle between eggs and boss to cleave both safely.", type = "Call", id = "gui-PXR5dgz1aw" },
      { order = 3, role = "ALL", text = "Use group defensives for s[Alerting Shrill] - high AoE and triggers egg hatching.", type = "Call", id = "gui-7Pwqo1pbRWU" },
      { order = 4, role = "ALL", text = "Control Starved Crawlers with stuns, knockbacks, and slows; kite them wide if cleave isn't safe.", type = "Call", id = "gui-Ua9Cm4ROSds" },
      { order = 5, role = "ALL", text = "During s[Gossamer Onslaught], drop puddles together along edges to preserve movement space.", type = "Call", id = "gui-CpXfyMHAqXI" },
      { order = 6, role = "ALL", text = "Avoid standing in web puddles - slow stacks can be fatal during add waves.", type = "Mechanic", id = "gui-Z8YtWmRuL1k" },
      { order = 7, role = "TANK", text = "Mitigate s[Voracious Bite] (3-hit combo + 50% damage-taken debuff) and avoid other big hits during debuff.", type = "Mechanic", id = "gui-jBfqEiRj72Q" },
      { order = 8, role = "TANK", text = "Position boss so melee can cleave adds but keep her out of reach of fixated crawlers.", type = "Position", id = "gui-7BeOZhoG6U" },
      { order = 9, role = "TANK", text = "On overlaps of s[Voracious Bite] + s[Alerting Shrill], use a major defensive and call for externals.", type = "Call", id = "gui-8RL8fyReE8s" },
      { order = 10, role = "HEALER", text = "Pre-ramp for s[Alerting Shrill]; top group quickly if followed by s[Gossamer Onslaught] puddle drops.", type = "Call", id = "gui-ueLL21BYnPM" },
      { order = 11, role = "HEALER", text = "Watch fixate targets - they can take heavy melee damage if CC chains break.", type = "Call", id = "gui-QPhnrBkFVM" },
      { order = 12, role = "DPS", text = "Burn down Starved Crawlers fast; use AoE CC if multiple break through slows.", type = "Call", id = "gui-NPOAO6e1WI" },
      { order = 13, role = "DPS", text = "If boss is low, CC adds and focus kill to prevent last-second s[Insatiable] wipe.", type = "Call", id = "gui-8bPdN3HKmFY" }
    }
  },

  ["Anub'zekt"] = {
    id = "enc-ara-kara-tww-s3-anubzekt",
    order = 7,
    header = "Boss: Anub'zekt",
    entries = {
      { order = 1,  role = "ALL",   text = "s[Infestation] rotates through players - when it expires, drop the chasing swarm away from others.", type = "Call", id = "gui-DQeG6FwcsIw" },
      { order = 2,  role = "ALL",   text = "At 100 energy move into the safe zone for s[Eye of the Swarm] in front of the boss - outside is lethal.", type = "Call", id = "gui-VbaaD4x6Stk" },
      { order = 3,  role = "ALL",   text = "Keep left/right lanes clean: tank side right, group side left during Eye phase to avoid cross-fire.", type = "Call", id = "gui-vAHS71QHXI" },
      { order = 4,  role = "ALL",   text = "Kick or hard-CC n[Bloodstained Webmage] s[Silken Restraint] instantly - rooted targets die in swarm.", type = "Call", id = "gui-PeRhGFZCiY" },
      { order = 5,  role = "ALL",   text = "Assign one mobile ranged to bait s[Burrow Charge]; others avoid the path and destination.", type = "Call", id = "gui-YsxZgnOs33A" },
      { order = 6,  role = "TANK",  text = "Face boss away from group at all times - s[Impale] is a frontal cone.", type = "Position", id = "gui-6u4xSicf5KU" },
      { order = 7,  role = "TANK",  text = "Open with a defensive - initial melee + debuff hits hard on pull.", type = "Call", id = "gui-Qd5wpTrT66k" },
      { order = 8,  role = "TANK",  text = "During s[Eye of the Swarm], stand on the right of the safe circle and angle frontals away from group.", type = "Position", id = "gui-LptOBmoajR8" },
      { order = 9,  role = "HEALER", text = "Pre-heal players whose s[Infestation] is about to expire; expiring hit + DoT can spike.", type = "Call", id = "gui-LXnLAchiL3A" },
      { order = 10, role = "HEALER", text = "Ramp AoE for s[Eye of the Swarm]; watch bait target for s[Burrow Charge] follow-up damage.", type = "Call", id = "gui-wWdoKTplIY" },
      { order = 11, role = "DPS",   text = "Primary kick: s[Silken Restraint]; secondary: stray s[Web Bolt] casts.", type = "Call", id = "gui-rXZhypdUbqA" },
      { order = 12, role = "DPS",   text = "If assigned bait, stand at max range; blink/dash the impact to avoid the follow-up frontal.", type = "Call", id = "gui-QvT7MZGzktU" }
    }
  },

  ["Ki'katal the Harvester"] = {
    id = "enc-ara-kara-tww-s3-kikatal",
    order = 8,
    header = "Boss: Ki'katal the Harvester",
    entries = {
      -- ALL
      { order = 1,  role = "ALL",   text = "For s[Cosmic Singularity], stand in a fresh Black Blood puddle to root; free yourself after the pull.", type = "Call", id = "gui-BJJwa1nBDK4" },
      { order = 2,  role = "ALL",   text = "If no puddle, time a blink/dash/immunity ~0.8s before detonation to avoid the hit.", type = "Call", id = "gui-5cAECKbSakk" },
      { order = 3,  role = "ALL",   text = "s[Cultivated Poison] now targets 3 players - face away from allies so exit waves don't clip the group.", type = "Call", id = "gui-ujlATWU7Co4" },
      { order = 4,  role = "ALL",   text = "Do not break other players' roots with stray AoE (e.g., s[Divine Toll], s[Starfall]).", type = "Call", id = "gui-V3VxgdebTk" },
      { order = 5,  role = "ALL",   text = "Dodge s[Erupting Webs] swirlies; overlaps with poison waves and puddle placement late in the fight.", type = "Mechanic", id = "gui-wUuBj4MDbAI" },
      { order = 6,  role = "ALL",   text = "Track your puddle early - they despawn; each player should identify a backup spot.", type = "Call", id = "gui-gB6wpxEhMzI" },
      { order = 7,  role = "TANK",  text = "Pick up n[Bloodworker] quickly after each s[Cosmic Singularity] to reduce healer load.", type = "Call", id = "gui-YxmdcoMOQ" },
      { order = 8,  role = "TANK",  text = "Keep boss positioned to leave central lanes open for puddle usage and wave dodging.", type = "Position", id = "gui-e8jCRtynB0U" },
      { order = 9,  role = "HEALER", text = "Poison waves now DoT instead of one-shot; spot-heal clipped players and cleanse high stacks.", type = "Call", id = "gui-454s2S0Z4vw" },
      { order = 10, role = "HEALER", text = "Pre-top before s[Cosmic Singularity]; failing to root still hits hard and applies a damage taken debuff.", type = "Call", id = "gui-fOJZ2lZn3Ww" },
      { order = 11, role = "DPS",   text = "Light cleave n[Bloodworker] to spawn puddles; avoid over-cleaving and popping roots early.", type = "Call", id = "gui-PJotE9hKNFs" },
      { order = 12, role = "DPS",   text = "Spread during s[Cultivated Poison]; angle exit waves to the outer edges of the room.", type = "Call", id = "gui-DXZHowtOkYU" }
    }
  }
}
