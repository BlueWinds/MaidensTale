findEvent = ->
#   if Math.random() > Data.dailyEventChance then return ''

  possibleEvents = for label of Data.randomEvents when conditionsMatch(label)
    label
  console.log possibleEvents
  index = Math.floor(Math.random() * possibleEvents.length)
  return possibleEvents[index]

Data.events.PlanDay =
  text: ->
    times = for time, index in Data.times
      desc = Data.jobs[g.plans[index]].description
      drawDropdown(desc, describeEvent(g.plans[index]), findJobs(time))

    choices = for choice, from of Data.dailyChoices when Object.values(g[from]).filter(Boolean).length
      drawDropdown(g[choice], '', findChoices(choice, from))

    """
      <h3>Day #{g.day}</h3>

      <table>
        <tr><th>#{Object.keys(Data.dailyChoices).join('</th><th>')}</th></tr>
        <tr><th>#{choices.join('</th><th>')}</th></tr>
        <tr><th>#{Data.times.join('</th><th>')}</th></tr>
        <tr><th>#{times.join('</tdh><th>')}</th><th>--> #{options}</th></tr>
      </table>
    """
  next:
    Ready: 'StartDay'

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
      title: ''
      click: """setDailyChoice("#{set}", "#{key}")"""
  return availableChoices

window.setDailyChoice = (set, choice)->
  g[set] = choice
  Data.pseudoEvents.Refresh()

Data.pseudoEvents.StartDay = ->
  randomEvent = findEvent()
  eventTime = Data.randomEvents[randomEvent]?.time
  console.log randomEvent, eventTime
  for time, index in Data.times
    g.upcoming.push(g.plans[index])
    if eventTime is time then g.upcoming.push(randomEvent)
  g.upcoming.push('PlanDay')

  g.day++
  g.history.push []
  applyEvent(g.upcoming.shift())
