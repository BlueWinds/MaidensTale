Data.randomEvents.WaitOnDanni =
  description: "Wait on your owner"
  time: 'Evening'
  conditions:
    misc:
      confined: 'manor'
      storyteller: 'danni'
  text: ->"""
    Your plans are interrupted by a breathless Robbin pounding on the door. "#{g.name}, #{Ms}. #{Masterson} Jemson says you should take the next shift." She pants, resting hands on her knees. "Library. First floor, second door on the left," she adds, in case you needed directions.

    One of the duties expected of the slaves here on the estate is to attend to the #{mistress}. That can mean anything from errand girl to fuck toy to conversational partner. Also, given the disdain for technology that the manor shows, you get to carry messages - like Robin just did. You nod, thank her, drop what you're doing and depart at a run. It wouldn't do to keep #{her} waiting.
  """
  next: 'WaitLiterature'

Data.randomEvents.WaitOnNick =
  ext: 'WaitOnDanni'
  conditions:
    misc:
      confined: 'manor'
      storyteller: 'nick'
  selectNext: 'random'
  next: [
    'WaitLiterature'
    'WaitFootstool'
  ]

Data.randomEvents.WaitOnSarah =
  ext: 'WaitOnDanni'
  conditions:
    misc:
      confined: 'manor'
      storyteller: 'sarah'
  next: 'WaitFootstool'

Data.events.WaitLiterature =
  text: ->"""
    #{Ms}. #{Masterson} is sitting in the library, as promised, and sets down #{her} book as you enter. #{She} gestures to a chair, and you take a seat.
    "#{g.name}. Have you ever read Gilgamesh?"

    #{options}
  """
  next:
    'Um...':
      skill: 'Literature'
      diff: 12
      result: ['WaitLiteratureNo', 'WaitLiteratureNo']

Data.events.WaitLiteratureYes =
  text: ->"""
    "I was just reading Beowulf for the first time, and reflecting on the cultural differences between them. They're both stories of heroes battling monsters, but Gilgamesh is so much more..." #{she} gropes for a word, "mature, I guess is the only way to put it. There's more poetry in it, more subtlety."

    As it turns out, you have read Beowulf before, long ago, but not Gilgamesh, and venture the opinion.

    "Oh, you have to! It's such a fine poem," #{she} presses a thin volume into your hand. "I guess it won't have the full impact of a proper comparison, but tell me what you thought of Beowulf."

    You wonder briefly if all wealthy slave owners love the classics - it's such an aristocratic stereotype that you can't help but smile at the thought. There are far worse ways to spend the evening than indulging your owner's love of literature, even if the discussion does have a tendency to make you feel rather undereducated.
  """
  effects:
    mood: {Pride: 2}
    skills: {Literature: 1}

Data.events.WaitLiteratureNo =
  ext: 'WaitLiteratureYes'
  effects:
    mood: {Pride: 1}
    skills: {Literature: 1}

Data.events.WaitFootstool =
  text: ->"""
    "#{g.name}, good. I want you naked on your hands and knees at my feet."

    You strip, heat rushing to your cheeks at the way #{mistress} #{Mandy} watches you with a half-smile playing across #{her} face. The carpet is thick and pleasant against your knees.

    Once you're in the requested position, #{Ms}. #{Masterson} lays down #{her} book and stands, moving around behind you. "Silence. Not a peep out of you." #{She} wraps a cloth blindfold around your eyes, then prods your mouth to open. You do, and are rewarded by an o-ring gag pressed into place and secured around the back of your head. "Here," #{she} guides you to a spot on the floor, "hands and knees."

    You go down on all fours. #{She} pushes you further down, until your knees are curled up against your chest. And then... #{she} puts headphones over your ears. Complete, utter silence descends. You can't hear anything at all, not even the beating of your own heart. A moment later you feel feet on your back - it seems #{she}'s decided to use you as a footstool while #{she} reads.

    #{options}
  """
  next:
    'Endure patiently':
      skill: 'Temperance'
      diff: 10
      result: ['WaitFootstoolYes', 'WaitFootstoolNo']

Data.events.WaitFootstoolYes =
  text: ->"""

    You're utterly blind, deaf and dumb. But the gag keeps your mouth open, and you can already feel drool starting to make its way down your chin. Everything about this is humiliating. You're so turned on you can't think straight.

    Time passes. Feet rest on your back. What is #{mistress} reading?

    She shifts slightly. Time passes. You're sure there's a pool of drool beneath your mouth.

    You jump suddenly and moan as fingers caress your pussy. This draws a swift and brutal spank. Oh, right, no sounds. You squirm a little and try to remain silent as #{she} feels your insides. Then the fingers withdraw, leaving you alone again in your humiliating, dark and tiny little world.
  """
  effects:
    mood: {Detachment: 2}
    skills: {Temperance: 1}

Data.events.WaitFootstoolNo =
  ext: 'WaitFootstoolYes'
  effects:
    mood: {Detachment: 1}
    skills: {Temperance: 1}
