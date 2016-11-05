Data.randomEvents.LesbianBootyCall =
  description: "Lesbian Booty Call"
  time: 'Morning'
  conditions:
    misc:
      confined: 'manor'
  text: ->"""
    You're interrupted midafternoon by a polite knock on your door. Odd - you're near the bottom of the totem pole around here. Even other slaves usually just open the door on you. Grateful for the respect being shown, you set down your task and answer it quickly. In the doorway stands another slave named Robin, naked, glancing around furtively. You take the hint and invite her in.

    "I, uh, I really want to eat you out. Like, right now."

    You blink a few times. "Why's that?" It's not every day a cute redhead knocks on your door desperate to please you. She's both very cute and very red, hair and cheeks alike. The smell of female arousal and a faint buzzing follow her in to your room.

    "I... um... I didn't please #{if she() is 'she' then 'the Mistress' else 'one of the overseers'}, and she thinks I need more practice with women. I'm not allowed to cum except when I get a woman off, and she won't... w-won't turn the vibrator off..."

    #{options}
  """
  next:
    'Grin and say no': 'LesbianBootyCallDenial'
    'Torment her more': 'LesbianBootyCallTorment'
    'Help her out': 'LesbianBootyCallYes'

Data.events.LesbianBootyCallDenial =
  effects:
    mood: {Spirit: 1}
  text: ->"""
    You grin, drawing the moment out. "No."

    "P-please? It's driving me crazy, why not?"

    "You look so cute like this!" You reach out and tweak a nipple, causing her to moan. "Come back tomorrow and I'll consider it."

    Robin looks at you with desperation. You enjoy the sight of juices running down her thighs as she runs out of your room to continue her search. Maybe she'll find some other woman to satisfy her needs before she explodes and earns herself another punishment... but you doubt it.
  """

Data.events.LesbianBootyCallTorment =
  effects:
    mood: {Pride: 1}
  text: ->"""
  "Down on your knees."

  Robin obeys instantly, and spreads her legs eagerly when you nudge them apart. She moans as you move to the closet and fetch some items. Sexual implements are available in any room of the mansion, a fact which mostly works to your disadvantage, but right now is quite pleasant. "How may I please you?"

  You don't answer, only return to stand in front of her. Gently you place harsh metal over her tender pink buds, eliciting a sharp intake of breath for each one. She doesn't flinch though, for which you reward her with a pat on the head. You finish with a blindfold.

  "Good Robin. Now, I had some things to do before you interrupted, so you'll have to wait for me to finish. If you stay still like that for..." you glance at the clock, "ten minutes, I'll let you get me off."

  She nods. You smile and pat her head again, and return to your task.

  Robin is indeed obedient. It's wonderfully distracting to have her kneeling at your feet, naked and dripping while a quiet buzz continues to emanate from her pussy.

  You let her stew there for nine minutes - not quite the ten you promised - before finally setting down your work again. She perks up instantly as you move in her direction.

  #{options}
  """
  next:
    'Get her off': 'LesbianBootyCallTormentYes'
    'Nope': 'LesbianBootyCallTormentNo'

Data.events.LesbianBootyCallTormentNo =
  text: ->"""
    Grabbing both nipple clamps, you yank them off.

    "Ahhh!" She yelps and jerks forward at the intense pain, bringing her hands forward so she doesn't fall all the way over.

    "That wasn't ten minutes, Robin." You remove the blindfold and wag your finger at her. "I'm afraid you'll have to find someone else, since you couldn't obey me."

    She hics, and looks at you with (entirely justified) betrayal. "I... um... owwww..." she staggers to her knees, the start of tears forming in her eyes.

    You catch her and plant a kiss on her head before she can run out. "You are a very sexy girl, and it's just so cute seeing you like this that I couldn't bear to end it."

    She flees, each step sending droplets of her arousal flying. She may not like you much right now, but there's absolutely no doubt of how hot she's getting.
  """

Data.events.LesbianBootyCallTormentYes =
  text: ->"""
    You strip down to your bare flesh, making her wait, and position your own pussy, now damp of its own accord, just in front of her. "It hasn't been ten minutes yet," you caution her as you remove the nipple clamps - those draw gasps but no flinching - and her blindfold.

    She tries to look up at your face without inclining her head, but close as you are, quickly drops her eyes back to your crotch, inches away from her face. She makes a little noise of desperation, and inhales deeply.

    You glance at the clock. A few seconds left. Fuck it, you're horny, and she's horny, and there's nothing stopping your from grabbing her face and shoving it into your crotch. She takes it as permission to move, and brings her hands up to grip your thighs. Robin's eager tongue flicks across your folds, and you tighten your grip in her short bob of shocking red hair, pressing her closer against you.
  """
  next: 'LesbianBootyCallCleanup'

