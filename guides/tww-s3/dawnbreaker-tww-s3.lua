DungeonGuide_Guides["dung-dawnbreaker-tww-s3"] = {
  name = "Dawnbreaker",
  id = "dung-dawnbreaker-tww-s3",
  season = "TWW-S3",
  guideType = "M+",

  ["Intro"] = {
    id = "enc-dawnbreaker-tww-s3-intro",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "Linear dungeon with multiple flight transitions and staged city combat.", type = "Mechanic", id = "gui-6XaPrBd7" },
      { order = 2, role = "ALL", text = "Several minibosses act as lieutenants; each must be defeated to unlock final boss.", type = "Mechanic", id = "gui-rB5nKpxv" },
      { order = 3, role = "ALL", text = "Many effects are dispellable curses or magic debuffs — coordinate dispels.", type = "Mechanic", id = "gui-xiL3fZaY" },
      { order = 4, role = "ALL", text = "Some mechanics require player flight or environmental interactions (bombs/orbs).", type = "Mechanic", id = "gui-GfTn9yQW" },
      { order = 5, role = "ALL", text = "Expect healing-intensive phases, especially during boss transitions and city trash.", type = "Call", id = "gui-Yz0bNcMp" }
    }
  },

  ["Route"] = {
    id = "enc-dawnbreaker-tww-s3-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "Start with double pull at entrance. Hug centre path to avoid pulling ranged n[Shadow Mages].", type = "Call", id = "gui-pW4dZvBj" },
      { order = 2, role = "ALL", text = "We fly to the first ship — choose either. Interrupt s[Night Bolt] and watch for s[Bursting Cocoon].", type = "Call", id = "gui-Fe2RpKqL" },
      { order = 3, role = "ALL", text = "After bomb activation, fly to second ship and clear n[Commander] + n[Web Mage] carefully.", type = "Call", id = "gui-hTx7dL0e" },
      { order = 4, role = "ALL", text = "Return to Dawnbreaker for n[Speaker Shadowcrown]. Dodge beams, handle void zones.", type = "Jump", id = "gui-VhN89aML", target = "Speaker Shadowcrown" },
      { order = 5, role = "ALL", text = "Fly to the city. Clear lieutenants: church, house, bridge. Save Lust for bridge if needed.", type = "Call", id = "gui-sWdYqKjv" },
      { order = 6, role = "ALL", text = "Engage n[Anub'ikkaj] after all lieutenants are dead. Position for orbs, manage adds.", type = "Jump", id = "gui-Nr4bCz5X", target = "Anub'ikkaj" },
      { order = 7, role = "ALL", text = "Return to Dawnbreaker. Clear n[Dark Architect] before final boss.", type = "Call", id = "gui-kPe8LaJG" },
      { order = 8, role = "ALL", text = "Final boss: n[Rasha'nan]. Fly and bomb sequence into final phase on city platform.", type = "Jump", id = "gui-XeB2UMtf", target = "Rasha'nan" }
    }
  },

  ["Speaker Shadowcrown"] = {
    id = "enc-dawnbreaker-tww-s3-shadowcrown",
    order = 3,
    header = "Boss: Speaker Shadowcrown",
    entries = {
      { order = 1, role = "TANK", text = "s[Obsidian Beam] hits instantly — pop a defensive before the cast finishes.", type = "Mechanic", id = "gui-lRoqrHhfFzc" },
      { order = 2, role = "TANK", text = "Establish a clean interrupt rotation on s[Shadow Bolt] to minimise tank spikes.", type = "Interrupt", id = "gui-7gsiUJOc8a4" },
      { order = 3, role = "HEALER", text = "s[Burning Shadows] becomes a healing absorb when dispelled — prep healing first.", type = "Mechanic", id = "gui-YU8hGrOpvhA" },
      { order = 4, role = "HEALER", text = "Ramp healing during s[Obsidian Beam] into s[Collapsing Night] overlaps.", type = "Call", id = "gui-SYwfwDQgh0" },
      { order = 5, role = "HEALER", text = "Spot heal players with void zones under them — especially ranged baiting s[Collapsing Night].", type = "Call", id = "gui-6JcTJuruBU" },
      { order = 6, role = "ALL", text = "Two players get s[Collapsing Night] — drop void zones at edges, avoid centre.", type = "Mechanic", id = "gui-L2PPYKv13oY" },
      { order = 7, role = "ALL", text = "Void zones persist — don't overlap them with beam movement paths.", type = "Position", id = "gui-GfPwgIfFHw" },
      { order = 8, role = "ALL", text = "s[Obsidian Beam] spawns 3 rotating beams after impact — watch spin direction.", type = "Mechanic", id = "gui-O6XHHHu9g" },
      { order = 9, role = "ALL", text = "At 50%, boss casts s[Darkness Comes] — mount and fly away immediately.", type = "Mechanic", id = "gui-7IFwKWSnz6s" },
      { order = 10, role = "ALL", text = "Fly to side orbs, not front/back — orb hitboxes bug out and may fail to cleanse.", type = "Call", id = "gui-BlGnzcBmZA" },
      { order = 11, role = "ALL", text = "After first fly phase, same mechanics repeat — but beam count increases to 4.", type = "Mechanic", id = "gui-ZOaV9377fuk" },
      { order = 12, role = "DPS", text = "Avoid placing void zones near boss or mid — space needed to dodge beams.", type = "Call", id = "gui-0tw94F1wFxc" },
      { order = 13, role = "DPS", text = "Interrupt s[Shadow Bolt] if tank is mid-movement or stunned during flyback.", type = "Interrupt", id = "gui-6Ywh2sfs0E" },
      { order = 14, role = "DPS", text = "Help soak orbs midair if healer or tank fails to grab during s[Darkness Comes].", type = "Call", id = "gui-m6s8jNQL8Y" },
      { order = 15, role = "ALL", text = "Final cast of s[Darkness Comes] occurs at 1% — fly immediately or die.", type = "Call", id = "gui-5ta8jD4XIE4" }
    }
  },

  ["Deathscreamer Iken'tak"] = {
    id = "enc-dawnbreaker-tww-s3-ikentak",
    order = 4,
    header = "Mini-Boss: Deathscreamer Iken'tak",
    entries = {
      { order = 1, role = "TANK", text = "s[Terrifying Slam] fears and knocks back — fight near walls to avoid displacing the group.", type = "Mechanic", id = "gui-N3UnYuc2mlo" },
      { order = 2, role = "TANK", text = "Position boss to face away from group — frontal hits are lethal if combined with fear.", type = "Position", id = "gui-8LU0skyLYk" },
      { order = 3, role = "TANK", text = "Keep n[Deathscreamer Iken'tak] near edges so s[Dark Orb] travels farther before exploding.", type = "Position", id = "gui-cmvu0xf78E" },
      { order = 4, role = "HEALER", text = "Pre-top group before s[Dark Orb] detonation — damage drops with distance but still spikes.", type = "Call", id = "gui-dimZHJlP0Ro" },
      { order = 5, role = "HEALER", text = "Dispel s[Abyssal Blast] DoT ASAP — cannot be avoided and stacks with other hits.", type = "Mechanic", id = "gui-3zUs6bPfk8" },
      { order = 6, role = "HEALER", text = "Pop healing CDs if s[Dark Orb] and s[Shadowy Decay] overlap — extremely lethal combo.", type = "Call", id = "gui-DelusmXWz3g" },
      { order = 7, role = "ALL", text = "Avoid s[Dark Orb] line — orb explodes on terrain or player contact.", type = "Mechanic", id = "gui-DpIfD6welY" },
      { order = 8, role = "ALL", text = "Stack loosely to help healers while reducing risk of mass fear or orb overlap.", type = "Position", id = "gui-Z4iRkPp2k3s" },
      { order = 9, role = "DPS", text = "Use personal defensives during orb detonation if close — even at range it hits hard.", type = "Call", id = "gui-UYFKlo6Njzw" },
      { order = 10, role = "DPS", text = "Burn boss quickly before adds from nearby packs arrive — avoid drawn-out fight.", type = "Call", id = "gui-N5CXoQeKols" }
    }
  },

  ["Ixkreten the Unbreakable"] = {
    id = "enc-dawnbreaker-tww-s3-ixkreten",
    order = 5,
    header = "Mini-Boss: Ixkreten the Unbreakable",
    entries = {
      { order = 1, role = "TANK", text = "Expect heavy damage from s[Tactician's Rage] adds — use major CDs early.", type = "Call", id = "gui-AGKEsMCpP3w" },
      { order = 2, role = "TANK", text = "Face s[Black Edge] frontal away from group — reposition frequently.", type = "Position", id = "gui-29RMDLp3PJQ" },
      { order = 3, role = "TANK", text = "Line up boss with hallway/gate to send s[Dark Orb] safely out of arena.", type = "Position", id = "gui-X3SW7rv6iP8" },
      { order = 4, role = "HEALER", text = "Time CDs for overlap: s[Abyssal Blast], s[Shadowy Decay], and s[Dark Orb].", type = "Call", id = "gui-a3sQfMvxdKc" },
      { order = 5, role = "HEALER", text = "Dispel s[Abyssal Blast] ASAP or the DoT will tick during s[Decay] pulses.", type = "Mechanic", id = "gui-voZUUGUZt2k" },
      { order = 6, role = "HEALER", text = "Use spot heals on anyone struck by near-wall orb detonation.", type = "Call", id = "gui-OHDUU7Pc4l0" },
      { order = 7, role = "ALL", text = "Stack loosely and move as a unit — sudden orb or decay overlaps will punish tight stacks.", type = "Position", id = "gui-8iWFwNmJosI" },
      { order = 8, role = "DPS", text = "Interrupt add casts — n[Dark Casters] and n[Tacticians] remain lethal here.", type = "Interrupt", id = "gui-pBj8e7RBJGM" },
      { order = 9, role = "DPS", text = "Focus burst on boss — adds can be cleaved if they're not enraged.", type = "Call", id = "gui-avdbhyUKvec" },
      { order = 10, role = "DPS", text = "Pop defensives when healer calls during s[Decay] — survival is tight.", type = "Call", id = "gui-3VeaOvfYRc" }
    }
  },

  ["Ascendant Vis'coxria"] = {
    id = "enc-dawnbreaker-tww-s3-viscoxria",
    order = 6,
    header = "Mini-Boss: Ascendant Vis'coxria",
    entries = {
      { order = 1, role = "TANK", text = "Pull boss to edge to help avoid cleave overlap from nearby mobs.", type = "Position", id = "gui-as121NuxUoI" },
      { order = 2, role = "TANK", text = "Use defensives for s[Shadowy Decay] overlaps — spike damage is frequent.", type = "Call", id = "gui-6U0GiDSvlSk" },
      { order = 3, role = "HEALER", text = "s[Shadowy Decay] pulses AoE 3x — use raid CDs or ramp if other hits overlap.", type = "Call", id = "gui-rNRAu9ewNzs" },
      { order = 4, role = "HEALER", text = "Dispel s[Abyssal Blast] — safe if no Decay is active. Hold if damage is high.", type = "Mechanic", id = "gui-koGvbbHw7so" },
      { order = 5, role = "HEALER", text = "Spot heal Decay-timed ticks — multiple targets may drop if not topped.", type = "Call", id = "gui-5EAQEixhfUk" },
      { order = 6, role = "ALL", text = "Spread slightly to avoid splashing group-wide AoE — especially during Decay.", type = "Position", id = "gui-ECjs1hsoRg0" },
      { order = 7, role = "ALL", text = "Use personal defensives during s[Shadowy Decay] or s[Abyssal Blast] overlaps.", type = "Call", id = "gui-h1a4sF2AF3s" },
      { order = 8, role = "DPS", text = "Avoid pulling adjacent mobs — Vis'coxria is lethal during bad overlap timings.", type = "Mechanic", id = "gui-HOmdSX9FVE" },
      { order = 9, role = "DPS", text = "Save interrupts for nearby n[Dark Casters] — they often cast with boss active.", type = "Interrupt", id = "gui-fG25P4xgUrY" },
      { order = 10, role = "DPS", text = "Use burst to push through s[Decay] windows — this is when healing is tightest.", type = "Call", id = "gui-THROoNzlPbM" }
    }
  },

  ["Anub'ikkaj"] = {
    id = "enc-dawnbreaker-tww-s3-anubikkaj",
    order = 7,
    header = "Boss: Anub'ikkaj",
    entries = {
      { order = 1, role = "TANK", text = "Position boss near the edge to increase travel time for s[Dark Orb] explosions.", type = "Position", id = "gui-Icoc88pqvMU" },
      { order = 2, role = "TANK", text = "s[Terrifying Slam] fears and knocks back — use corner geometry or immunity.", type = "Mechanic", id = "gui-lysFClUOuI" },
      { order = 3, role = "TANK", text = "Pick up adds quickly after s[Animate Shadows] — they cast random shadow nukes.", type = "Call", id = "gui-Dg5mS1DJQA" },
      { order = 4, role = "HEALER", text = "Ramp for s[Shadowy Decay] — heavy group AoE over 3s.", type = "Call", id = "gui-GK5BK8tFTVE" },
      { order = 5, role = "HEALER", text = "Pre-top players before s[Dark Orb] impacts — it overlaps with s[Decay].", type = "Call", id = "gui-SwJ2ZG1zaGQ" },
      { order = 6, role = "HEALER", text = "Adds from s[Animate Shadows] may cast together — spot heal and triage hard targets.", type = "Mechanic", id = "gui-ZOZ67hDz0c" },
      { order = 7, role = "ALL", text = "s[Dark Orb] targets players — avoid letting orbs explode near the group.", type = "Mechanic", id = "gui-2iM59Xjszw" },
      { order = 8, role = "ALL", text = "Face boss away from party to prevent wide cleave risk from s[Terrifying Slam].", type = "Position", id = "gui-IFujDxt5hEc" },
      { order = 9, role = "ALL", text = "Use AoE CC on adds from s[Animate Shadows] — interrupts stop shadow nukes.", type = "Call", id = "gui-m0d01N5v9oc" },
      { order = 10, role = "ALL", text = "Stack loosely to allow healer coverage but avoid chain orb hits.", type = "Position", id = "gui-ot59rQkPbhQ" },
      { order = 11, role = "DPS", text = "Interrupt adds immediately — unhandled casts stack up fast.", type = "Interrupt", id = "gui-9zq210CQuA" },
      { order = 12, role = "DPS", text = "Use burst AoE on summoned adds — they scale with group size but die fast.", type = "Call", id = "gui-8aM7d3Spa5c" },
      { order = 13, role = "DPS", text = "Don't bait orbs toward healers — position smartly near edges.", type = "Mechanic", id = "gui-xtQ3aaz2CYM" },
      { order = 14, role = "DPS", text = "Hold CDs for after add phase to maximise uptime on boss.", type = "Call", id = "gui-KXKIxFg2i1M" },
      { order = 15, role = "DPS", text = "Pop defensives during overlaps: s[Decay], orbs, and adds.", type = "Call", id = "gui-hWjgpiaCUPY" }
    }
  },

  ["Nightfall Dark Architect"] = {
    id = "enc-dawnbreaker-tww-s3-architect",
    order = 8,
    header = "Mini-Boss: Nightfall Dark Architect",
    entries = {
      { order = 1, role = "ALL", text = "s[Tormenting Eruption] targets 2 players — spread immediately to avoid overlaps.", type = "Mechanic", id = "gui-oOKAW1UawAA" },
      { order = 2, role = "ALL", text = "Ticking and pulsing damage from s[Eruption] is not dispellable — use personals.", type = "Call", id = "gui-JhPK5s2fv8" },
      { order = 3, role = "ALL", text = "Summons 3x random Nightfall mobs at 75%, 50%, 25% — their damage is reduced.", type = "Mechanic", id = "gui-QWbw5dqps0Y" },
      { order = 4, role = "TANK", text = "Pick up adds quickly — they retain mechanics like frontals, curses, and bolts.", type = "Call", id = "gui-Q8pXjnblab0" },
      { order = 5, role = "TANK", text = "Face frontal mobs away and rotate taunts as needed for interrupt control.", type = "Position", id = "gui-lfK0WT0nsY" },
      { order = 6, role = "HEALER", text = "Be ready for intense healing if s[Eruption] overlaps with dangerous add combos.", type = "Call", id = "gui-XuESMSYmXVs" },
      { order = 7, role = "HEALER", text = "Don't waste dispels — most effects here are DoT-based or mechanic-driven.", type = "Mechanic", id = "gui-VHlVotdKz1A" },
      { order = 8, role = "DPS", text = "Cleave adds passively — focus boss to end phase quickly.", type = "Call", id = "gui-lsAmvFhoVpY" },
      { order = 9, role = "DPS", text = "Interrupt any s[Night Bolt] or similar casts from adds to avoid burst hits.", type = "Interrupt", id = "gui-R4jc2k6Wt8c" },
      { order = 10, role = "DPS", text = "Use movement cooldowns to reposition if s[Eruption] zones spawn near adds.", type = "Call", id = "gui-yimPCqDw3mc" }
    }
  },

  ["Rasha'nan"] = {
    id = "enc-dawnbreaker-tww-s3-rashanan",
    order = 9,
    header = "Boss: Rasha'nan",
    entries = {
      { order = 1, role = "ALL", text = "Phase 1 begins on Dawnbreaker deck — avoid s[Expel Web] frontal cone.", type = "Mechanic", id = "gui-x4huEf1YArE" },
      { order = 2, role = "ALL", text = "3x s[Arathi Bombs] drop — pick up and throw at boss within 30s or group takes DoT.", type = "Mechanic", id = "gui-vsh12nWFsg" },
      { order = 3, role = "ALL", text = "Phase ends at 60% — fly to final platform before RP ends to avoid wipe.", type = "Call", id = "gui-8PfP0vzp2UY" },
      { order = 4, role = "TANK", text = "Stay in melee range during bombs — let DPS handle throws.", type = "Position", id = "gui-T13b8DqN17M" },
      { order = 5, role = "TANK", text = "Face boss away — s[Expel Web] cleave can hit multiple players.", type = "Position", id = "gui-HlI3zUyRqw0" },
      { order = 6, role = "TANK", text = "Prep mitigation if s[Rolling Acid] overlaps with melee hit or bomb fail.", type = "Call", id = "gui-y6RtUUnbag" },
      { order = 7, role = "HEALER", text = "s[Erosive Spray] is ramping AoE — pre-hot and pop CDs early.", type = "Call", id = "gui-0NU13frlh7o" },
      { order = 8, role = "HEALER", text = "Phase 1 is healing-intensive — bombs + spray + void overlaps are lethal.", type = "Mechanic", id = "gui-Xrf8tn1Rj4" },
      { order = 9, role = "HEALER", text = "Phase 2 adds tethers — prep healing for players breaking s[Spinet Strands].", type = "Call", id = "gui-zNiZGvF1V4" },
      { order = 10, role = "ALL", text = "s[Rolling Acid] wave hits in direction of thicker side — visually check before moving.", type = "Mechanic", id = "gui-JKA04sXt7mw" },
      { order = 11, role = "ALL", text = "In Phase 2, s[Spinet Strands] tethers 2 players — run out to break it, avoid group.", type = "Mechanic", id = "gui-42CrU7EV8r4" },
      { order = 12, role = "ALL", text = "Broken s[Spinet Strands] causes group hit + leaves a permanent puddle.", type = "Mechanic", id = "gui-h4681ZnE3cE" },
      { order = 13, role = "ALL", text = "Puddles shrink if hit by s[Rolling Acid] — use this to manage arena space.", type = "Call", id = "gui-j5vDQLZHtgI" },
      { order = 14, role = "ALL", text = "Final phase ends at 0% — don't delay puddle breaks or bomb throws.", type = "Call", id = "gui-0PT6lQeXIx8" },
      { order = 15, role = "DPS", text = "DPS should grab and throw s[Arathi Bombs] — each deals ~6% boss HP.", type = "Call", id = "gui-9RZ1OwNNyHo" },
      { order = 16, role = "DPS", text = "Pop defensives if holding a bomb during s[Erosive Spray].", type = "Call", id = "gui-Z9fUMyujrE" },
      { order = 17, role = "DPS", text = "Place s[Spinet Strands] puddles near wall edges, away from combat path.", type = "Position", id = "gui-K1BJYruxmYc" },
      { order = 18, role = "DPS", text = "Don't throw bombs late — delayed throws can cause overlapping sprays.", type = "Mechanic", id = "gui-GjVnTIeZ1cU" },
      { order = 19, role = "DPS", text = "Use s[Rolling Acid] shrink tech to clear safe zones for second half.", type = "Call", id = "gui-Ah3FQDpLL8U" },
      { order = 20, role = "DPS", text = "Stay behind boss and clear puddle space — pre-position before waves.", type = "Position", id = "gui-aaYSHF2WYfk" }
    }
  }
}