Data.jobs.ChangeMood =
  description: 'Clear your mind'
  title: 'Trade points between moods (Pride <-> Humility, Hope <-> Despair, Spirit <-> Introspection)'
  time: 'Any'
  text: ->"""
    Taking some time for yourself, you...

    #{options}
  """
  next:
    'Contemplate your situtation': 'ReducePride'
    'Get angry': 'ReduceHumility'
    Cry: 'ReduceHope'
    'Cry silently': 'ReduceDespair'
    Nap: 'ReduceSpirit'
    'Search for motivation': 'ReduceDetachment'
    'Search for motivation': 'ReduceNothing' # A fallback, in case they literally don't have any mood points, so they don't get stuck here.

Object.assign Data.events,
  ReducePride:
    conditions:
      mood: {Pride: [2, 10]}
    effects:
      mood: {Pride: -2, Humility: 1}
    text: ->"""
      You're a slave. Really, it'd probably be better if you accepted the fact that these people have complete control over your life. Even if you escaped from them, you'd still be in a foreign country, with no money, no friends, and your face on a wanted poster. Whatever your eventual plans... for now, it'd be better not to antagonize them <em>too</em> much.
    """

  ReduceHumility:
    conditions:
      mood: {Humility: [2, 10]}
    effects:
      mood: {Humility: -2, Pride: 1}
    text: ->"""
      Fuck this. You may be in a foreign country, legally property without a penny to your name, but you're still a person, and while you'll obey some orders (your #{Mistress} does have complete control over your body, and your body can <em>hurt</em>), there's no reason you have to give up independence of thought as well. Whatever your plans, it'd be better to retain some independence of thought and action.
    """

  ReduceHope:
    conditions:
      mood: {Hope: [2, 10]}
    effects:
      mood: {Hope: -2, Despair: 1}
    text: ->"""
      Taken away from your home and enslaved, humiliated, stripped naked, brutalized and generally completely out of control... you break down. It's not pretty, and you try to spare yourself the indignaty of remembering too much, but it's a couple of hours before you manage to pull yourself together again.

      You clean yourself up a little, splashing water over a tear-stained face. Fuck. Life is not looking up right now.
    """

  ReduceDespair:
    conditions:
      mood: {Despair: [2, 10]}
    ext: 'ReduceHope'
    effects:
      mood: {Despair: -2, Hope: 1}

  ReduceSpirit:
    conditions:
      mood: {Spirit: [2, 10]}
    effects:
      mood: {Spirit: -2, Detachment: 1}
    text: ->"""
      So much has happened the last few days that you deserve a bit of rest. Curling up on your bed, you drift off, planning to just rest your eyes for a few minutes.

      A few hours later, you rub the sleep from your eyes and yawn. Whelp. There goes the #{time}.
    """

  ReduceDetachment:
    conditions:
      mood: {Detachment: [2, 10]}
    effects:
      mood: {Detachment: -2, Spirit: 1}
    text: ->"""
      So what if you're a slave? That's no excuse to laze around all day and wait for things to happen. You're lucky enough to have a good amount of freedom (within the confines set by your #{Mistress}), so it's time to get up and use it!

      You spend a few hours trying to stir up some motivation. It doesn't actually accomplish anything, but it might help you accomplish something later. You hope.
    """

  ReduceNothing:
    conditions:
      mood:
        Pride: [0, 1]
        Humility: [0, 1]
        Hope: [0, 1]
        Despair: [0, 1]
        Spirit: [0, 1]
        Detachment: [0, 1]
    effects:
      mood: {Spirit: 1}
    text: ->"""
      So what if you're a slave? That's no excuse to laze around all day and wait for things to happen. You're lucky enough to have a good amount of freedom (within the confines set by your #{Mistress}), so it's time to get up and use it!

      You spend a few hours trying to stir up some motivation. It doesn't actually accomplish anything, but it might help you accomplish something later. You hope.
    """
