Data.pseudoEvents.Refresh = -> # A special event, that, when it would be applied, instead refreshes the last event on screen.
  content = document.getElementById 'content'
  content.removeChild content.lastElementChild

  todayEvents = g.history[g.history.length - 1]
  label = todayEvents[todayEvents.length - 1]
  appendEvent(getEvent(label), null, true)

Data.pseudoEvents.Back = -> # A special event, that, when it would be applied, instead removes the last event on screen and refreshes the previous one.
  content = document.getElementById 'content'
  content.removeChild content.lastElementChild
  content.removeChild content.lastElementChild

  todayEvents = g.history[g.history.length - 1]
  unless todayEvents.length >= 2
    throw Error("Can't use Back to go to a previous day")
  todayEvents.pop()
  label = todayEvents[todayEvents.length - 1]

  appendEvent(getEvent(label), null, true)

for type in ['events', 'randomEvents', 'jobs']
  for key, value of Data[type]
    # Use a while loop to support multiple extensions, in case the extended event hasn't already had its extension applied
    while value.ext
      ext = Data[type][value.ext]
      delete value.ext
      Object.defaults(value, ext)

window.drawHistory = ->
  content = document.getElementById 'content'
  for day, events of g.history when day > g.day - 5
    for label in events
      if text = drawEvent(getEvent(label))
        content.appendChild text
  setInteraction(true)
  smoothScroll(content.offsetHeight)
  return content

getEvent = (label)->
  return Data.events[label] or Data.randomEvents[label] or Data.jobs[label]

currentEvent = null # This is set in drawEvent. A bit of stateful dark magic to make event text()s cleaner. Using a global variable like this probably makes me a bad person. :D
window.options = (options = currentEvent.next)->
  unless options then throw new Error('No current event defined.')
  return (for label, option of options when conditionsMatch(option)
    drawChoice(label, option)
  ).join('')

options.toString = options

drawChoice = (label, option)->
  # A simple choice -> event.
  if typeof option is 'string'
    return """<button disabled onclick='applyEvent("#{option}", "#{label}")' title="#{describeEvent option}">#{label}</button>"""

  # A skill test. Render the widget.
  skillBonus = Math.floor(g.skills[option.skill] / 10)
  mainTitle = """#{describeUnion(option.result[0], option.result[1])}
  &nbsp;
  Check #{option.skill} (#{skillBonus}) + 2d6 vs #{option.diff}:
        #{describeDiff(option.result[0], option.result[1]).replace(/\n/g, '\n      ')}
  --------or--------
        #{describeDiff(option.result[1], option.result[0]).replace(/\n/g, '\n      ')}
  """

  if option.mood
    spendOptions = {}
    for i in [0 .. g.mood[option.mood]]
      spendOptions["#{i} #{option.mood}"] =
        title: "#{skillBonus} + #{i * 2} + 2d6 vs. #{option.diff}"
        click: """applyTest(#{JSON.stringify(option)}, "#{label}", #{i})"""

    return drawDropdown(label, mainTitle, spendOptions)
  else
    return """<button disabled onclick='applyTest(#{JSON.stringify(option)}, "#{label}")' title="#{mainTitle}">#{label}</button>"""


window.drawDropdown = (mainLabel, mainTitle, options)->
  buttons = for label, option of options
    """<button disabled onclick='#{option.click}' title="#{option.title}">#{label}</button>"""

  return """<div class="clickMenu" tabindex="0">
    <label class="disabled" title="#{mainTitle}">#{mainLabel}</label>
    <div class="clickMenu-content">#{buttons.join('\n')}</div>
  </div>"""

clamp = (a, min, max)->
  a = Math.max(a, Math.floor(min))
  a = Math.min(a, Math.ceil(max))
  return a

appendEvent = (event, selectedLabel, noScroll)->
  content = document.getElementById 'content'
  setSelectedLabel(selectedLabel, content.lastElementChild)

  text = drawEvent(event)
  if text
    setInteraction(false)
    content.appendChild text
    setInteraction(true)

    if content.children.length > 20
      content.removeChild(content.firstChild)

    unless noScroll
      header = document.getElementsByTagName('header')[0]
      smoothScroll(text.offsetTop - 40 - header.scrollHeight)

setSelectedLabel = (label, div)->
  unless div then return
  for button in div.getElementsByTagName('button') when button.innerHTML is label
    button.classList.add('clicked')

window.applyEvent = (label, selectedLabel)->
  if Data.pseudoEvents[label]
    return Data.pseudoEvents[label](selectedLabel)

  event = getEvent(label)
  appendEvent(event, selectedLabel)

  applyEffects(event.effects)
  g.events[label] = g.day
  g.history[g.day].push(label)

  if next = chooseNextEvent(event)
    applyEvent(next)

window.applyTest = (test, selectedLabel, spent)->
  e = {}
  e[test.mood] = spent
  applyEffects(e)

  result = 2 * spent
  result += Math.floor(g.skills[test.skill] / 10)
  result += Math.ceil(Math.random() * 6) + Math.ceil(Math.random() * 6)

  label = if result >= test.diff then test.result[0] else test.result[1]

  return applyEvent(label, selectedLabel)

