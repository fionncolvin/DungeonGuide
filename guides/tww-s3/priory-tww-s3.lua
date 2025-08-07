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
      { order = 1, role = "ALL", text = "Paladin/Priest can activate flame orb for 30min Holy AoE proc buff.", type = "Mechanic", id = "gui-qxfkkUAJ0Yc" },
      { order = 2, role = "ALL", text = "You must fight n[Captain Dailcry] + 1 lieutenant. Kill 2 of 3 mini-bosses to remove them from boss.", type = "Mechanic", id = "gui-izNJYveT0mw" },
      { order = 3, role = "ALL", text = "Sharpshooters jump toward ranged on s[Disengage] - bait by staying in melee.", type = "Mechanic", id = "gui-peZUYUYne4" },
      { order = 4, role = "ALL", text = "Knights now do less damage and count more - consider adding some for skip options.", type = "Mechanic", id = "gui-Iqq4hCEIj4g" },
      { order = 5, role = "ALL", text = "n[Forge Master Damian] now casts fewer puddles. Avoid hits or immune to prevent them.", type = "Mechanic", id = "gui-sJejvarlXE8" },
      { order = 6, role = "ALL", text = "n[Sergeant Shaynemail]'s leap applies AoE bleed. Spread or stand on brazier to avoid.", type = "Mechanic", id = "gui-tSxxMlpoc0" },
      { order = 7, role = "HEALER", text = "Prepare for heavy damage during s[Heatwave], s[Holy Radiance], and s[Inner Fire] overlaps.", type = "Call", id = "gui-7F1ZnvQse9w" },
      { order = 8, role = "TANK", text = "s[Impale], s[Pierce Armor], and s[Blazing Strike] stack fast - rotate CDs accordingly.", type = "Mechanic", id = "gui-50zfK1Zh4xw" },
      { order = 9, role = "ALL", text = "Trusted Guards, Lieutenants, and Lightspawns are CC immune - pre-assign interrupts.", type = "Mechanic", id = "gui-N1BEl9SIdww" },
      { order = 10, role = "ALL", text = "Interrupt: s[Greater Heal], s[Fireball Volley], s[Battle Cry], s[Burning Light], s[Cinderblast].", type = "Interrupt", id = "gui-QxwiPNdYbUU" },
      { order = 11, role = "ALL", text = "Kill n[Risen Footmen] and n[Risen Mages] staggered - s[Light Expulsion] heals allies on death.", type = "Mechanic", id = "gui-umlh5cLamXY" },
      { order = 12, role = "ALL", text = "Use group movement to control s[Earthshattering Spear] and reduce puddle clutter.", type = "Mechanic", id = "gui-JyazOte5Ggo" },
      { order = 13, role = "ALL", text = "Final boss adds now spawn more safely and can be AoE CC'd on one side of platform.", type = "Mechanic", id = "gui-4Cj0HOf5htU" },
      { order = 14, role = "ALL", text = "Route", type = "Jump", target = "Route", id = "gui-Sd5d0KXyn0g" }
    },
  },

  ["Route"] = {
    id = "enc-priory-route",
    order = 2,
    header = "Route",
    entries = {
      { order = 1, role = "ALL", text = "We are pulling right side to start - Footmen + Sharpshooter pack into the patrol.", type = "Call", id = "gui-BQ6k7ylUEkc" },
      { order = 2, role = "ALL", text = "After I engage n[Guard Captain Sullean], I'll tank him near stairs to negate knockback.", type = "Call", id = "gui-k8uV8UL0w0" },
      { order = 3, role = "ALL", text = "We move up stairs and pick up n[Sergeant Shaynemail] and adjacent RIGHT pack.", type = "Call", id = "gui-RQN9WrylHQs" },
      { order = 4, role = "ALL", text = "Next is tree-side triple pull with a patrol. Pop CDs if needed.", type = "Call", id = "gui-cbkMm96ZmY" },
      { order = 5, role = "ALL", text = "After this we chain into n[Fanatical Conjuror] + n[Lightspawn] + n[Neophytes].", type = "Call", id = "gui-4UCwu3CX7EM" },
      { order = 6, role = "ALL", text = "Next is n[Forge Master Damian]. Avoid puddles and pop Lust if you're skipping final orb.", type = "Call", id = "gui-U7NV4RwXc" },
      { order = 7, role = "ALL", text = "We'll engage n[Elaena Emberlanz] and clear patrol near fountain.", type = "Call", id = "gui-swohTZuCLvc" },
      { order = 8, role = "ALL", text = "Boss: n[Captain Dailcry] with lieutenant. Stack, cleave, dodge puddles.", type = "Jump", target = "Captain Dailcry", id = "gui-C3VZxxgbDeE" },
      { order = 9, role = "ALL", text = "After Dailcry, clear trash to cathedral - skip left side if we hit count.", type = "Call", id = "gui-ina6FeKNNp4" },
      { order = 10, role = "ALL", text = "LOS into n[Paladins] + n[Priests] + n[Templars]. Dispel buffs + interrupt casters.", type = "Call", id = "gui-2ToTrbEc9h8" },
      { order = 11, role = "ALL", text = "Next up: n[Baron Braunpyke]. Hug left wall for hammer bait.", type = "Jump", target = "Baron Braunpyke", id = "gui-LI42kGHZ5Gk" },
      { order = 12, role = "ALL", text = "After boss, go up stairwell. LOS pack around corner into it safely.", type = "Call", id = "gui-BcD88QB6bRE" },
      { order = 13, role = "ALL", text = "Clear Lightspawns last. Avoid Purification heals by separating them.", type = "Call", id = "gui-bjvLhGIQ79g" },
      { order = 14, role = "ALL", text = "Final mini-boss: n[Serb Ronpike]. Watch tankbusters and use Lust if not saving.", type = "Call", id = "gui-uJraMS42ojg" },
      { order = 15, role = "ALL", text = "Last boss: n[Prioress Murrpray]. Prepare cooldowns for intermission adds.", type = "Jump", target = "Prioress Murrpray", id = "gui-1184QRwvWPw" }
    },
  },
  
  ["Captain Dailcry"] = {
    id = "enc-priory-captain-dailcry",
    order = 3,
    header = "Boss: Captain Dailcry",
    entries = {
      { order = 1, role = "ALL", text = "Interrupt s[Battle Cry] - it buffs the lieutenant and adds group damage.", type = "Interrupt", id = "gui-wHSmOI9Ixt4" },
      { order = 2, role = "ALL", text = "s[Earthshattering Spear] drops AoE under random player and leaves 2-min puddle. Move fast.", type = "Mechanic", id = "gui-Mej12CFh960" },
      { order = 3, role = "ALL", text = "s[Savage Mauling] shields boss and channels on random player. Burn to break.", type = "Call", id = "gui-IBSbd0e0KxQ" },
      { order = 4, role = "ALL", text = "Cleave boss and lieutenant. Damage done to either affects the boss HP.", type = "Mechanic", id = "gui-pRG8gh1aMs" },
      { order = 5, role = "ALL", text = "Stack up and move together to control puddle placement and cleave targets.", type = "Position", id = "gui-FJbo8OztZbo" },
      { order = 6, role = "TANK", text = "Face boss away from group to manage s[Earthshattering Spear] direction.", type = "Position", id = "gui-32sml8FQuM" },
      { order = 7, role = "TANK", text = "Rotate CDs for s[Pierce Armor] - reduced duration now, but still lethal combo.", type = "Mechanic", id = "gui-FxKlNgpJ24" },
      { order = 8, role = "TANK", text = "If fighting n[Taener Duelmal], interrupt s[Cinderblast] and dodge s[Emberstorm] swirlies.", type = "Mechanic", id = "gui-lgNEShERQM" },
      { order = 9, role = "TANK", text = "If fighting n[Elaena Emberlanz], watch for magic hit and s[Holy Radiance] channel.", type = "Mechanic", id = "gui-Qq4ScvEvP8" },
      { order = 10, role = "TANK", text = "Use mobility to reposition out of puddles or post-channel swirlies.", type = "Mechanic", id = "gui-pxwN2eSRt0" },
      { order = 11, role = "HEALER", text = "Prepare cooldowns for s[Mauling] + s[Pierce Armor] combo or channel overlap.", type = "Call", id = "gui-88kB97OozyQ" },
      { order = 12, role = "HEALER", text = "Top off players targeted by s[Earthshattering Spear] and bleed effects.", type = "Mechanic", id = "gui-aPdURp2s3Y" },
      { order = 13, role = "HEALER", text = "Dispel s[Divine Judgment] if n[Elaena Emberlanz] is active.", type = "Mechanic", id = "gui-4dxj3ynm32U" },
      { order = 14, role = "DPS", text = "Pool CDs for s[Mauling] shield. Faster break reduces group damage.", type = "Call", id = "gui-seTrE9vWgSI" },
      { order = 15, role = "DPS", text = "Interrupt n[Taener]'s s[Cinderblast] if present. Focus boss otherwise.", type = "Interrupt", id = "gui-CABQHFUydD0" }
    },
  },
  
  ["Baron Braunpyke"] = {
    id = "enc-priory-baron-braunpyke",
    order = 4,
    header = "Boss: Baron Braunpyke",
    entries = {
      { order = 1, role = "ALL", text = "Pull boss to one side and stack to bait s[Hammer of Purity] in one area.", type = "Call", id = "gui-Ij6nmauXxD0" },
      { order = 2, role = "ALL", text = "After bait, move across room to reset space and prep next hammer cycle.", type = "Call", id = "gui-hUkuh83MARg" },
      { order = 3, role = "ALL", text = "s[Sacrificial Pyre] needs 3 soaks (5 in s[Vindictive Wrath]). Rotate soakers.", type = "Mechanic", id = "gui-1zFcJyl4aYY" },
      { order = 4, role = "ALL", text = "s[Castigator's Shield] hits 3 (or 5 empowered) players. Bait away from Pyre zone.", type = "Mechanic", id = "gui-J136olw8CEc" },
      { order = 5, role = "ALL", text = "Use immunities for Pyre soaks if group is low or cooldowns are down.", type = "Mechanic", id = "gui-r3bvuUdjFVg" },
      { order = 6, role = "TANK", text = "Soak 2 Pyres in a row if needed, wait out DoT, then soak 3rd with CD.", type = "Mechanic", id = "gui-HL14C4Ah810" },
      { order = 7, role = "TANK", text = "Reposition boss opposite group after s[Hammer of Purity] to open space.", type = "Position", id = "gui-5LZ1tIcTgA" },
      { order = 8, role = "TANK", text = "Call hammer bait and Pyre soak timing to reduce overlap risks.", type = "Call", id = "gui-4feas7XzcE" },
      { order = 9, role = "HEALER", text = "Ramp heals for Pyre soaks and s[Castigator's Shield] combo hits.", type = "Call", id = "gui-W14rYwQJPyw" },
      { order = 10, role = "HEALER", text = "s[Sacrificial Flame] DoT from Pyre can stack - triage and top soakers quickly.", type = "Mechanic", id = "gui-YSYl7qXShiI" },
      { order = 11, role = "DPS", text = "Help bait hammers by stacking before cast - then move as a group.", type = "Call", id = "gui-31K0iGRXhkc" },
      { order = 12, role = "DPS", text = "Rotate Pyre soaks and avoid doubling - use personals if taking a second hit.", type = "Mechanic", id = "gui-GykLP8PpIus" }
    },
  },
  
  ["Prioress Murrpray"] = {
    id = "enc-priory-prioress-murrpray",
    order = 5,
    header = "Boss: Prioress Murrpray",
    entries = {
      { order = 1, role = "ALL", text = "Turn away during s[Blinding Light] or get disoriented. Can be LoS'd using stairs.", type = "Mechanic", id = "gui-eMMMNyVu4ms" },
      { order = 2, role = "ALL", text = "s[Holy Flame] spawns puddles under players. Move fast to avoid fire DoT.", type = "Mechanic", id = "gui-LA9yubg8jb8" },
      { order = 3, role = "ALL", text = "Interrupt s[Holy Smite] to reduce tank and group pressure. Rotate kicks.", type = "Interrupt", id = "gui-jQ3Excgvvk" },
      { order = 4, role = "ALL", text = "If Smite isn't kicked, s[Inner Fire] will not overlap with s[Blinding Light].", type = "Mechanic", id = "gui-GXdKHG2AhNw" },
      { order = 5, role = "ALL", text = "50%: Boss jumps up and casts s[Embrace the Light]. Burn shield to interrupt it.", type = "Call", id = "gui-LaTnVq1Q0M" },
      { order = 6, role = "ALL", text = "Adds fixate and pulse s[Overwhelming Power]. Use AoE slows, roots, knockbacks.", type = "Mechanic", id = "gui-Lb7yoDoU68M" },
      { order = 7, role = "ALL", text = "Stack on one side of upper platform to group adds for control.", type = "Position", id = "gui-nxVcloM7ifE" },
      { order = 8, role = "TANK", text = "Tank boss near edge. Kite s[Purify] beam back to save space.", type = "Position", id = "gui-unOTsDuFfT8" },
      { order = 9, role = "TANK", text = "Grab fixated adds when they reach the platform. They melee and pulse damage.", type = "Mechanic", id = "gui-nKSa5uf8Eqc" },
      { order = 10, role = "TANK", text = "Pop offensives to help break s[Embrace the Light] shield faster.", type = "Call", id = "gui-5CJfcbdG2Yo" },
      { order = 11, role = "HEALER", text = "CDs for s[Inner Fire] + s[Blinding Light] overlap - heavy AoE damage.", type = "Call", id = "gui-hFh5ZW1C1Jw" },
      { order = 12, role = "HEALER", text = "Heal through s[Embrace the Light] until shield breaks. Constant pulsing AoE.", type = "Mechanic", id = "gui-OUwjLqBec" },
      { order = 13, role = "HEALER", text = "Spot heal beam targets and anyone standing in flame puddles.", type = "Mechanic", id = "gui-i3QNs2SiQOY" },
      { order = 14, role = "DPS", text = "Save CDs for upper platform to help break boss shield quickly.", type = "Call", id = "gui-POQQXli9WCQ" },
      { order = 15, role = "DPS", text = "Interrupt s[Holy Smite]. Rotate if healer is locked or handling adds.", type = "Interrupt", id = "gui-FVlIaJ1XW4" },
      { order = 16, role = "DPS", text = "Use slows and knockbacks on fixated adds to reduce tank pressure.", type = "Mechanic", id = "gui-AGqsAW1QatQ" }
    }
  }
}
