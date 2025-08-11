DungeonGuide_Guides["dung-priory-tww-s3"] = {
  name = "Priory of the Sacred Flame",
  id = "dung-priory-tww-s3",
  season = "TWW-S3",
  guideType = "M+",
  
  ["Priory of the Sacred Flame"] = {
    id = "enc-priory-guide",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "RIGHT path is stronger in S3: n[Arathi Footman], n[Fervent Sharpshooter], and n[Arathi Knight] give more count and are nerfed.", type = "Mechanic", id = "gui-8aM7xZ3cQs" },
      { order = 2, role = "ALL", text = "n[Arathi Knight] s[Impale] now telegraphed and shorter; s[Disrupting Shout] damage reduced, but overlap still hurts.", type = "Mechanic", id = "gui-E9nS2bKt7L" },
      { order = 3, role = "ALL", text = "Kill 2 of 3 mini-bosses (n[Guard Captain Sullean], n[Forge Master Damian], n[Elaena Emberlanz]) to remove them from n[Captain Dailcry].", type = "Mechanic", id = "gui-R4jQ1mLp5y" },
      { order = 4, role = "ALL", text = "n[Fervent Sharpshooter] s[Disengage] leaps toward a player. Ranged stack in melee to bait and keep packs together.", type = "Mechanic", id = "gui-V7dT9qFm6K" },
      { order = 5, role = "ALL", text = "Class buff: Paladin/Priest can activate Orb of the Sacred Flame for 30m holy proc. Reactivate after death.", type = "Mechanic", id = "gui-M1gF8rKa2u" },
      { order = 6, role = "TANK", text = "n[Guard Captain Sullean] knockback is negated by walls/stairs; s[Thunderclap] slow can be removed with Blessing of Freedom.", type = "Mechanic", id = "gui-Y5jL2wPc9a" },
      { order = 7, role = "ALL", text = "Priority interrupts: s[Greater Heal], s[Fireball Volley], s[Battle Cry], s[Burning Light], s[Cinderblast].", type = "Interrupt", id = "gui-J0cH6mNf4Q" },
      { order = 8, role = "HEALER", text = "Expect spikes from s[Heatwave], s[Holy Radiance], s[Inner Fire] overlaps - plan CDs for these windows.", type = "Call", id = "gui-B9kD7xVh0E" },
      { order = 9, role = "ALL", text = "n[Trusted Guard], lieutenants, and n[Lightspawn] are CC-immune - pre-assign kicks and defensives.", type = "Mechanic", id = "gui-Q8mT5vXk1r" },
      { order = 10, role = "ALL", text = "n[Risen Footman] and n[Risen Mage] s[Light Expulsion] on death heals allies - stagger kills or stun before death.", type = "Mechanic", id = "gui-Z2pK4yFr7o" },
      { order = 11, role = "ALL", text = "Space is limited: many effects leave lasting ground. Move together to place safely and preserve open areas.", type = "Mechanic", id = "gui-H6fM1aJq8t" },
      { order = 12, role = "ALL", text = "Route", type = "Jump", target = "Route", id = "gui-U7wV3pNe5b" }
    }
  },

  ["Route"] = {
    id = "enc-priory-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are starting RIGHT side - n[Arathi Footman] + n[Fervent Sharpshooter] packs give high count with lower danger.", type = "Call", id = "gui-W3vH0xNe9s" },
      { order = 2, role = "ALL", text = "CC and kill n[Arathi Footman] fast to stop s[Defend] damage reduction.", type = "Target", target = "Arathi Footman", id = "gui-gTr9Pw8f2Lk" },
      { order = 3, role = "ALL", text = "Pull opener into n[Guard Captain Sullean]. I'll tank him near stairs/wall to negate knockback.", type = "Call", id = "gui-T7fQ9pXl2b" },
      { order = 4, role = "ALL", text = "After Sullean, engage n[Sergeant Shaynemail] - spread for s[Lunging Strike] bleed or stand on brazier to avoid target.", type = "Call", id = "gui-Y1kM5zVo8p" },
      { order = 5, role = "ALL", text = "Chain into n[Fervent Sharpshooter] + n[Arathi Footman] patrol. Ranged stack in melee to bait s[Disengage].", type = "Call", id = "gui-H6gR8vQn4m" },
      { order = 6, role = "ALL", text = "Next up: n[Forge Master Damian]. Dodge puddles, use AMS/Bubble/Spellwarding to prevent spawns.", type = "Call", id = "gui-J4xT0mFc6n" },
      { order = 7, role = "ALL", text = "Move to fountain area, clear patrol into n[Elaena Emberlanz]. Interrupt s[Holy Radiance], dispel tank after s[Divine Judgment].", type = "Call", id = "gui-P9cS7bLq3y" },
      { order = 8, role = "ALL", text = "Boss: n[Captain Dailcry] with 1 lieutenant. Stack, cleave, manage puddle placement.", type = "Jump", target = "Captain Dailcry", id = "gui-C3VZxxgbDeE" },
      { order = 9, role = "ALL", text = "After boss, clear to cathedral. Skip LEFT side if we have count. Watch n[Ardent Paladin] s[Sacred Toll] and n[Zealous Templar] buffs.", type = "Call", id = "gui-K5jP2wNa0u" },
      { order = 10, role = "ALL", text = "Kill n[Ardent Paladin] fast to reduce s[Sacred Toll] group hits.", type = "Target", target = "Ardent Paladin", id = "gui-F9kSmcT82Yp" },
      { order = 11, role = "ALL", text = "Interrupt n[Devout Priest] s[Greater Heal] and n[Risen Mage] s[Fireball Volley]. Stun n[Lightspawn] at low HP to avoid Purification heal.", type = "Call", id = "gui-N1tD8qLs7o" },
      { order = 12, role = "ALL", text = "Focus n[Devout Priest] to prevent s[Greater Heal] and n[Risen Mage] to stop s[Fireball Volley].", type = "Target", target = "Devout Priest", id = "gui-C5zJrt9x1mL" },
      { order = 13, role = "ALL", text = "Next: n[Baron Braunpyke]. Hug left wall to bait hammers into one zone.", type = "Jump", target = "Baron Braunpyke", id = "gui-LI42kGHZ5Gk" },
      { order = 14, role = "ALL", text = "Stairwell pack after Baron - LOS pull around corner. Handle n[Lightspawn] separately to avoid heals.", type = "Call", id = "gui-U8dR6pMf1x" },
      { order = 15, role = "ALL", text = "Final mini-boss: n[Baron Braunpyke]. Use Bloodlust here if not saving for last boss.", type = "Call", id = "gui-Q7mY4vPt2n" },
      { order = 16, role = "ALL", text = "Last boss: n[Prioress Murrpray]. Prep cooldowns for 50% add phase and s[Embrace the Light] shield burn.", type = "Jump", target = "Prioress Murrpray", id = "gui-1184QRwvWPw" }
    }
  },
  
  ["Captain Dailcry"] = {
    id = "enc-priory-captain-dailcry",
    order = 3,
    header = "Boss: Captain Dailcry",
    entries = {
      { order = 1, role = "ALL", text = "Assign a kick on s[Battle Cry] every time to stop the lieutenant buff.", type = "Call", id = "gui-A1wZp7dQm4" },
      { order = 2, role = "ALL", text = "Stack and rotate as a group to place s[Earthshattering Spear] puddles together.", type = "Call", id = "gui-D7qK2vHFy9" },
      { order = 3, role = "ALL", text = "On s[Savage Mauling], burn the shield fast. Combat drops also break the channel.", type = "Call", id = "gui-P2eR4kNsfJ" },
      { order = 4, role = "ALL", text = "Full cleave: damage to boss or lieutenant both reduce boss HP.", type = "Mechanic", id = "gui-K5mJ8rVtXe" },
      { order = 5, role = "TANK", text = "Hold boss at an edge and drift clockwise as puddles drop to save center space.", type = "Position", id = "gui-R0tB1cZqLu" },
      { order = 6, role = "TANK", text = "Plan CDs for s[Pierce Armor] (shorter in S3) and after group movement.", type = "Mechanic", id = "gui-U8yNc3FvQ1" },
      { order = 7, role = "TANK", text = "If n[Taener Duelmal] is present: kick s[Cinderblast]; step out of s[Emberstorm] swirlies.", type = "Mechanic", id = "gui-M4sXn9GeH2" },
      { order = 8, role = "TANK", text = "If n[Elaena Emberlanz] is present: call dispel on s[Divine Judgment]; be ready during s[Holy Radiance].", type = "Mechanic", id = "gui-W6pTd2JkB3" },
      { order = 9, role = "HEALER", text = "CDs for s[Spear] raid hit and during s[Mauling] shield burn windows.", type = "Call", id = "gui-Q3vLm5SaC7" },
      { order = 10, role = "HEALER", text = "Dispel s[Divine Judgment] quickly if n[Elaena] is active; ramp for s[Holy Radiance].", type = "Mechanic", id = "gui-Z1hRf6PwE8" },
      { order = 11, role = "HEALER", text = "Spot heal puddle clips; watch tank immediately after s[Pierce Armor].", type = "Mechanic", id = "gui-B9nYk4MdT0" },
      { order = 12, role = "DPS", text = "Hold burst for s[Savage Mauling] to break the shield instantly.", type = "Call", id = "gui-J2cXa7NeV5" },
      { order = 13, role = "DPS", text = "Maintain kicks: s[Battle Cry] (boss) and s[Cinderblast] (if n[Taener] active).", type = "Interrupt", id = "gui-H7gPw3RtL6" },
      { order = 14, role = "DPS", text = "Stay stacked for controlled puddles; step out for danger then restack.", type = "Position", id = "gui-L0mCv8UzR4" }
    }
  },
  
  ["Baron Braunpyke"] = {
    id = "enc-priory-baron-braunpyke",
    order = 4,
    header = "Boss: Baron Braunpyke",
    entries = {
      { order = 1, role = "ALL", text = "Stack to bait s[Hammer of Purity] in one zone, then move across the room together.", type = "Call", id = "gui-X5rMv3LcA8" },
      { order = 2, role = "ALL", text = "s[Sacrificial Pyre] needs 3 soaks (5 in s[Vindictive Wrath]) - assign soak order pre-pull.", type = "Call", id = "gui-M9gTc7FwQ2" },
      { order = 3, role = "ALL", text = "Place s[Castigator's Shield] away from Pyre, then return to soak safely.", type = "Call", id = "gui-B4hKx1VjR6" },
      { order = 4, role = "ALL", text = "Keep a kick for s[Burning Light] during/after Pyre to stop heal + lethal AoE.", type = "Call", id = "gui-P7vNc5YeL3" },
      { order = 5, role = "TANK", text = "Start boss on one edge; reposition opposite side after hammer bait.", type = "Position", id = "gui-Q8cHr2KnT1" },
      { order = 6, role = "TANK", text = "If needed, soak Pyre twice in a row, wait DoT, then take 3rd with a CD.", type = "Mechanic", id = "gui-Z3mTy7JsF9" },
      { order = 7, role = "TANK", text = "Call 'hammers baited' -> 'shields out' -> 'return and soak' to coordinate group.", type = "Call", id = "gui-R2pLw6XmD0" },
      { order = 8, role = "HEALER", text = "Ramp for Pyre soaks + s[Castigator's Shield] overlaps; spot-heal DoT soakers.", type = "Call", id = "gui-V6gDf9QnK5" },
      { order = 9, role = "HEALER", text = "During s[Vindictive Wrath], expect 5 shields + 5 soaks - plan externals/immunities.", type = "Mechanic", id = "gui-L1fMh8SeA7" },
      { order = 10, role = "DPS", text = "Help bait hammers by stacking; move together after they spawn.", type = "Position", id = "gui-K0mWn4JqB2" },
      { order = 11, role = "DPS", text = "Rotate Pyre soaks; use personals or immunities if taking more than one.", type = "Mechanic", id = "gui-H5xNy3LfV8" },
      { order = 12, role = "DPS", text = "Keep interrupts ready for s[Burning Light]; never damage into reflect shield.", type = "Interrupt", id = "gui-J4dVc2PpE6" }
    }
  },
  
  ["Prioress Murrpray"] = {
    id = "enc-priory-prioress-murrpray",
    order = 5,
    header = "Boss: Prioress Murrpray",
    entries = {
      { order = 1, role = "ALL", text = "Turn away for s[Blinding Light] or LoS with stairs to avoid disorient.", type = "Call", id = "gui-R8pLk1XsA5" },
      { order = 2, role = "ALL", text = "Interrupt s[Holy Smite] on tank. Leaving it un-kicked avoids s[Inner Fire] + s[Blinding Light] overlap in P1.", type = "Call", id = "gui-M7vNd4QcE3" },
      { order = 3, role = "ALL", text = "Dodge s[Holy Flame] puddles and kite s[Purify] beam to safe areas.", type = "Call", id = "gui-H6fBc9LmV2" },
      { order = 4, role = "ALL", text = "At 50%, follow boss up, burn s[Embrace the Light] shield quickly to stop AoE pulses.", type = "Call", id = "gui-K5mZw2TnF9" },
      { order = 5, role = "ALL", text = "Stack to one side during add phase for grouped AoE CC.", type = "Position", id = "gui-B2jCs8VpL0" },
      { order = 6, role = "TANK", text = "Tank boss near edge; kite s[Purify] beam backwards to preserve space.", type = "Position", id = "gui-Q1hMf7JdT4" },
      { order = 7, role = "TANK", text = "Pick up fixated adds when they reach platform. They melee and pulse s[Overwhelming Power].", type = "Mechanic", id = "gui-V4nLq5RpE8" },
      { order = 8, role = "TANK", text = "Use offensives on upper platform to help break shield faster.", type = "Call", id = "gui-L9cWx3TsB7" },
      { order = 9, role = "HEALER", text = "Plan CDs for s[Inner Fire] + s[Blinding Light] overlaps (P2 often overlaps).", type = "Call", id = "gui-Z3dNt6PmK1" },
      { order = 10, role = "HEALER", text = "Heal through s[Embrace the Light] pulses until shield breaks; triage add damage.", type = "Mechanic", id = "gui-P0kRv8XnF2" },
      { order = 11, role = "HEALER", text = "Spot heal players in puddles or hit by s[Purify] beam.", type = "Mechanic", id = "gui-N5mYc2LsQ6" },
      { order = 12, role = "DPS", text = "Save CDs for upper platform shield burn; faster break shortens danger.", type = "Call", id = "gui-J8pWq4KcT5" },
      { order = 13, role = "DPS", text = "Kick s[Holy Smite] if healer is busy or adds need control.", type = "Interrupt", id = "gui-H1nTf9RvB4" },
      { order = 14, role = "DPS", text = "Use slows, roots, and knockbacks to keep fixated adds from reaching group.", type = "Mechanic", id = "gui-M6vXy7PnE0" }
    }
  }
}