applyEffects = (effects)->
  unless effects then return

  for mood, amount of effects.mood
    opposed = Data.opposedMood[mood]
    g.mood[mood] = clamp(g.mood[mood] + amount, 0, 10 - g.mood[opposed])
  for skill, amount of effects.skills
    if g.mood[amount]? then amount = 2 + skillBonus(mood)
    g.skills[skill] = clamp(g.skills[skill] + amount, 0, 100)
  for key, value of effects.set
    if typeof value is 'object'
      for subKey, subValue of value
        g[key][subKey] = subValue
    else
      g[key] = value
  effects.call?()

skillBonus = (mood)-> 2 + Math.floor(g.mood[mood] / 3)

window.describeEvent = (label)->
  event = getEvent(label)
  if not event then return ''

  text = []
  if event.title
    text.push event.title
  for type in ['mood', 'skills'] when event.effects?[type]
    for item, amount of event.effects[type]
      if g.mood[amount]?
        text.push "#{item} +#{skillBonus(amount)} (#{amount})"
      else
        text.push "#{item} +#{amount}"
  return text.join('\n')

describeUnion = (label1, label2)->
  event1 = getEvent(label1)
  event2 = getEvent(label2)

  text = []
  if event1.description and event1.description is event2.description
    text.push event1.description.call(event)
  for type in ['mood', 'skills'] when event1.effects?[type] and event2.effects?[type]
    for item, amount of event1.effects[type] when event2.effects[type][item] is amount
      if g.mood[amount]?
        text.push "#{item} +#{skillBonus(amount)} (#{amount})"
      else
        text.push "#{item} +#{amount}"
  return text.join('\n')

describeDiff = (label1, label2)->
  event1 = getEvent(label1)
  event2 = getEvent(label2)

  text = []
  if event1.description and event1.description isnt event2.description
    text.push event1.description.call(event)
  for type in ['mood', 'skills'] when event1.effects?[type]
    for item, amount of event1.effects[type] when event2.effects?[type]?[item] isnt amount
      if g.mood[amount]?
        text.push "#{item} +#{skillBonus(amount)} (#{amount})"
      else
        text.push "#{item} +#{amount}"
  return text.join('\n')

describeTest = (test)->
  skillRating = Math.floor(g.skills[test.skill] / 10)

  return """Test #{test.skill}: #{skillRating} + 2d6 vs. #{test.diff}
  +2 for each #{test.mood} spent (have #{g.mood[test.mood]})"""

drawEvent = (event)->
  console.log event
  div = document.createElement('div')
  unless event.text then return

  currentEvent = event
  text = describeEffects(event.effects) + event.text.call(event)
  unless text then return

  div.innerHTML = '<div>' + text.split('\n\n').filter(Boolean).join('</div><div>') + '</div>'
  return div

describeEffects = (effects)->
  unless effects?.mood or effects?.skills then return ''
  text = []
  for type in ['mood', 'skills'] when effects[type]
    for item, amount of effects[type]
      if g.mood[amount]?
        text.push "#{item} +#{skillBonus(amount)} (#{amount})"
      else
        text.push "#{item} +#{amount}"
  return """<div class="effects">#{text.join(', ')}</div>"""

setInteraction = (interaction)->
  content = document.getElementById('content')
  unless content.lastElementChild then return

  for button in content.lastElementChild.getElementsByTagName('button')
    button.disabled = not interaction
  for label in content.lastElementChild.getElementsByTagName('label')
    label.classList.toggle('disabled', not interaction)
  return

chooseNextEvent = (event)->
  if event.next is false
    return false
  if event.next
    if typeof event.next is 'string' and conditionsMatch(event.next)
      return event.next
    else if event.nextType
      return textType[event.nextType](event.next.filter(conditionsMatch))
  else
    g.upcoming.shift()

nextType =
  first: (e)-> e[0]
  random: (e)-> e[Math.floor(Math.random() * e.length)]
  unused: (e)-> events.filter((e)-> not g.events[e])[0]
  leastRecent: (e)-> events.sort(sortLeastRecent)[0]

window.conditionsMatch = (label)->
  conditions = getCond(label)
  unless conditions then return true

  for type in ['mood', 'skills']
    for key, value of conditions[type]
      if g[type][key] < value[0] or g[type][key] > value[1] then return false

  unless conditionsEventMatch(conditions.events) then return false
  unless conditionsEventMisc(conditions.misc) then return false

  return true

getCond = (label)-> (Data.events[label] or Data.randomEvents[label] or Data.jobs[label])?.conditions

conditionsEventMatch = (events)->
  for key, test of events
    value = g.events[key]
    if test is true and not value? then return false
    if test is false and value? then return false
    if typeof test is 'number' and not numberMatch(value, test) then return false
  return true

conditionsEventMisc = (misc)->
  for key, value of misc
    if value[0] is '!' and g[key] is value.substr(1) then return false
    else if g[key] isnt value then return false

  return true

numberMatch = (value, test)->
  if test >= 0
    unless value >= g.day - test then return false
  if test < 0
    if value >= g.day + test then return false
