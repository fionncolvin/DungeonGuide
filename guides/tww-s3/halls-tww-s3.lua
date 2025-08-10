DungeonGuide_Guides["dung-halls-of-atonement-tww-s3"] = {
  name = "Halls of Atonement",
  id = "dung-halls-of-atonement-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["Halls of Atonement"] = {
    id = "enc-halls-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "Kill 3x n[Shard of Halkias] to unlock first boss. Expect s[Thrash] party damage and s[Sinquake] swirlies - use personals.", type = "Mechanic", id = "gui-y7WwY9CVk8" },
      { order = 2, role = "HEALER", text = "Dispel s[Mark of Obliteration] (n[Depraved Obliterator]) before it expires - explosion is skipped if dispelled.", type = "Mechanic", id = "gui-V7Z5PPr6ow" },
      { order = 3, role = "TANK", text = "n[Depraved Darkblade] stacks s[Anima-Tainted Armor] (magic). Use CDs and call for dispel at high stacks.", type = "Mechanic", id = "gui-WD484L5DTG4" },
      { order = 4, role = "ALL", text = "Kick priorities: s[Siphon Life] (n[Depraved Collector]) > s[Wicked Bolt] (n[Depraved Obliterator]) and stop n[Houndmaster] s[Loyal Beast].", type = "Interrupt", id = "gui-uDRzyUbbFh4" },
      { order = 5, role = "TANK", text = "n[Vicious Gargon] applies bleed. Focus n[Houndmaster] first; nearby Gargons take less damage and can be enraged by s[Loyal Beast].", type = "Position", id = "gui-jdVlzP97hrU" },
      { order = 6, role = "ALL", text = "n[Stoneborn Slasher]: 30s active / 15s stone (safe skip). When active: s[Stonefist] knockback, frontal cleave, and s[Disrupting Screech] silence.", type = "Mechanic", id = "gui-Sw6tryZpExw" },
      { order = 7, role = "ALL", text = "n[Toiling Groundskeeper] flees at low HP - root/slow or finish quickly to avoid extra pulls.", type = "Call", id = "gui-4PYLpN3JhqI" },
      { order = 8, role = "ALL", text = "Expect heavy caster pressure and overlapping AoE in opener - plan CC chains and use LoS where possible.", type = "Call", id = "gui-rQODSaU3JQ" },
      { order = 9, role = "HEALER", text = "Ramp for s[Thrash] and Slasher s[Disrupting Screech] overlaps. Spot-heal bleed/fixate targets.", type = "Call", id = "gui-HQFNSwaDBo" },
      { order = 10, role = "ALL", text = "Upstairs after boss 1: n[Stoneborn Reaver] s[Mortal Strike] (healing reduction) and n[Stoneborn Eviscerator] s[Hurl Glaive] bounces - loosely spread.", type = "Mechanic", id = "gui-UF5fA36vOg" },
      { order = 11, role = "ALL", text = "Count is tighter than Shadowlands - expect more trash before Boss 2; plan skips around n[Stoneborn Slasher] stone phases.", type = "Call", id = "gui-cHxX2JjF7sM" }
    }
  },

  ["Route"] = {
    id = "enc-halls-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "Open with Lust on first n[Shard of Halkias] pull. Chain in nearby mobs for count. Watch s[Thrash] and s[Sinquake] overlap.", type = "Call", id = "gui-EDiMMBwIY" },
      { order = 2, role = "ALL", text = "Line-of-sight s[Thrash] on Shard pulls using pillars if overlaps get spicy.", type = "Call", id = "gui-duqbGqi8hk" },
      { order = 3, role = "ALL", text = "Control n[Toiling Groundskeeper] flee behaviour to avoid extra packs.", type = "Call", id = "gui-iIeUZbv0hA" },
      { order = 4, role = "ALL", text = "Kill other 2 Shards in clockwise path. Use LoS and AoE CC to manage casters.", type = "Call", id = "gui-p6Z4G8Q6dc0" },
      { order = 5, role = "ALL", text = "After the 3rd Shard there is ~30s before n[Halkias] spawns - pick a safe micro-pull for count.", type = "Call", id = "gui-xqcOuZM2uhU" },
      { order = 6, role = "ALL", text = "Boss 1: n[Halkias] - stay in red circle, control puddle placement, dodge beams.", type = "Jump", id = "gui-NH6LZisBn98", target = "Halkias" },
      { order = 7, role = "ALL", text = "Head right up stairs. Manage tight patrol spacing; beware n[Reaver] s[Mortal Strike] and n[Eviscerator] s[Hurl Glaive] bounces.", type = "Call", id = "gui-DzQxjPyJMc" },
      { order = 8, role = "ALL", text = "Skip n[Slasher] if stone phase active; otherwise control s[Stonefist] and s[Disrupting Screech].", type = "Call", id = "gui-kdCJ3d6xXu4" },
      { order = 9, role = "ALL", text = "Boss 2: n[Echelon] - bait s[Blood Torrent] to edge, control adds for leap shatter.", type = "Jump", id = "gui-n2fJ01rsrM", target = "Echelon" },
      { order = 10, role = "ALL", text = "After Echelon, clear right-side patrols before cathedral. Prioritise n[Houndmaster] and n[Reaver].", type = "Call", id = "gui-99cd6V1IKcM" },
      { order = 11, role = "ALL", text = "Boss 3: n[High Adjudicator Aleez] - interrupt s[Anima Bolt], manage fixate adds to lanterns.", type = "Jump", id = "gui-ut83GucJ5c", target = "High Adjudicator Aleez" },
      { order = 12, role = "ALL", text = "Final trash: n[Inquisitor Sigar] - interrupt s[Wicked Bolt], control adds, spread for s[Display of Power] expiry.", type = "Call", id = "gui-t9mg4UYBT2E" },
      { order = 13, role = "ALL", text = "Boss 4: n[Lord Chamberlain] - intercept statue beams, avoid statue toss collisions.", type = "Jump", id = "gui-4QlKicbjyto", target = "Lord Chamberlain" }
    }
  },

  ["Halkias"] = {
    id = "enc-halls-tww-s3-halkias",
    order = 3,
    header = "Boss: Halkias",
    entries = {
      { order = 1, role = "ALL", text = "Stay inside red circle around n[Halkias] or suffer 8s fear. Circle moves with boss.", type = "Call", id = "gui-xm4W0yNR5Y" },
      { order = 2, role = "ALL", text = "s[Heave Debris] (random) and s[Crumbling Slam] (tank) both cause party AoE and drop puddles - stack near edges to save space.", type = "Call", id = "gui-sCgOoCfidvM" },
      { order = 3, role = "TANK", text = "Use defensives for each s[Crumbling Slam] - heavy hit plus group damage.", type = "Mechanic", id = "gui-NKQ9Ol5KeMA" },
      { order = 4, role = "ALL", text = "At 100 energy, casts s[Refracted Sinlight] - 4 rotating beams that may reverse direction mid-cast. Avoid puddles while dodging.", type = "Mechanic", id = "gui-2FM2thJkLKk" },
      { order = 5, role = "TANK", text = "Reposition boss at ~90-95 energy to clear space for beam dodging.", type = "Position", id = "gui-jMLLEmsMXrA" },
      { order = 6, role = "HEALER", text = "Ramp healing for s[Crumbling Slam] + s[Heave Debris] + puddle overlap combos.", type = "Call", id = "gui-PzjVTQfzMZE" },
      { order = 7, role = "ALL", text = "Bait s[Heave Debris] near existing puddles to preserve safe ground.", type = "Mechanic", id = "gui-7IEw7yFqUvQ" },
      { order = 8, role = "ALL", text = "Avoid baiting puddles into beam path - coordinate movement calls.", type = "Call", id = "gui-TNyTfE2q1EI" },
      { order = 9, role = "TANK", text = "Stack puddles if safe using CDs, but avoid trapping yourself in corners.", type = "Mechanic", id = "gui-P2xImkVrBJ0" },
      { order = 10, role = "TANK", text = "Control boss facing to keep puddles out of group pathing.", type = "Position", id = "gui-GENT3nVtekw" },
      { order = 11, role = "TANK", text = "Avoid knockbacks or displacement effects just before beam phase prep.", type = "Mechanic", id = "gui-h6nmu3pTx3w" },
      { order = 12, role = "HEALER", text = "Consider externals for tanks during s[Crumbling Slam] with puddle overlap.", type = "Call", id = "gui-lmgHUKceQKQ" },
      { order = 13, role = "HEALER", text = "Spot heal players caught by beam reversals or bad puddle positions.", type = "Mechanic", id = "gui-05fUKBqeSTM" },
      { order = 14, role = "HEALER", text = "Dispel fear if players step outside red circle accidentally.", type = "Mechanic", id = "gui-4IE2KADFvmg" },
      { order = 15, role = "DPS", text = "Pre-position before beam phase to keep uptime.", type = "Position", id = "gui-bCWqBZapNRk" },
      { order = 16, role = "DPS", text = "Help bait puddles into tight clusters - avoid random spread.", type = "Call", id = "gui-HXRHjOU6BU" },
      { order = 17, role = "DPS", text = "Avoid arena edges to prevent triggering fear.", type = "Mechanic", id = "gui-y4gqr3w5T8" }
    }
  },

  ["Echelon"] = {
    id = "enc-halls-tww-s3-echelon",
    order = 4,
    header = "Boss: Echelon",
    entries = {
      { order = 1, role = "ALL", text = "Bait s[Blood Torrent] puddles to the edge of the room to conserve space.", type = "Call", id = "gui-OzZDxTf1BGw" },
      { order = 2, role = "ALL", text = "n[Stone Fiends] turn to stone at low HP. Don't kill until boss is ready to leap.", type = "Mechanic", id = "gui-bRHsUlYN48" },
      { order = 3, role = "ALL", text = "s[Flesh to Stone] targets a single player now - that player moves to grouped stone fiends for leap shatter.", type = "Call", id = "gui-Lb29puE66Hs" },
      { order = 4, role = "ALL", text = "Delay DPS briefly on add waves so tank can gather them cleanly.", type = "Call", id = "gui-uO3c8ulZUds" },
      { order = 5, role = "ALL", text = "Be ready for high group damage when s[Stone Shattering Leap] hits.", type = "Call", id = "gui-VGVm13SEuDI" },
      { order = 6, role = "ALL", text = "Avoid standing in s[Blood Torrent] puddles — they last 2.5 minutes.", type = "Mechanic", id = "gui-cITDmhzqkhY" },
      { order = 7, role = "TANK", text = "Gather n[Stone Fiends] under boss at low HP so leap destroys all.", type = "Mechanic", id = "gui-1N0m704Pn8" },
      { order = 8, role = "TANK", text = "Interrupt s[Villainous Bolt] casts from n[Stone Fiends] to prevent dangerous overlaps.", type = "Interrupt", id = "gui-Tr8IW6PMOvA" },
      { order = 9, role = "TANK", text = "Keep n[Echelon] near centre of room to allow flexible leap targets.", type = "Position", id = "gui-WfkLdBtpcs" },
      { order = 10, role = "TANK", text = "Call leap timing so DPS can prep AoE burst and healers can ramp.", type = "Call", id = "gui-u9qubksdeNY" },
      { order = 11, role = "TANK", text = "Be mindful of puddle placement when repositioning boss.", type = "Mechanic", id = "gui-0iw3iVCtMw" },
      { order = 12, role = "HEALER", text = "Use CDs when s[Stone Shattering Leap] hits - s[Nature DoT] can be lethal.", type = "Call", id = "gui-5AFWdFBxoJ8" },
      { order = 13, role = "HEALER", text = "Spot heal leap target and players near n[Stone Fiends] - AoE + DoT combo can be deadly.", type = "Mechanic", id = "gui-kvFKRdg6Ifc" },
      { order = 14, role = "HEALER", text = "Be ready to triage during add phase - multiple s[Villainous Bolt] casts may land.", type = "Mechanic", id = "gui-Bua5hEvhrTE" },
      { order = 15, role = "HEALER", text = "s[Blood Torrent] puddles can trap melee - keep them topped if repositioning.", type = "Call", id = "gui-BowVb0YBNNs" },
      { order = 16, role = "HEALER", text = "Group-wide burst is highest after leap + puddle overlap. Precast AoE heals.", type = "Call", id = "gui-qbPcz0nH05E" },
      { order = 17, role = "DPS", text = "Cleave n[Stone Fiends] evenly to bring them all low together.", type = "Mechanic", id = "gui-ZhbhWKgUs" },
      { order = 18, role = "DPS", text = "Hold CDs until all n[Stone Fiends] are stacked and stoned.", type = "Call", id = "gui-61fNfPKJEs" },
      { order = 19, role = "DPS", text = "Help interrupt s[Villainous Bolt] if tank is overwhelmed.", type = "Interrupt", id = "gui-rnOvo8oBbGs" },
      { order = 20, role = "DPS", text = "Avoid placing s[Blood Torrent] puddles in boss travel path or leap zones.", type = "Position", id = "gui-su0VpULd8bE" },
      { order = 21, role = "DPS", text = "Reposition near adds during s[Flesh to Stone] to help guide leap placement.", type = "Position", id = "gui-hy7oKVpAK7o" }
    }
  },

  ["High Adjudicator Aleez"] = {
    id = "enc-halls-tww-s3-aleez",
    order = 5,
    header = "Boss: High Adjudicator Aleez",
    entries = {
      { order = 1, role = "ALL", text = "s[Unstable Anima] applies a DoT to 2 players — spread 5y to avoid overlap and stagger dispels.", type = "Mechanic", id = "gui-mxvc4lWeM4U" },
      { order = 2, role = "ALL", text = "s[Ghostly Partitioner] fixates a random player. Kite into n[Anima Lanterns] to destroy it.", type = "Mechanic", id = "gui-kDWuP1uHfk" },
      { order = 3, role = "ALL", text = "Watch out for swirls from s[Anima Fountain] — avoid or risk death.", type = "Mechanic", id = "gui-jNsFXgy3nBs" },
      { order = 4, role = "ALL", text = "Each fixate causes s[Pulse from Beyond], which ramps in damage — move quickly.", type = "Call", id = "gui-nagha7oTns" },
      { order = 5, role = "ALL", text = "Save movement or gap closers to help bait the Partitioner toward lanterns.", type = "Call", id = "gui-zcPIkL1yvs" },
      { order = 6, role = "TANK", text = "Interrupt s[Anima Bolt] casts to reduce incoming spike damage. Prioritise over DPS.", type = "Interrupt", id = "gui-I87pexIZx9Q" },
      { order = 7, role = "TANK", text = "Keep boss away from lanterns to prevent accidental trigger zones.", type = "Position", id = "gui-dl613Yy9OBE" },
      { order = 8, role = "TANK", text = "Face boss away from the group when repositioning after fixate phases.", type = "Position", id = "gui-O1ZyiOXjsXA" },
      { order = 9, role = "TANK", text = "Use mitigation during spike overlap: s[Anima Bolt] + s[Pulse from Beyond].", type = "Mechanic", id = "gui-0bRVT2Lms" },
      { order = 10, role = "TANK", text = "Help guide fixate adds if kiting target is struggling to reach a lantern.", type = "Call", id = "gui-NYui9OwJ35E" },
      { order = 11, role = "HEALER", text = "Track s[Unstable Anima] — heal both targets and stagger dispels to avoid double hit.", type = "Call", id = "gui-s4l2RzAHzXo" },
      { order = 12, role = "HEALER", text = "s[Unstable Anima] often alternates between fixed pairs - pre-plan dispels each cycle.", type = "Call", id = "gui-WdU9mUSDGg" },
      { order = 13, role = "HEALER", text = "Use cooldowns during s[Pulse from Beyond] ramp — especially if multiple fixates overlap.", type = "Call", id = "gui-inP1TmUv380" },
      { order = 14, role = "HEALER", text = "Pre-HoT players if multiple s[Unstable Anima] debuffs are up.", type = "Mechanic", id = "gui-3fEPu4cNAKs" },
      { order = 15, role = "HEALER", text = "Spot heal players kiting n[Ghostly Partitioner] — especially if lantern is far.", type = "Call", id = "gui-Gzc0pr21HV0" },
      { order = 16, role = "HEALER", text = "Dispel only when safe — a poorly timed double dispel can wipe the party.", type = "Mechanic", id = "gui-xANsL2qmxlY" },
      { order = 17, role = "DPS", text = "Pop defensives if fixated by n[Ghostly Partitioner] and healers are pressured.", type = "Mechanic", id = "gui-EH0fr6bjvnA" },
      { order = 18, role = "DPS", text = "Plan movement ahead — don't kite the fixate in circles. Go for a clear lantern.", type = "Call", id = "gui-7xcpgruMR4" },
      { order = 19, role = "DPS", text = "Focus on not cleaving lanterns accidentally during AoE.", type = "Mechanic", id = "gui-UpIaft9u9ds" },
      { order = 20, role = "DPS", text = "Interrupt s[Anima Bolt] if the tank is crowd-controlled or fixated.", type = "Interrupt", id = "gui-9fEy75TCxM" },
      { order = 21, role = "DPS", text = "Use mobility cooldowns to help fixate bait quickly — saves healer pressure.", type = "Call", id = "gui-NMkaqP9qNlM" },
      { order = 22, role = "ALL", text = "Lanterns respawn slowly — always prioritise unused ones when kiting.", type = "Call", id = "gui-d6UpWpOvMwo" }
    }
  },

  ["Inquisitor Sigar"] = {
    id = "enc-halls-tww-s3-sigar",
    order = 6,
    header = "Mini-Boss: Inquisitor Sigar",
    entries = {
      { order = 1, role = "ALL", text = "During s[Display of Power], use the +30% buff for burst, then spread before expiry to avoid overlap explosions.", type = "Call", id = "gui-PAG09LU74U" },
      { order = 2, role = "ALL", text = "Interrupt s[Wicked Bolt]. If left unchecked, n[Inquisitor Sigar] will heal via s[Dark Communion].", type = "Interrupt", id = "gui-c1dDvrthVo" },
      { order = 3, role = "ALL", text = "s[Display of Power] grants +30% damage/healing but causes explosions after 15s.", type = "Mechanic", id = "gui-CxhLmTsokFY" },
      { order = 4, role = "ALL", text = "Spread before s[Display of Power] expires to avoid overlapping AoE detonations.", type = "Call", id = "gui-PBa0a17N3A" },
      { order = 5, role = "ALL", text = "Avoid standing in s[Disperse Sin] puddles left behind by empowered adds.", type = "Mechanic", id = "gui-LKA7HDr2dhs" },
      { order = 6, role = "ALL", text = "Watch for fixates from n[Manifestations of Envy] — they will chase randomly.", type = "Mechanic", id = "gui-GtqbHWy8ll8" },
      { order = 7, role = "TANK", text = "Tank n[Manifestations of Envy] near n[Sigar] so DPS can cleave efficiently.", type = "Position", id = "gui-f7DagMdHi2Q" },
      { order = 8, role = "TANK", text = "Use cooldowns when s[Dark Communion] starts if adds are still alive.", type = "Call", id = "gui-Lzwb70Wa1l4" },
      { order = 9, role = "TANK", text = "Avoid moving adds too far — boss will lose healing targets and gain full cast value.", type = "Mechanic", id = "gui-nKqjBMogqA" },
      { order = 10, role = "TANK", text = "Reposition slightly after each s[Disperse Sin] cast to reduce ground clutter.", type = "Position", id = "gui-yMVq0cVmAIM" },
      { order = 11, role = "TANK", text = "Communicate positioning before s[Display of Power] so melee don't overlap explosions.", type = "Call", id = "gui-bK9w57omOz4" },
      { order = 12, role = "HEALER", text = "Pre-top group during s[Dark Communion] to buffer s[Manifestation] fixate hits.", type = "Call", id = "gui-T0KOqKDbeE" },
      { order = 13, role = "HEALER", text = "Use AoE healing cooldowns before s[Display of Power] ends if players are low.", type = "Call", id = "gui-0eoERYbjeFc" },
      { order = 14, role = "HEALER", text = "Watch for s[Wicked Bolt] + fixate overlaps — spike damage can be fatal.", type = "Mechanic", id = "gui-K2mc8RH1oII" },
      { order = 15, role = "HEALER", text = "Stay spread but in range during s[Display of Power] — avoid multiple hits.", type = "Position", id = "gui-FFMEHhjqTdU" },
      { order = 16, role = "HEALER", text = "Dispel slow or root effects if fixate target is unable to kite safely.", type = "Mechanic", id = "gui-nnQWiaZi4" },
      { order = 17, role = "DPS", text = "Burn n[Tormented Souls] before s[Dark Communion] finishes to prevent boss heal.", type = "Call", id = "gui-gZjLhwW1d1w" },
      { order = 18, role = "DPS", text = "Cleave n[Manifestations of Envy] quickly — they fixate players and deal splash damage.", type = "Mechanic", id = "gui-NtprePsOl4" },
      { order = 19, role = "DPS", text = "Use AoE cooldowns when adds spawn to help push boss and adds together.", type = "Call", id = "gui-HH6jSjx2wg" },
      { order = 20, role = "DPS", text = "Avoid standing in s[Disperse Sin] puddles — they tick for heavy shadow damage.", type = "Mechanic", id = "gui-dVweYar0hg" },
      { order = 21, role = "DPS", text = "Spread during s[Display of Power] duration and be ready to pop a defensive if low.", type = "Call", id = "gui-XsvFBnDVQ0" }
    }
  },

  ["Lord Chamberlain"] = {
    id = "enc-halls-tww-s3-chamberlain",
    order = 7,
    header = "Boss: Lord Chamberlain",
    entries = {
      { order = 1, role = "ALL", text = "Avoid s[Telekinetic Toss] statue line (red arrow) — lethal hit + heavy group AoE. Damage doubles if statues collide.", type = "Mechanic", id = "gui-dqpbnmFseA" },
      { order = 2, role = "ALL", text = "s[Unleashed Suffering] is a frontal cone — stay behind boss unless tank.", type = "Mechanic", id = "gui-RaH9qFtrYSA" },
      { order = 3, role = "ALL", text = "At 70% and 40%, enters s[Chamberlain's Chorus] — avoid statue knockbacks and centre pull.", type = "Mechanic", id = "gui-joWrozZh98" },
      { order = 4, role = "ALL", text = "During s[Ritual of Woe], intercept statue beams — 2 players can soak all 4 with correct positioning.", type = "Mechanic", id = "gui-zWsLFQfB2I" },
      { order = 5, role = "ALL", text = "s[Erupting Torment] zones spawn from boss and statues — move immediately or risk death.", type = "Mechanic", id = "gui-Q9MPVCJIfpo" },
      { order = 6, role = "ALL", text = "Stand close to n[Lord Chamberlain] between statues during soak to safely intercept beams.", type = "Position", id = "gui-AiAxg2zDDcs" },
      { order = 7, role = "TANK", text = "s[Stigma of Pride] DoT stacks ramp quickly — mitigate final ticks or pair with healing externals.", type = "Mechanic", id = "gui-bJN36Vy0J3g" },
      { order = 8, role = "TANK", text = "Rotate boss so s[Unleashed Suffering] frontal stays away from group and beam soak path.", type = "Position", id = "gui-yQrgbe3j5wc" },
      { order = 9, role = "TANK", text = "Time defensives when statue toss overlaps with high s[Stigma of Pride] stacks.", type = "Call", id = "gui-WgMQlEwMTA" },
      { order = 10, role = "TANK", text = "During s[Chamberlain's Chorus], avoid centre pull and reposition boss quickly after phase ends.", type = "Mechanic", id = "gui-xClZqcU32uY" },
      { order = 11, role = "TANK", text = "Maintain threat while beams are being soaked — ranged DPS may over-aggro during movement.", type = "Call", id = "gui-mTVhWFfO4o" },
      { order = 12, role = "HEALER", text = "Use healing CDs during s[Ritual of Woe] — beam ticks ramp and hit soaking players hard.", type = "Call", id = "gui-PxaiBvQn6IU" },
      { order = 13, role = "HEALER", text = "Keep tank topped during s[Stigma of Pride] — final ticks hit 30% harder.", type = "Mechanic", id = "gui-2sC3w0tKRoU" },
      { order = 14, role = "HEALER", text = "Use externals when tank has 3+ s[Stigma] stacks and is dodging statues.", type = "Call", id = "gui-yQkRUCxLG9o" },
      { order = 15, role = "HEALER", text = "Pre-cast AoE heals before s[Erupting Torment] as party often spreads to dodge.", type = "Call", id = "gui-FEPiUnFlmY" },
      { order = 16, role = "HEALER", text = "Spot-heal beam soakers and be ready to top melee clipped by toss or torment zones.", type = "Mechanic", id = "gui-2RSHW2Gd5Qw" },
      { order = 17, role = "DPS", text = "Help soak beams during s[Ritual of Woe] — use defensives if soaking multiple.", type = "Mechanic", id = "gui-RNdyzpPCDjE" },
      { order = 18, role = "DPS", text = "Stay mobile and ready to dodge statue toss + erupt zones in quick succession.", type = "Call", id = "gui-rh7Xo4LGy34" },
      { order = 19, role = "DPS", text = "Pop defensive if soaking beam solo or overlapping with s[Erupting Torment].", type = "Call", id = "gui-RPfNaT6FKc0" },
      { order = 20, role = "DPS", text = "Help interrupt healer casts if group healer is mid-channel during beam soaks.", type = "Mechanic", id = "gui-C03YLGsAIOo" },
      { order = 21, role = "DPS", text = "Watch arrow markers under statues — move early to avoid panic repositioning.", type = "Call", id = "gui-fMaLWCFooyE" },
      { order = 22, role = "ALL", text = "Optimal soak: 1 tank + 1 defensive DPS each take 2 beams from centre, minimising total soakers.", type = "Call", id = "gui-n5SHwuF1HSg" }
    }
  }
}
