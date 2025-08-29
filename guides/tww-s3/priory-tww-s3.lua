DungeonGuide_Guides["dung-priory-tww-s3"] = {
  unitMapIDs = { 2215, 2308, 2309 },
  challengeMapID = {499},
  name = "Priory of the Sacred Flame",
  id = "dung-priory-tww-s3",
  season = "TWW-S3",
  guideType = "M+",
  
  ["Priory of the Sacred Flame"] = {
    id = "enc-priory-guide",
    order = 1,
    header = "Intro",
    entries = {
      { order = 1, role = "ALL", text = "RIGHT path is stronger in S3: n[Arathi Footman], n[Fervent Sharpshooter], and n[Arathi Knight] give more count and are nerfed.", type = "Mechanic", id = "gui-9Zbb3l4z7iA" },
      { order = 2, role = "ALL", text = "n[Arathi Knight] s[Impale] now telegraphed and shorter; s[Disrupting Shout] damage reduced, but overlap still hurts.", type = "Mechanic", id = "gui-CfJ7aVBor4E" },
      { order = 3, role = "ALL", text = "Kill 2 of 3 mini-bosses (n[Guard Captain Sullean], n[Forge Master Damian], n[Elaena Emberlanz]) to remove them from n[Captain Dailcry].", type = "Mechanic", id = "gui-vcTL3W3x0" },
      { order = 4, role = "ALL", text = "n[Fervent Sharpshooter] s[Disengage] leaps toward a player. Ranged stack in melee to bait and keep packs together.", type = "Mechanic", id = "gui-wfwG921DuU" },
      { order = 5, role = "ALL", text = "Class buff: Paladin/Priest can activate Orb of the Sacred Flame for 30m holy proc. Reactivate after death.", type = "Mechanic", id = "gui-x75VdaZQeQ" },
      { order = 6, role = "TANK", text = "n[Guard Captain Sullean] knockback is negated by walls/stairs; s[Thunderclap] slow can be removed with Blessing of Freedom.", type = "Mechanic", id = "gui-I41kpjvFLec" },
      { order = 7, role = "ALL", text = "Priority interrupts: s[Greater Heal], s[Fireball Volley], s[Battle Cry], s[Burning Light], s[Cinderblast].", type = "Interrupt", id = "gui-mRCdNzuSmA" },
      { order = 8, role = "HEALER", text = "Expect spikes from s[Heatwave], s[Holy Radiance], s[Inner Fire] overlaps - plan CDs for these windows.", type = "Call", id = "gui-GNouGBHpQak" },
      { order = 9, role = "ALL", text = "n[Trusted Guard], lieutenants, and n[Lightspawn] are CC-immune - pre-assign kicks and defensives.", type = "Mechanic", id = "gui-B85o9SZsmdk" },
      { order = 10, role = "ALL", text = "n[Risen Footman] and n[Risen Mage] s[Light Expulsion] on death heals allies - stagger kills or stun before death.", type = "Mechanic", id = "gui-Rl4ADkJUdc" },
      { order = 11, role = "ALL", text = "Space is limited: many effects leave lasting ground. Move together to place safely and preserve open areas.", type = "Mechanic", id = "gui-ENR36qHxyo" },
      { order = 12, role = "ALL", text = "Route", type = "Jump", target = "Route", id = "gui-3XVREXw7b8A" }
    }
  },

  ["Route"] = {
    id = "enc-priory-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are taking the RIGHT side - n[Arathi Footman] + n[Fervent Sharpshooter] packs give high count with lower danger.", type = "Call", id = "gui-LOooFSU6naw" },
      { order = 2, role = "ALL", text = "CC and kill n[Arathi Footman] fast to stop s[Defend] damage reduction.", type = "Target", target = "Arathi Footman", id = "gui-XTxQX4MmGBI" },
      { order = 3, role = "ALL", text = "Pull opener into n[Guard Captain Sullean]. I'll tank him near stairs/wall to negate knockback.", type = "Call", id = "gui-qSZcCNJqWGA" },
      { order = 4, role = "ALL", text = "After Sullean, engage n[Sergeant Shaynemail] - spread for s[Lunging Strike] bleed or stand on brazier to avoid target.", type = "Call", id = "gui-xHWnFOIbNaE" },
      { order = 5, role = "ALL", text = "Chain into n[Fervent Sharpshooter] + n[Arathi Footman] patrol. Ranged stack in melee to bait s[Disengage].", type = "Call", id = "gui-J9bBwTseMDk" },
      { order = 6, role = "ALL", text = "Next up: n[Forge Master Damian]. Dodge puddles, use AMS/Bubble/Spellwarding to prevent spawns.", type = "Call", id = "gui-WONqc9ASix0" },
      { order = 7, role = "ALL", text = "Move to fountain area, clear patrol into n[Elaena Emberlanz]. Interrupt s[Holy Radiance], dispel tank after s[Divine Judgment].", type = "Call", id = "gui-KYiU9PnwfM" },
      { order = 8, role = "ALL", text = "Boss: n[Captain Dailcry] with 1 lieutenant. Stack, cleave, manage puddle placement.", type = "Jump", target = "Captain Dailcry", id = "gui-W3zzUqmQI" },
      { order = 9, role = "ALL", text = "After boss, clear to cathedral. Skip LEFT side if we have count. Watch n[Ardent Paladin] s[Sacred Toll] and n[Zealous Templar] buffs.", type = "Call", id = "gui-Bm7AOBBbbA" },
      { order = 10, role = "ALL", text = "Kill n[Ardent Paladin] fast to reduce s[Sacred Toll] group hits.", type = "Target", target = "Ardent Paladin", id = "gui-AStgOqEdnU" },
      { order = 11, role = "ALL", text = "Interrupt n[Devout Priest] s[Greater Heal] and n[Risen Mage] s[Fireball Volley]. Stun n[Lightspawn] at low HP to avoid Purification heal.", type = "Call", id = "gui-x4UFU53kqo" },
      { order = 12, role = "ALL", text = "Focus n[Devout Priest] to prevent s[Greater Heal] and n[Risen Mage] to stop s[Fireball Volley].", type = "Target", target = "Devout Priest", id = "gui-Ac1K2MaI7w" },
      { order = 13, role = "ALL", text = "Next: n[Baron Braunpyke]. Hug left wall to bait hammers into one zone.", type = "Jump", target = "Baron Braunpyke", id = "gui-b27SC6M1eQ" },
      { order = 14, role = "ALL", text = "Stairwell pack after Baron - LOS pull around corner. Handle n[Lightspawn] separately to avoid heals.", type = "Call", id = "gui-RnRt8ZX3N0w" },
      { order = 15, role = "ALL", text = "Final mini-boss: n[Baron Braunpyke]. Use Bloodlust here if not saving for last boss.", type = "Call", id = "gui-erQnof0wCVA" },
      { order = 16, role = "ALL", text = "Last boss: n[Prioress Murrpray]. Prep cooldowns for 50% add phase and s[Embrace the Light] shield burn.", type = "Jump", target = "Prioress Murrpray", id = "gui-59Z8zzejCM" }
    }
  },
  
  ["Captain Dailcry"] = {
    id = "enc-priory-captain-dailcry",
    order = 3,
    header = "Boss: Captain Dailcry",
    entries = {
      { order = 1, role = "ALL", text = "Assign a kick on s[Battle Cry] every time to stop the lieutenant buff.", type = "Call", id = "gui-A8k8fB6wWnk" },
      { order = 2, role = "ALL", text = "Stack and rotate as a group to place s[Earthshattering Spear] puddles together.", type = "Call", id = "gui-j53QYVDKST0" },
      { order = 3, role = "ALL", text = "On s[Savage Mauling], burn the shield fast. Combat drops also break the channel.", type = "Call", id = "gui-joG0PzizAfY" },
      { order = 4, role = "ALL", text = "Full cleave: damage to boss or lieutenant both reduce boss HP.", type = "Mechanic", id = "gui-1pjqEH5PEo" },
      { order = 5, role = "TANK", text = "Hold boss at an edge and drift clockwise as puddles drop to save center space.", type = "Position", id = "gui-5a6VH4yqhI" },
      { order = 6, role = "TANK", text = "Plan CDs for s[Pierce Armor] (shorter in S3) and after group movement.", type = "Mechanic", id = "gui-SetGVqXgT5c" },
      { order = 7, role = "TANK", text = "If n[Taener Duelmal] is present: kick s[Cinderblast]; step out of s[Emberstorm] swirlies.", type = "Mechanic", id = "gui-u6bLdL5NnuU" },
      { order = 8, role = "TANK", text = "If n[Elaena Emberlanz] is present: call dispel on s[Divine Judgment]; be ready during s[Holy Radiance].", type = "Mechanic", id = "gui-LKCnbpLU2cs" },
      { order = 9, role = "HEALER", text = "CDs for s[Spear] raid hit and during s[Mauling] shield burn windows.", type = "Call", id = "gui-3vpVK3Qlmpc" },
      { order = 10, role = "HEALER", text = "Dispel s[Divine Judgment] quickly if n[Elaena] is active; ramp for s[Holy Radiance].", type = "Mechanic", id = "gui-nK6zIj5K4jc" },
      { order = 11, role = "HEALER", text = "Spot heal puddle clips; watch tank immediately after s[Pierce Armor].", type = "Mechanic", id = "gui-9VQQQBDU7UI" },
      { order = 12, role = "DPS", text = "Hold burst for s[Savage Mauling] to break the shield instantly.", type = "Call", id = "gui-IAHr7SMQDmk" },
      { order = 13, role = "DPS", text = "Maintain kicks: s[Battle Cry] (boss) and s[Cinderblast] (if n[Taener] active).", type = "Interrupt", id = "gui-rpUaQiNCziY" },
      { order = 14, role = "DPS", text = "Stay stacked for controlled puddles; step out for danger then restack.", type = "Position", id = "gui-2299uKpGJ5o" }
    }
  },
  
  ["Baron Braunpyke"] = {
    id = "enc-priory-baron-braunpyke",
    order = 4,
    header = "Boss: Baron Braunpyke",
    entries = {
      { order = 1, role = "ALL", text = "Stack to bait s[Hammer of Purity] in one zone, then move across the room together.", type = "Call", id = "gui-lWHwJffHwLk" },
      { order = 2, role = "ALL", text = "s[Sacrificial Pyre] needs 3 soaks (5 in s[Vindictive Wrath]) - assign soak order pre-pull.", type = "Call", id = "gui-qUcne8YXBvg" },
      { order = 3, role = "ALL", text = "Place s[Castigator's Shield] away from Pyre, then return to soak safely.", type = "Call", id = "gui-QLJP833F0c0" },
      { order = 4, role = "ALL", text = "Keep a kick for s[Burning Light] during/after Pyre to stop heal + lethal AoE.", type = "Call", id = "gui-3Qw9x1wqDkw" },
      { order = 5, role = "TANK", text = "Start boss on one edge; reposition opposite side after hammer bait.", type = "Position", id = "gui-S2A71TFr0Zk" },
      { order = 6, role = "TANK", text = "If needed, soak Pyre twice in a row, wait DoT, then take 3rd with a CD.", type = "Mechanic", id = "gui-KwpRcCIBY38" },
      { order = 7, role = "TANK", text = "Call 'hammers baited' -> 'shields out' -> 'return and soak' to coordinate group.", type = "Call", id = "gui-VBMq8Y2Z0KU" },
      { order = 8, role = "HEALER", text = "Ramp for Pyre soaks + s[Castigator's Shield] overlaps; spot-heal DoT soakers.", type = "Call", id = "gui-CJXGz00BuK8" },
      { order = 9, role = "HEALER", text = "During s[Vindictive Wrath], expect 5 shields + 5 soaks - plan externals/immunities.", type = "Mechanic", id = "gui-pT2wRjXMWuc" },
      { order = 10, role = "DPS", text = "Help bait hammers by stacking; move together after they spawn.", type = "Position", id = "gui-dQmKDxOE9vc" },
      { order = 11, role = "DPS", text = "Rotate Pyre soaks; use personals or immunities if taking more than one.", type = "Mechanic", id = "gui-8xzJ9Kt2DdU" },
      { order = 12, role = "DPS", text = "Keep interrupts ready for s[Burning Light]; never damage into reflect shield.", type = "Interrupt", id = "gui-zb6JESFAws" }
    }
  },
  
  ["Prioress Murrpray"] = {
    id = "enc-priory-prioress-murrpray",
    order = 5,
    header = "Boss: Prioress Murrpray",
    entries = {
      { order = 1, role = "ALL", text = "Turn away for s[Blinding Light] or LoS with stairs to avoid disorient.", type = "Call", id = "gui-hKr8w3cnnP8" },
      { order = 2, role = "ALL", text = "Interrupt s[Holy Smite] on tank. Leaving it un-kicked avoids s[Inner Fire] + s[Blinding Light] overlap in P1.", type = "Call", id = "gui-fWL8lSIJgHs" },
      { order = 3, role = "ALL", text = "Dodge s[Holy Flame] puddles and kite s[Purify] beam to safe areas.", type = "Call", id = "gui-b9aSqC9SzlM" },
      { order = 4, role = "ALL", text = "At 50%, follow boss up, burn s[Embrace the Light] shield quickly to stop AoE pulses.", type = "Call", id = "gui-SqYGmSVfTnU" },
      { order = 5, role = "ALL", text = "Stack to one side during add phase for grouped AoE CC.", type = "Position", id = "gui-ecJapYWMAw" },
      { order = 6, role = "TANK", text = "Tank boss near edge; kite s[Purify] beam backwards to preserve space.", type = "Position", id = "gui-0w51VXgRQSc" },
      { order = 7, role = "TANK", text = "Pick up fixated adds when they reach platform. They melee and pulse s[Overwhelming Power].", type = "Mechanic", id = "gui-lM1QIS4L7Uw" },
      { order = 8, role = "TANK", text = "Use offensives on upper platform to help break shield faster.", type = "Call", id = "gui-pBf4bDGpCIE" },
      { order = 9, role = "HEALER", text = "Plan CDs for s[Inner Fire] + s[Blinding Light] overlaps (P2 often overlaps).", type = "Call", id = "gui-XWN6A8ixzkk" },
      { order = 10, role = "HEALER", text = "Heal through s[Embrace the Light] pulses until shield breaks; triage add damage.", type = "Mechanic", id = "gui-4g4lcI1Fews" },
      { order = 11, role = "HEALER", text = "Spot heal players in puddles or hit by s[Purify] beam.", type = "Mechanic", id = "gui-yLtoeBEYN2A" },
      { order = 12, role = "DPS", text = "Save CDs for upper platform shield burn; faster break shortens danger.", type = "Call", id = "gui-PFvIhW6L4mA" },
      { order = 13, role = "DPS", text = "Kick s[Holy Smite] if healer is busy or adds need control.", type = "Interrupt", id = "gui-jApgl3S3W1U" },
      { order = 14, role = "DPS", text = "Use slows, roots, and knockbacks to keep fixated adds from reaching group.", type = "Mechanic", id = "gui-Mz7LyV47s" }
    }
  }
}
