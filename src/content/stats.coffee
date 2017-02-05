window.Data =
  randomEvents: {}
  jobs: {}
  events: {}
  pseudoEvents: {}
  adventures: {}

  times: ['Morning', 'Evening', 'Night']
  dailyEventChance: 0.6
  difficulty:
    easy: 0.6
    normal: 1
    hard: 1.5
  storytellers:
    danni:
      gender: 'f'
      first: 'Danni'
      last: 'Jemson'
    nick:
      gender: 'm'
      first: 'Nick'
      last: 'Romanov'
    sarah:
      gender: 'f'
      first: 'Sarah'
      last: 'Lanshi'
  opposedMood:
    Pride: 'Humility'
    Humility: 'Pride'
    Hope: 'Despair'
    Despair: 'Hope'
    Spirit: 'Detachment'
    Detachment: 'Spirit'
  dailyChoices:
    Clothes:
      from: 'availableClothes'
      descriptions:
        Sundress: "Skimpy flower-patterned sun dress"
        Jeans: "X-backed teal blouse and skinny jeans"
        Miniskirt: "Hip-hugging black miniskirt and low cut red blouse"
  updates: [
    -> delete g.events.ContentFinished
  ]

window.Game =
  day: 0
  version: Data.updates.length
  events: {Intro: 0} # In the form {eventName: lastOccurrance}
  history: [['Intro']] # In the form [[Day0Event1, Day0Event2, ...], [Day1Event1], ...]. Start it off which the event you want to open a new game with.
  upcoming: [] # A list of upcoming events, pulled from when the "current event chain" runs out of items.
  plans: ['Exercise', 'WaitCell', 'WaitCell'] # One events per item in Data.times - what they player last planned to do during each period
  adventure: "IntroAdventure"

  name: 'unnamed'
  background: 'Rich'
  profession: 'Student'
  storyteller: 'danni'
  confined: 'cell'
  punishment: ''
  Clothes: 'Sundress'
  availableClothes:
    Sundress: false
    Jeans: false
    Miniskirt: false
  mood:
    Pride: 0
    Humility: 0
    Hope: 0
    Despair: 0
    Spirit: 0
    Detachment: 0
  skills:
    Anal: 0 # Humility
    Baking: 0 # Humility -
    Bluffing: 0 # Pride
    Climbing: 0 # Pride
    Concentration: 0 # Spirit
    Cooking: 0 # Humility
    Dancing: 0 # Spirit
    Endurance: 0 # Pride
    Etiquette: 0 # Hope -
    Fashion: 0 # Hope
    Flattery: 0 # Despair
    Flirting: 0 # Hope
    'Gag Reflex': 0 # Despair
    Immodesty: 0 # Detachment
    Instruments: 0 # Spirit -
    Intimidation: 0 # Spirit
    Literature: 0 # Detachment
    Lockpicking: 0 # Pride
    Makeup: 0 # Humility
    Mathematics: 0 # Detachment
    Medicine: 0 # Detachment
    Memorization: 0 # Despair
    Oral: 0 # Despair
    Seduction: 0 # Spirit
    Singing: 0 # Hope
    Strength: 0 # Pride
    Temperance: 0 # Humility
