module.exports = (Data, Game)->
  anyEvent = []
  eventConditions = {}
  for type in ['events', 'randomEvents', 'jobs']
    for key, value of Data[type]
      anyEvent.push key
      eventConditions[key] = {oneOf: [
        {type: 'boolean'} # The event must or must not have occurred
        {type: 'integer', not: {'enum': [0]}} # Greater than 0: "must have occurred within last X days". Less than 0: "must not have occurred within last X days"
      ]}
  for key, value of Data.pseudoEvents
    anyEvent.push key

  aMood = Object.keys(Game.mood)
  moodConditions = {}
  moodDelta = {}
  for key of Game.mood
    moodDelta[key] = {type: 'integer', min: -10, max: 10}
    moodConditions[key] =
      type: 'array'
      minItems: 2
      maxItems: 2
      items: {type: 'integer', min: 0, max: 10}

  aSkill = Object.keys(Game.skills)
  skillDelta = {}
  for key of Game.skills
    skillDelta[key] = {oneOf: [
      {type: 'integer', min: 0, max: 10}
      {'enum': aMood}
    ]}

  setDelta = {}
  for key, value of Game
    if typeof value in ['string', 'number', 'boolean']
      setDelta[key] = {type: typeof value}
    else if key not in ['mood', 'skills']
      setDelta[key] = {type: 'object', minProperties: 1, properties: {}, additionalProperties: false}
      for subKey, subValue of value
        setDelta[key].properties[subKey] = {type: typeof subValue}

  dataSchema =
    definitions:
      Conditions:
        type: 'object'
        properties:
          day:
            type: 'array'
            minItems: 2
            maxItems: 2
            items: {type: ['integer'], min: 0}
          events:
            type: 'object'
            minProperties: 1
            properties: eventConditions
            additionalProperties: false
          misc:
            type: 'object'
            minProperties: 1
            properties: setDelta
            additionalProperties: false
          mood:
            type: 'object'
            minProperties: 1
            properties: moodConditions
            additionalProperties: false
        minProperties: 1
        additionalProperties: false
      Test:
        type: 'object'
        required: ['skill', 'diff', 'result']
        properties:
          skill: {'enum': aSkill}
          mood: {aMood}
          diff: {type: 'integer', minimum: 0, maximum: 30}
          result:
            type: 'array'
            minItems: 2
            maxItems: 2
            items: {'enum': anyEvent}
      Event:
        type: 'object'
        properties:
          conditions: {$ref: '#/definitions/Conditions'}
          text:
            isFunction: true
          selectNext:
            'enum': ['first', 'random', 'unused', 'leastRecent'] # Method to choose the next event from the an array
          next:
            oneOf: [
              {'enum': [false]} # Pause here for user input. The event text is required to call applyEvent('someNextEvent') when done.
              {'enum': anyEvent} # Name of an event that occurs next
              {type: 'array', minItems: 2, items: {'enum': anyEvent}} # Ordered list of events for user with 'first', 'random', 'unused' or 'leastRecent' selectNext
              {type: 'object', minProperties: 1, additionalProperties: { # Player choice: {label: (event or test)}
                oneOf: [{'enum': anyEvent}, {$ref: '#/definitions/Test'}]
              }}
            ]
          description:
            type: 'string'
          effects:
            type: 'object'
            minProperties: 1
            additionalProperties: false
            properties:
              mood:
                type: 'object'
                minProperties: 1
                properties: moodDelta
                additionalProperties: false
              skills:
                type: 'object'
                minProperties: 1
                properties: skillDelta
                additionalProperties: false
              set:
                type: 'object'
                minProperties: 1
                properties: setDelta
                additionalProperties: false
              call:
                isFunction: true
        oneOf: [
          {
            required: ['next']
            oneOf: [
              {properties: {next: {'enum': [false]}}} # Wait for user input
              {properties: {next: {'enum': anyEvent}}} # Go straight to this next event
              {required: ['text'], properties: {next: {type: 'object'}}} # Skill test
              {required: ['selectNext'], properties: { # If we use a function to choose between a list of next events, selectNext is also required
                selectNext: {type: 'string'}
                next: {type: 'array'}
              }}
            ]
          }
          {required: ['text'], allOf: [ # Event chain is done, carry on with the day.
            {not: {required: ['next']}}
            {not: {required: ['selectNext']}}
          ]}
        ]
      RandomEvent:
        allOf: [{$ref: '#/definitions/Event'}, {
          required: ['time', 'text']
          properties:
            time: {'enum': Data.times}
          }]
      Job:
        allOf: [{$ref: '#/definitions/Event'}, {
          required: ['time']
          properties:
            time:
              'enum': Data.times.concat('Any')
            title:
              type: 'string'
        }]
      Adventure:
        type: 'object'
        required: ['conditions', 'description', 'steps']
        properties:
          conditions: {$ref: '#/definitions/Conditions'}
          description: {type: 'string'}
          steps:
            type: 'array'
            minItems: 2
            items: {'enum': anyEvent}
        additionalProperties: false

    type: 'object'
    properties:
      randomEvents:
        type: 'object'
        additionalProperties:
          $ref: '#/definitions/RandomEvent'
        patternProperties:
          '\\W':
            # These shouldn't exist at all, so we just try to match them against something that always fails.
            'enum': [undefined]
      jobs:
        type: 'object'
        additionalProperties:
          $ref: '#/definitions/Job'
        patternProperties:
          '\\W':
            # These shouldn't exist at all, so we just try to match them against something that always fails.
            'enum': [undefined]
      events:
        type: 'object'
        additionalProperties:
          $ref: '#/definitions/Event'
        patternProperties:
          '\\W':
            # These shouldn't exist at all, so we just try to match them against something that always fails.
            'enum': [undefined]
      adventures:
        type: 'object'
        additionalProperties:
          $ref: '#/definitions/Adventure'
        patternProperties:
          '\\W':
            # These shouldn't exist at all, so we just try to match them against something that always fails.
            'enum': [undefined]
      times:
        type: 'array'
        items:
          type: 'string'
          minLength: 1
        minItems: 1
      dailyChoices:
        type: 'object'
        additionalProperties:
          type: 'object'
          required: ['from', 'descriptions']
          properties:
            from: {type: 'string'}
            descriptions:
              type: 'object'
              additionalProperties: {type: 'string'}
  return dataSchema
