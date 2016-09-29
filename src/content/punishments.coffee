Data.randomEvents.PunishmentMorning =
  time: 'Morning'
  conditions:
    misc:
      punishment: true
  text: ->"""
    They come for you midmorning, a polite knock on the door before they open it without waiting for you to respond. They, in this case, are a plump woman with beatiful golden waves of hair down her back and pursed lips, accompanied by a man who looks whispy, but has an iron grip when he catches one of your wrists. Caught off guard by the sudden motion, snick-snick, he cuffs your hands behind your back before it even occurs to you that resistance is possible.

    "Come along, #{name}. Time for your punishment." The woman doesn't seem unfriendly, but neither is she sympathetic - for you it may a traumatic experience, but for her it's just part of her job. "You know what you've done."

    The man, though, smiles at your discomforture as he leads you out of the room and across the grounds. The distination is a squat building, one you #{if g.events.PunishmentMachine then "haven't seen used before" else "haven't been to often"}. The heavy wooden deer clicks closed behind the three of you ominously. There are no windows.

    You're left in the dark a moment while the woman fumbles to find the lightswitch. "Damn it Sorley, hold the door open while I find this damn thing."

    Sorley just gives you a little shove in the shoulder, enough to remind you that he's there without moving you, his other hand on your wrists, still cuffed together behind your back. You're pretty sure you can feel him smirking.

    The woman finally finds the light, revealing the room you've been brought to. Since it was a punishment, you were expecting grey stone walls and a concrete floor, but instead it looks more like a luxurious sitting room, with lush red carpet and black leather couches just begging to be sat un.

    You don't get to sit on them, of course - as soon as you see it, you're certain what's about to happen next. The centerpiece of the room is a #{options}.
  """
  effects:
    set: {punishment: false}
  next:
    'Metal contraption':
      skill: 'Endurance'
      diff: 12
      result: ['PunishMachineYes', 'PunishMachineNo']

Data.events.PunishMachineYes =
  text: ->"""
    With brisk efficiency the man removes your clothing, cutting away your top so he doesn't have to free your hands, then shoves you onto the seat. Two pairs of hands, one rough and one gentle, strap your ankles in securely, then pass belts across your hips, stomach, chest, and around your forehead. Finally they free your hands - but only for a moment, enough time to strap down your wrists as well.

    Naked, spread eagle, helpless... Sorley runs his hands along your inner thighs, cupping your sex with one hand and thrusting a finger in roughly. This draws a disapproving sound from the woman, but he doesn't seem to care.

    "Like that, bitch? Well too bad, I'm not giving you my cock today. You get the machine instead." He removes his finger and begins adjusting the fucking machine, oblivious to - or perhaps enjoying - the woman's silent eye roll. Exhasperation, not sympathy. She doesn't seem to care about you at all.

    You can't raise your head to see what's happening, but you feel a silicone head pressing against your pussy. Sorley adjusts it a little more, then smears a big glob of cold goop over your crotch. A switch is flicked. The dildo pushes slowly into you. First just the tip, slowly, then it withdraws. A moment later it slides into you again, easier this time, and further. Slowly, back and forth, it explores into your depths. Despite the indignaty of the situation, you feel yourself getting wet. It does feel nice, a slow, steady fucking, not too deep, not too hard... nervously you wonder when the punishment is going to begin.

    "Ok, I think we're done here." It's the woman, sounding bored. "See you in a few hours, #{name}."

    "Wait, are you just going to..."

    The sound of the closing door cuts you off. Yes, apparently they are just going to leave you here. Fuck. It feels good right now, but given a few hours of relentless pounding... constant stimulation becomes pure torture soon enough.

    Thump, thump, thump. Good god your cunt is going to hurt. You won't be sitting right for days.
  """
  effects:
    skills: {Endurance: 1}
    mood: {Pride: 1}
Data.events.PunishMachineNo =
  ext: 'PunishMachineYes'
  effects:
    skills: {Endurance: 1}

Data.randomEvents.PunishNight =
  time: 'Night'
  conditions:
    misc:
      punishment: true
  text: ->"""
    They come for you in the middle of the night, and your first sign that anything's happening is a sudden grip on your shoulders, pulling you up and rousing you from your sleep. Someone yanks a bag over yaur head before you can do more than shout in surprise, drawstring pulling tight around your neck. You try to raise your hands to pull it off, but strong hands grab each wrist and pull them together over your head, hauling you painfully upright and out of bed.

    You nearly panic as you realize they're going to #{options} you.
  """
  effects:
    set: {punishment: false}
  next:
    'Gang Rape':
      skill: 'Anal'
      diff: 12
      result: ['PunishRapeYes', 'PunishRapeNo']

Data.events.PunishRapeYes =
  text: ->"""
    There are at least three of them, and you're still groggy with sleep - it takes scant  moments for them to cut off any hope of resistance, tieing your wrists together with what you'd guess is a tshirt and hanging them up on a conveniently placed wall hook. Convenient for them - there's nothing convenient for you about being blind, naked, wrists holding you up painfully so far you can only barely touch the ground with your toes if you strain.

    You're still groggy with a horrible mix of sleep and adrenaline when they start raping you. You're a kidnapped sex slave. You've been imagining what this'll be like from the moment you arrived. It is, however, worse than you imagined. You're still dry as the first dick thrusts roughly into you, and you scream futilely into the bag over your head. He pulls out after just one thrust.

    "Pass the lube, will you? Bitch is sandpaper." It's not your discomfort they care about - it's like they hardly even heard your scream. A hand covered with cold liquid gropes you, getting you ready for the return of his cock. Even with the lube it still hurts when he re-enters you.

    They leave you exhausted, hurting, and #{options}
  """
  effects:
    mood: {Hope: -1, Despair: 2}
  next:
    Terrified: 'PunishRapeTerrified'
    Broken: 'PunishRapeBroken'
Data.events.PunishRapeNo =
  ext: 'PunishRapeYes'
  effects:
    mood: {Hope: -2, Despair: 1}

Data.events.PunishRapeTerrified =
  effects:
    mood: {Humility: 1}
  text: ->"""
    By the time they're finally done with you and unhooking your hands, you can hardly stand. You stumble blindly, scraping a knee, one more pain to add to all the rest. Hands grab your wrists again, and after a moment they're free - you scrabble at the bag still over your head until a man's hands remove that as well. Wild-eyed, you look around at the men who've just finished violating you - only one is left in the room, but you scramble into the corner as far away from him as you can get.

    He shakes his head and leaves. You're alone again. You shiver and sob and hug your knees.
  """

Data.events.PunishRapeBroken =
  effects:
    mood: {Despair: 1}
  text: ->"""
    When they finally let your hands down, you can't do anything but curl up in a ball on the floor, shaking and traumatized. You moan a bit when one of them grabs your wrists, but he's just releasing the tie holding them together. This is not what you imagined it would be like. You feel powerless and helpless and a thousand other varieties of "less."

    He takes the bag off your head and leaves. You barely react, laying on the floor in your misery.
  """
