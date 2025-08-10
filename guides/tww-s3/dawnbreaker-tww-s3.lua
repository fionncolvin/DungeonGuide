DungeonGuide_Guides["dung-dawnbreaker-tww-s3"] = {
  name = "The Dawnbreaker",
  id = "dung-dawnbreaker-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["The Dawnbreaker"] = {
    id = "enc-dawnbreaker-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "Linear dungeon with multiple flight transitions and staged city combat.", type = "Mechanic", id = "gui-VUTcXz7uMFA" },
      { order = 2, role = "ALL", text = "Several minibosses act as lieutenants; each must be defeated to unlock final boss.", type = "Mechanic", id = "gui-17Hj4uYRWA" },
      { order = 3, role = "ALL", text = "Many effects are dispellable curses or magic debuffs — coordinate dispels.", type = "Mechanic", id = "gui-XXz5XDfOGUA" },
      { order = 4, role = "ALL", text = "Some mechanics require player flight or environmental interactions (bombs/orbs).", type = "Mechanic", id = "gui-WjmgbsV5HMM" },
      { order = 5, role = "ALL", text = "Expect healing-intensive phases, especially during boss transitions and city trash.", type = "Call", id = "gui-n4AlRbPFJBY" },
      { order = 6, role = "ALL", text = "Watch for dangerous overlaps — s[Dark Orb] with s[Shadowy Decay] or s[Abyssal Blast] can wipe groups.", type = "Call", id = "gui-9exsnjIE7EM" },
      { order = 7, role = "ALL", text = "Tank bleeds from n[Nightfall Commander] and healing reductions from n[Shadow Walkers] make pulls lethal if dragged out.", type = "Call", id = "gui-LrLbCU15W9w" },
      { order = 8, role = "ALL", text = "n[Cursed Blade] gains stacking enrage — soothe or burst before stacks climb.", type = "Call", id = "gui-7AeAuKww0ms" },
      { order = 9, role = "ALL", text = "Priority interrupts early: s[Night Bolt] > s[Web Bolt] > other casts.", type = "Call", id = "gui-5NPUncCZ1I" },
      { order = 10, role = "ALL", text = "On small-ship landings, slow descent to avoid falling through deck.", type = "Call", id = "gui-j1qyFAFYDVQ" }
    }
  },

  ["Route"] = {
    id = "enc-dawnbreaker-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "Start with double pull at entrance. Hug centre path to avoid pulling ranged n[Shadow Mages].", type = "Call", id = "gui-DYk75Jls43o" },
      { order = 2, role = "ALL", text = "Interrupt s[Night Bolt] and avoid overlaps with s[Tormenting Ray].", type = "Call", id = "gui-bzWh0SFBkNc" },
      { order = 3, role = "ALL", text = "We fly to the first ship — slow descent before landing to avoid falling through deck.", type = "Call", id = "gui-HkjMgqBslNo" },
      { order = 4, role = "ALL", text = "On ships, prioritise killing n[Nightfall Commander] and n[Web Mage] — high tank and group pressure.", type = "Call", id = "gui-sfNp1ZRWcQU" },
      { order = 5, role = "ALL", text = "After bomb activation, fly to second ship and clear carefully — use tank cooldowns early.", type = "Call", id = "gui-I9LKJIPNhSE" },
      { order = 6, role = "ALL", text = "Return to Dawnbreaker for n[Speaker Shadowcrown]. Dodge beams, handle void zones.", type = "Jump", id = "gui-4neaFR8Uvac", target = "Speaker Shadowcrown" },
      { order = 7, role = "ALL", text = "Fly to the city. Clear lieutenants: church, house, bridge. Save Lust for bridge if needed.", type = "Call", id = "gui-ZBU1lu4qvGo" },
      { order = 8, role = "ALL", text = "Avoid accidental aggro when landing near house lieutenant — let tank land and secure first.", type = "Call", id = "gui-blCAVomOjzA" },
      { order = 9, role = "ALL", text = "Bridge lieutenant: s[Dark Orb] can now target tanks — aim down bridge to avoid wall detonations.", type = "Call", id = "gui-B1OT7t0kpdI" },
      { order = 10, role = "ALL", text = "Avoid pulling multiple tank-buster mobs together unless defensives are ready.", type = "Call", id = "gui-kw8OvXdJWUU" },
      { order = 11, role = "ALL", text = "Engage n[Anub'ikkaj] after all lieutenants are dead. Position for orbs, manage adds.", type = "Jump", id = "gui-GPOvdYfTBo", target = "Anub'ikkaj" },
      { order = 12, role = "ALL", text = "Return to Dawnbreaker. Clear n[Dark Architect] before final boss.", type = "Call", id = "gui-jiOQWVMf0RE" },
      { order = 13, role = "ALL", text = "Final boss: n[Rasha'nan]. Fly and bomb sequence into final phase on city platform.", type = "Jump", id = "gui-kOYV1sSBUYM", target = "Rasha'nan" }
    }
  },

  ["Speaker Shadowcrown"] = {
    id = "enc-dawnbreaker-tww-s3-shadowcrown",
    order = 3,
    header = "Boss: Speaker Shadowcrown",
    entries = {
      { order = 1, role = "ALL", text = "Interrupt s[Shadow Bolt] and place s[Collapsing Night] at edges to preserve space.", type = "Call", id = "gui-TTFYTrLf2o" },
      { order = 2, role = "TANK", text = "s[Obsidian Beam] hits instantly — pop a defensive before the cast finishes.", type = "Mechanic", id = "gui-lLS9wUyPHI4" },
      { order = 3, role = "TANK", text = "Establish a clean interrupt rotation on s[Shadow Bolt] to minimise tank spikes.", type = "Interrupt", id = "gui-ehk1NEmzaI" },
      { order = 4, role = "HEALER", text = "s[Burning Shadows] becomes a healing absorb when dispelled — prep healing first.", type = "Mechanic", id = "gui-5LNDqMgnaU" },
      { order = 5, role = "HEALER", text = "Ramp healing during s[Obsidian Beam] into s[Collapsing Night] overlaps.", type = "Call", id = "gui-pCrztZeNXjA" },
      { order = 6, role = "HEALER", text = "Spot heal players with void zones under them — especially ranged baiting s[Collapsing Night].", type = "Call", id = "gui-Dq6xCMOalzU" },
      { order = 7, role = "ALL", text = "Two players get s[Collapsing Night] — with one ranged, the other target will be a random melee.", type = "Mechanic", id = "gui-PEkuVFr19Y8" },
      { order = 8, role = "ALL", text = "Void zones persist — don't overlap them with beam movement paths.", type = "Position", id = "gui-zmto57bHnaU" },
      { order = 9, role = "ALL", text = "s[Obsidian Beam] spawns 3 rotating beams after impact — watch spin direction.", type = "Mechanic", id = "gui-bijuTmzUEpk" },
      { order = 10, role = "ALL", text = "At 50%, boss casts s[Darkness Comes] — mount and fly away immediately.", type = "Mechanic", id = "gui-X4QqTA6Xts" },
      { order = 11, role = "ALL", text = "Fly to side orbs, not front/back — orb hitboxes bug out and may fail to cleanse.", type = "Call", id = "gui-X2tYkg3khT4" },
      { order = 12, role = "ALL", text = "After first fly phase, same mechanics repeat — but beam count increases to 4.", type = "Mechanic", id = "gui-1rlfvu6xDk" },
      { order = 13, role = "DPS", text = "Avoid placing void zones near boss or mid — space needed to dodge beams.", type = "Call", id = "gui-cn5BkVGLpE" },
      { order = 14, role = "DPS", text = "Interrupt s[Shadow Bolt] if tank is mid-movement or stunned during flyback.", type = "Interrupt", id = "gui-ndEEwuUFUnU" },
      { order = 15, role = "DPS", text = "Help soak orbs midair if healer or tank fails to grab during s[Darkness Comes].", type = "Call", id = "gui-suAEAGZAJh4" },
      { order = 16, role = "ALL", text = "Final cast of s[Darkness Comes] occurs at 1% — fly immediately or die.", type = "Call", id = "gui-uDkisNktKRk" }
    }
  },

  ["Deathscreamer Iken'tak"] = {
    id = "enc-dawnbreaker-tww-s3-ikentak",
    order = 4,
    header = "Mini-Boss: Deathscreamer Iken'tak",
    entries = {
      { order = 1, role = "ALL", text = "Aim s[Dark Orb] toward open space; use personals if orb overlaps s[Abyssal Blast].", type = "Call", id = "gui-6owaydz8lM" },
      { order = 2, role = "TANK", text = "s[Terrifying Slam] fears and knocks back — fight near walls to avoid displacing the group.", type = "Mechanic", id = "gui-E9xmBmaLu14" },
      { order = 3, role = "TANK", text = "Position boss to face away from group — frontal hits are lethal if combined with fear.", type = "Position", id = "gui-12FojJOcmpw" },
      { order = 4, role = "TANK", text = "Keep n[Deathscreamer Iken'tak] near edges so s[Dark Orb] travels farther before exploding.", type = "Position", id = "gui-dAQFYKDeCqA" },
      { order = 5, role = "HEALER", text = "Pre-top group before s[Dark Orb] detonation — damage drops with distance but still spikes.", type = "Call", id = "gui-eg3LTw0D3Lc" },
      { order = 6, role = "HEALER", text = "Dispel s[Abyssal Blast] DoT ASAP — cannot be avoided and stacks with other hits.", type = "Mechanic", id = "gui-WKLH65LQ35I" },
      { order = 7, role = "HEALER", text = "Pop healing CDs if s[Dark Orb] and s[Shadowy Decay] overlap — extremely lethal combo.", type = "Call", id = "gui-ZQV1VyKysvs" },
      { order = 8, role = "ALL", text = "Avoid s[Dark Orb] line — orb explodes on terrain or player contact.", type = "Mechanic", id = "gui-DhUAitnwE" },
      { order = 9, role = "ALL", text = "Stack loosely to help healers while reducing risk of mass fear or orb overlap.", type = "Position", id = "gui-iHJw3OowGKs" },
      { order = 10, role = "DPS", text = "Use personal defensives during orb detonation if close — even at range it hits hard.", type = "Call", id = "gui-JHLINaUXGP8" },
      { order = 11, role = "DPS", text = "Burn boss quickly before adds from nearby packs arrive — avoid drawn-out fight.", type = "Call", id = "gui-hWmBvGQg84" }
    }
  },

  ["Ixkreten the Unbreakable"] = {
    id = "enc-dawnbreaker-tww-s3-ixkreten",
    order = 5,
    header = "Mini-Boss: Ixkreten the Unbreakable",
    entries = {
      { order = 1, role = "ALL", text = "Soothe/purge s[Tactician's Rage] and avoid frontal s[Black Edge].", type = "Call", id = "gui-GMwrfML7YuQ" },
      { order = 2, role = "TANK", text = "Expect heavy damage from s[Tactician's Rage] adds — use major CDs early.", type = "Call", id = "gui-4keEH3FVDuA" },
      { order = 3, role = "TANK", text = "Face s[Black Edge] frontal away from group — reposition frequently.", type = "Position", id = "gui-CzFeAo45gaM" },
      { order = 4, role = "TANK", text = "Line up boss with hallway/gate to send s[Dark Orb] safely out of arena — can now target tanks in S3.", type = "Position", id = "gui-B2mq7cnVFz8" },
      { order = 5, role = "HEALER", text = "Time CDs for overlap: s[Abyssal Blast], s[Shadowy Decay], and s[Dark Orb].", type = "Call", id = "gui-2SOBXbBKteE" },
      { order = 6, role = "HEALER", text = "Dispel s[Abyssal Blast] ASAP or the DoT will tick during s[Decay] pulses.", type = "Mechanic", id = "gui-H5dGesGaYA" },
      { order = 7, role = "HEALER", text = "Use spot heals on anyone struck by near-wall orb detonation.", type = "Call", id = "gui-0RSmTfZjBQo" },
      { order = 8, role = "ALL", text = "Stack loosely and move as a unit — sudden orb or decay overlaps will punish tight stacks.", type = "Position", id = "gui-ZOBBV5sGc8A" },
      { order = 9, role = "DPS", text = "Interrupt add casts — n[Dark Casters] and n[Tacticians] remain lethal here.", type = "Interrupt", id = "gui-fZW9iPhIZyk" },
      { order = 10, role = "DPS", text = "Focus burst on boss — adds can be cleaved if they're not enraged.", type = "Call", id = "gui-vhaAzkJxymc" },
      { order = 11, role = "DPS", text = "Pop defensives when healer calls during s[Decay] — survival is tight.", type = "Call", id = "gui-1no6fmgBCRI" }
    }
  },

  ["Ascendant Vis'coxria"] = {
    id = "enc-dawnbreaker-tww-s3-viscoxria",
    order = 6,
    header = "Mini-Boss: Ascendant Vis'coxria",
    entries = {
      { order = 1, role = "ALL", text = "Save personals for s[Shadowy Decay] and spread to reduce splash damage.", type = "Call", id = "gui-jeQ2LrWkKPo" },
      { order = 2, role = "TANK", text = "Pull boss to edge to help avoid cleave overlap from nearby mobs.", type = "Position", id = "gui-CinWTg0X7jE" },
      { order = 3, role = "TANK", text = "Use defensives for s[Shadowy Decay] overlaps — spike damage is frequent.", type = "Call", id = "gui-aqjrzKeC98I" },
      { order = 4, role = "HEALER", text = "s[Shadowy Decay] pulses AoE 3x — use raid CDs or ramp if other hits overlap.", type = "Call", id = "gui-Yka009eYqAA" },
      { order = 5, role = "HEALER", text = "Dispel s[Abyssal Blast] — can no longer be line-of-sighted in S3. Hold if Decay damage is high.", type = "Mechanic", id = "gui-19eZ0OJU7J0" },
      { order = 6, role = "HEALER", text = "Spot heal Decay-timed ticks — multiple targets may drop if not topped.", type = "Call", id = "gui-pTZb97UX0i8" },
      { order = 7, role = "ALL", text = "Spread slightly to avoid splashing group-wide AoE — especially during Decay.", type = "Position", id = "gui-Fplp39SepiQ" },
      { order = 8, role = "ALL", text = "Use personal defensives during s[Shadowy Decay] or s[Abyssal Blast] overlaps.", type = "Call", id = "gui-ER7mx1c6YyA" },
      { order = 9, role = "DPS", text = "Avoid pulling adjacent mobs — Vis'coxria is lethal during bad overlap timings.", type = "Mechanic", id = "gui-iQBJ9OFcaw" },
      { order = 10, role = "DPS", text = "Save interrupts for nearby n[Dark Casters] — they often cast with boss active.", type = "Interrupt", id = "gui-ckeRMUbzNlA" },
      { order = 11, role = "DPS", text = "Use burst to push through s[Decay] windows — this is when healing is tightest.", type = "Call", id = "gui-c3z3P5hSfpM" }
    }
  },

  ["Anub'ikkaj"] = {
    id = "enc-dawnbreaker-tww-s3-anubikkaj",
    order = 7,
    header = "Boss: Anub'ikkaj",
    entries = {
      { order = 1, role = "ALL", text = "Interrupt and CC adds from s[Animate Shadows] — do not let casts through.", type = "Call", id = "gui-xxJfbErUrlg" },
      { order = 2, role = "TANK", text = "Position boss near the edge to increase travel time for s[Dark Orb] explosions.", type = "Position", id = "gui-Od5QD60YUVQ" },
      { order = 3, role = "TANK", text = "s[Terrifying Slam] fears and knocks back — use corner geometry, fences, or lampposts to negate.", type = "Mechanic", id = "gui-g8iYCGYpaAA" },
      { order = 4, role = "TANK", text = "Pick up adds quickly after s[Animate Shadows] — they cast random shadow nukes.", type = "Call", id = "gui-22whU4ZYXGQ" },
      { order = 5, role = "HEALER", text = "Ramp for s[Shadowy Decay] — heavy group AoE over 3s that ramps in damage.", type = "Call", id = "gui-mh6BSgOlc" },
      { order = 6, role = "HEALER", text = "Pre-top players before s[Dark Orb] impacts — it overlaps with s[Decay].", type = "Call", id = "gui-dVeJ1uKhC0" },
      { order = 7, role = "HEALER", text = "Adds from s[Animate Shadows] may cast together — spot heal and triage hard targets.", type = "Mechanic", id = "gui-oPk4IM90I0w" },
      { order = 8, role = "ALL", text = "s[Dark Orb] targets players — avoid letting orbs explode near the group.", type = "Mechanic", id = "gui-Mm2aGAkmqGo" },
      { order = 9, role = "ALL", text = "Face boss away from party to prevent wide cleave risk from s[Terrifying Slam].", type = "Position", id = "gui-y3ob95R1nLA" },
      { order = 10, role = "ALL", text = "Use AoE CC on adds from s[Animate Shadows] — interrupts stop shadow nukes.", type = "Call", id = "gui-tTgAUNGBRsc" },
      { order = 11, role = "ALL", text = "Stack loosely to allow healer coverage but avoid chain orb hits.", type = "Position", id = "gui-L94s5gOk5xg" },
      { order = 12, role = "DPS", text = "Interrupt adds immediately — unhandled casts stack up fast.", type = "Interrupt", id = "gui-6nuE8oK8cL8" },
      { order = 13, role = "DPS", text = "Use burst AoE on summoned adds — they scale with group size but die fast.", type = "Call", id = "gui-f6mldjafCeQ" },
      { order = 14, role = "DPS", text = "Don't bait orbs toward healers — position smartly near edges.", type = "Mechanic", id = "gui-WC3dva8BoLs" },
      { order = 15, role = "DPS", text = "Hold CDs for after add phase to maximise uptime on boss.", type = "Call", id = "gui-J7OrlUcSkLI" },
      { order = 16, role = "DPS", text = "Pop defensives during overlaps: s[Decay], orbs, and adds.", type = "Call", id = "gui-P7PDg5feVtg" }
    }
  },

  ["Nightfall Dark Architect"] = {
    id = "enc-dawnbreaker-tww-s3-architect",
    order = 8,
    header = "Mini-Boss: Nightfall Dark Architect",
    entries = {
      { order = 1, role = "ALL", text = "Spread instantly for s[Tormenting Eruption] to avoid splash damage.", type = "Call", id = "gui-4xMpiNTh6ZI" },
      { order = 2, role = "ALL", text = "s[Tormenting Eruption] targets 2 players — spread immediately to avoid overlaps.", type = "Mechanic", id = "gui-umhtGlqrUNo" },
      { order = 3, role = "ALL", text = "Ticking and pulsing damage from s[Eruption] is not dispellable — use personals.", type = "Call", id = "gui-zMBt5cZMfmY" },
      { order = 4, role = "ALL", text = "Summons 3x random Nightfall mobs at 75%, 50%, 25% — their damage is reduced but mechanics remain.", type = "Mechanic", id = "gui-nyQlC9w3JRU" },
      { order = 5, role = "TANK", text = "Pick up adds quickly — they retain mechanics like frontals, curses, and bolts.", type = "Call", id = "gui-dK3kLfxmpmc" },
      { order = 6, role = "TANK", text = "Face frontal mobs away and rotate taunts as needed for interrupt control.", type = "Position", id = "gui-oUok0NMlgk" },
      { order = 7, role = "HEALER", text = "Be ready for intense healing if s[Eruption] overlaps with dangerous add combos.", type = "Call", id = "gui-NblSstgRHYo" },
      { order = 8, role = "HEALER", text = "Don't waste dispels — most effects here are DoT-based or mechanic-driven.", type = "Mechanic", id = "gui-PzHbJQeMes0" },
      { order = 9, role = "DPS", text = "Cleave adds passively — focus boss to end phase quickly.", type = "Call", id = "gui-HuQ4zB0DjFg" },
      { order = 10, role = "DPS", text = "Interrupt any s[Night Bolt] or similar casts from adds to avoid burst hits.", type = "Interrupt", id = "gui-aYov5IolVSA" },
      { order = 11, role = "DPS", text = "Use movement cooldowns to reposition if s[Eruption] zones spawn near adds.", type = "Call", id = "gui-O3od6gR9hGk" }
    }
  },

  ["Rasha'nan"] = {
    id = "enc-dawnbreaker-tww-s3-rashanan",
    order = 9,
    header = "Boss: Rasha'nan",
    entries = {
      { order = 1, role = "ALL", text = "Handle s[Arathi Bombs] fast — missed throws cause lethal group DoT.", type = "Call", id = "gui-loCaJuoN3Ck" },
      { order = 2, role = "ALL", text = "Break s[Spinet Strands] away from group and place puddles at edges.", type = "Call", id = "gui-nSP8WhuMPz0" },
      { order = 3, role = "ALL", text = "Phase 1 begins on Dawnbreaker deck — avoid s[Expel Web] frontal cone.", type = "Mechanic", id = "gui-C74Q03j2DvI" },
      { order = 4, role = "ALL", text = "3x s[Arathi Bombs] drop — pick up and throw at boss within 30s or group takes DoT.", type = "Mechanic", id = "gui-qWIBT6cXBnM" },
      { order = 5, role = "ALL", text = "Phase ends at 60% — fly to final platform before RP ends to avoid wipe.", type = "Call", id = "gui-rxyasBM0T6I" },
      { order = 6, role = "TANK", text = "Stay in melee range during bombs — let DPS handle throws.", type = "Position", id = "gui-oFT6PgY5yT8" },
      { order = 7, role = "TANK", text = "Face boss away — s[Expel Web] cleave can hit multiple players.", type = "Position", id = "gui-Q0RpNsDxQDs" },
      { order = 8, role = "TANK", text = "Prep mitigation if s[Rolling Acid] overlaps with melee hit or bomb fail.", type = "Call", id = "gui-JUULJE7LUsU" },
      { order = 9, role = "HEALER", text = "s[Erosive Spray] is ramping AoE — pre-hot and pop CDs early.", type = "Call", id = "gui-FedtHTy0jI" },
      { order = 10, role = "HEALER", text = "Phase 1 is healing-intensive — bombs + spray + void overlaps are lethal.", type = "Mechanic", id = "gui-oGTuVZPnwKE" },
      { order = 11, role = "HEALER", text = "Phase 2 adds tethers — prep healing for players breaking s[Spinet Strands].", type = "Mechanic", id = "gui-3uZxEWshGCk" },
      { order = 12, role = "ALL", text = "s[Rolling Acid] wave hits in direction of thicker side — visually check before moving.", type = "Mechanic", id = "gui-Ve4ImSaAanQ" },
      { order = 13, role = "ALL", text = "In Phase 2, s[Spinet Strands] tethers 2 players — run out to break it, avoid group.", type = "Mechanic", id = "gui-1Xle1RSHpRc" },
      { order = 14, role = "ALL", text = "Broken s[Spinet Strands] causes group hit + leaves a permanent puddle — puddles shrink if hit by s[Rolling Acid].", type = "Mechanic", id = "gui-KMUf28aBYs8" },
      { order = 15, role = "ALL", text = "Interrupt s[Acidic Eruption] in Phase 2 — failure causes immunity + ramping Nature DoT.", type = "Call", id = "gui-3Q2kbGff7cA" },
      { order = 16, role = "ALL", text = "Puddles shrink if hit by s[Rolling Acid] — use this to manage arena space.", type = "Call", id = "gui-CQc45H3UIa0" },
      { order = 17, role = "DPS", text = "DPS should grab and throw s[Arathi Bombs] — each deals ~6% boss HP.", type = "Call", id = "gui-fcRRuzXS97g" },
      { order = 18, role = "DPS", text = "Pop defensives if holding a bomb during s[Erosive Spray].", type = "Call", id = "gui-fpdgp2VZW5g" },
      { order = 19, role = "DPS", text = "Place s[Spinet Strands] puddles near wall edges, away from combat path.", type = "Position", id = "gui-8AcuuzHE2JU" },
      { order = 20, role = "DPS", text = "Don't throw bombs late — delayed throws can cause overlapping sprays.", type = "Mechanic", id = "gui-aZGMRdzBXHg" },
      { order = 21, role = "DPS", text = "Use s[Rolling Acid] shrink tech to clear safe zones for second half.", type = "Call", id = "gui-OHclgnSN3s8" },
      { order = 22, role = "DPS", text = "Stay behind boss and clear puddle space — pre-position before waves.", type = "Position", id = "gui-U8g9JdF0rg" }
    }
  }
}
