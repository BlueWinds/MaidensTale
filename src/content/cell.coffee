Data.jobs.EscapeCell =
  description: 'Attempt to escape'
  conditions:
    misc:
      confined: 'cell'
  time: 'Night'
  effects:
    skills:
      Lockpicking: 'Pride'
  text: ->"""
    You spend a few minutes wandering around your cell searching for something you can use as a lockpick, and eventually you settle for #{if g.events.EscapeYes then 'your old standby, a partially straightened bedspring' else 'ripping open the underside of the boxspring (thank goodness they were nice enough to give you one of those) and partially straightening one of the metal bits'}. With a great deal of patience you manage to bend one of the wires repeatedly in the same place until it snaps from fatigue. "Lockpick" is really a bit of a misnomer - what you manage is closer to the old trick with a credit card, unlatching the door by sliding your metal piece around in just the proper way. Good thing the door isn't really set of for holding a prisoner.

    You poke your head out into the chill night air. Naked as you are, it doesn't really seem all that prudent to be wandering around outside, and even late at night there seem to be enough people around that you'd be caught and brought back in short order. Even so, knowing that you <em>could</em> get out if you really wanted to buoys your spirits.
  """
Data.jobs.WaitCell =
  description: 'Wait patiently'
  conditions:
    misc:
      confined: 'cell'
  time: 'Any'
  effects:
    skills:
      Temperance: 'Humility'
  text: ->"""
    You've been locked up. Really... it's not so bad, is it? You get to spend some time alone, think about your life, try to come to terms with it... it would probably be a bit more relaxing if you weren't, you know, <em>locked in a cell</em>, but at least it's clean and dry. You try to make the best of it - that's the only way you're going to stay sane in your new life as a slave.
  """

Data.jobs.Meditate =
  description: 'Meditate'
  time: 'Any'
  effects:
    skills:
      Concentration: 'Spirit'
  text: ->"""
    You sit on your bed, legs crossed and eyes closed, attempting to be as present as possible. You reassure yourself that the past and the future don't need your attention right now. You notice your breath, feel the sensations as air flows in and out of your body. Breathing is relaxing and fluid. Listen carefully to the environment around you, content merely to observe...

    You stand up, stretch, shake your whole body to restore the habit of motion. A good way to spend a few hours.
  """

Data.jobs.Exercise =
  description: 'Exercise'
  time: 'Morning'
  effects:
    skills:
      Strength: 'Pride'
  text: ->"""
    It doesn't take much space at all to work up a sweat - jumping jacks, crunches, a couple of stretches... you spend a few hours getting yourself all nice and glowing. It's lucky you don't have huge breasts to get in the way of your workout - even when they're wearing bras, you don't envy those women. Jiggle-jiggle. Your breasts make nice attractive little motions, but don't get in the way or swing around dangerously.
  """
