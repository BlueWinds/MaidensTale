findEvent = ->
  if Math.random() > Data.dailyEventChance then return ''

  possibleEvents = for label of Data.randomEvents when conditionsMatch(label)
    label
  index = Math.floor(Math.random() * possibleEvents.length)
  return possibleEvents[index]

Data.events.PlanDay =
  text: ->
    choices = for choice, info of Data.dailyChoices when Object.values(g[info.from]).filter(Boolean).length
      drawDropdown(g[choice], info.descriptions[g[choice]], findChoices(choice, info.from))

    times = for time, index in Data.times
      possibleJobs = findJobs(time)
      choice = if conditionsMatch(g.plans[index]) then g.plans[index] else Object.keys(possibleJobs)[0]
      drawDropdown(Data.jobs[choice].description, describeEvent(choice), possibleJobs)

    possibleAdventures = findAdventures()
    adventures = if possibleAdventures
      currentAdventure = if adventureMatch(g.adventure) then g.adventure else Object.firstValue(possibleAdventures).label
      currentAdventure = Data.adventures[currentAdventure]
      """
        <tr><th>&nbsp;</th></tr>
        <tr><th colspan="#{times.length}">Adventures</th><th></th></tr>
        <tr>
          <th colspan="#{times.length}">#{drawDropdown(currentAdventure.description, describeAdventure(currentAdventure), possibleAdventures)}</th>
          <th>--> <button title="Start this adventure" onclick="Data.pseudoEvents.StartAdventure()">Adventure</button></th>
        </tr>
      """
    else ""

    """
      <h3>Day #{g.day} #{choices.join(' ')}</h3>

      <table>
        <tr><th>#{Data.times.join('</th><th>')}</th></tr>
        <tr><th>#{times.join('</th><th>')}</th><th>--> <button class="preferred" title="Take these actions" onclick="Data.pseudoEvents.StartDay()">Normal day</button></th></tr>
        #{adventures}
      </table>
    """
  next: false

findJobs = (time)->
  possibleJobs = {}
  for label, event of Data.jobs when (event.time is time or event.time is 'Any') and conditionsMatch(label)
    possibleJobs[event.description] =
      click: """setDailyJob("#{time}", "#{label}")"""
      title: describeEvent(label)
  return possibleJobs

window.setDailyJob = (time, label)->
  g.plans[Data.times.indexOf(time)] = label
  Data.pseudoEvents.Refresh()

findChoices = (set, from)->
  availableChoices = {}
  for key, value of g[from] when value
    availableChoices[key] =
      title: Data.dailyChoices[set].descriptions[key]
      click: """setDailyChoice("#{set}", "#{key}")"""
  return availableChoices

window.setDailyChoice = (set, choice)->
  g[set] = choice
  Data.pseudoEvents.Refresh()

Data.pseudoEvents.StartDay = ->
  randomEvent = findEvent()
  eventTime = Data.randomEvents[randomEvent]?.time
  for time, index in Data.times
    if eventTime is time
      g.upcoming.push(randomEvent)
    else
      choice = if conditionsMatch(g.plans[index]) then g.plans[index] else Object.keys(findJobs(time))[0]
      g.upcoming.push(choice)
  g.upcoming.push('PlanDay')

  g.day++
  g.history.push []
  applyEvent(g.upcoming.shift())

findAdventures = ->
  adventures = {}
  for label, adventure of Data.adventures when adventureMatch(label)
    adventures[adventure.description] =
      title: describeAdventure(adventure)
      click: """setDailyChoice("adventure", "#{label}")"""
      label: label
  return if Object.keys(adventures).length then adventures else false

describeAdventure = (adventure)->
  steps = adventure.steps.map (step, index)->
    symbol = if g.events[adventure[index + 1]]? then '✓' else '○'
    "#{symbol} #{Data.events[step].description}"
  steps.pop() # Don't list the last step - it's just there to signal "the adventure is complete"
  return """#{steps.join('\n')}"""


Data.pseudoEvents.StartAdventure = (label)->
  g.upcoming.push('PlanDay')
  g.day++
  g.history.push []

  console.log Object.firstValue(findAdventures())
  g.adventure = if adventureMatch(g.adventure) then g.adventure else Object.firstValue(findAdventures()).label
  adventure = Data.adventures[g.adventure]
  nextStep = adventure.steps.find (e, i)->
    not g.events[adventure.steps[i + 1]]?
  applyEvent(nextStep)