Data.events.LesbianBootyCallCleanup =
  text: ->"""
    Her desperation and eager submission don't leave you much choice - you hardly last more than a minute before a flick of your clit pushes you over the edge. She grunts in pain as your grip in her hair tightens even further, and your spasms smear your juices all over her face.

    Robin doesn't stop working with her tongue, as she eagerly rubs her own pussy. She too cums almost instantly, falling back on one hand and frigging herself furiously while the two of you moan and pant together.

    You sit down beside her and pull her in for a kiss. It's no longer urgent, but still erotic, with your own taste clear in her mouth. She rubs her hands along your sides, gently enjoying your presence now that her immediate need has been satisfied. There's still the gentle buzzing coming from her ongoing torment with a vibrator, but it no longer controls her actions and she's content to spend a few minutes resting in your arms.
  """

Data.events.LesbianBootyCallYes =
  effects:
    mood: {Hope: 1}
  text: ->"""
    "Kneel down." You order her, and Robin eagerly obeys. She puts her hands on her thighs and fidgets while you strip down to your bare flesh and position your own pussy - starting to feel warm from her scent - just in front of her.

    She stares at it longingly, licking her lips before looking up at you for permission.

    You nod.

    Robin brings her hands up to grip your thighs, and her eager tongue flicks across your folds. You grip her short bob of shocking red hair, pressing her face deeper into your mound.
  """
  next: 'LesbianBootyCallCleanup'

Data.randomEvents.OverseerCarWash =
  description: "Car Wash"
  time: 'Morning'
  conditions:
    misc:
      confined: 'manor'
  text: ->"""
    "#{g.name}. I have a job for you." Wendy - one of the overseers - just burst in on you.

    You set down the hairbrush and stand, reaching for your #{g.Clothes.toLowerCase()} to finish getting dressed.

    "No, undies are fine. Come on, I haven't got all day." She leads you out of your #{if g.confined is 'cell' then 'cell' else 'room'} and to the entrance of the mansion. You mince your steps as you try not to hurt your bare feet, and whenever she's not looking, cover yourself with your hands as best you can.

    Your destination is a car - red, sporty, mud splashed on the wheels and undercarriage. "Wash it."

    The day is sunny and warm, so being outside in your skivies isn't too uncomfortable... or it wouldn't be if Wendy weren't watching you intently. She sits in the shade under a nearby tree as you gather bucket, suds, a hose...
    #{options}
  """
  next:
    'Do your best':
      skill: 'Immodesty'
      diff: 10
      result: ['OverseerCarWashTryYes', 'OverseerCarWashTryNo']
    'Fish for punishment': 'OverseerCarWashPunishment'

Data.events.OverseerCarWashTryYes =
  effects:
    mood: {Pride: 2}
    skills: {Immodesty: 1}
  text: ->"""
    You do your blushing best to actually get the thing clean, acutely aware of the way Wendy's eyes rove over you. You have no choice but to wiggle your butt in her direction as you bend over the hood to wash the windshield, and you can feel her gaze on your breasts, jiggling as you scrub down the rims.

    She sips on lemonade and watches, but doesn't molest you while you work. Thank goodness for small blessings. You're done early enough in the morning that there's still time for the rest of your plans - and she even shared some of her lemonade with you, since you did such a good job.
  """

Data.events.OverseerCarWashTryNo =
  ext: 'OverseerCarWashTryYes'
  effects:
    mood: {Pride: 1}
    skills: {Immodesty: 1}

Data.events.OverseerCarWashPunishment =
  effects:
    mood: {Spirit: 1}
    skills: {Flirting: 1}
  text: ->"""
    You start off using the sponge, but soon transition to using your breasts, rubbing them in sudsy circles on the hood of the car, bending over and wiggling your ass in Wendy's direction. You do your flirty best to both attract attention, and at the same time accomplish basically nothing as far as removing dirt from her vehicle.

    You succeed on both accounts. Sitting in the shade and sipping her lemonade, Wendy can't take her eyes off you, and it isn't until nearly half an hour has passed that she remembers you're supposed to be cleaning, not giving her a sexy, soap-covered show.

    "Dammit, I have to get going. Wash the soap off, you can finish some other time." Though she's trying to scowl, you can tell she doesn't really mean it. Also, she's a little flushed, and not just from the sun.

    Mission accomplished.
  """
