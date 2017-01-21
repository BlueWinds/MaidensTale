months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

window.domReady = ->
  if window.location.hash is '#dump' then return dump()
  last = Object.keys(localStorage).map((key) -> parseFloat(key) or 0).sort().pop()
  try
    newGame(JSON.parse(localStorage[last]))
  catch e
    newGame()

window.newGame = (data = {})->
  content = document.getElementById 'content'
  while content.firstChild
    content.removeChild(content.firstChild)

  # We have to special case the very first release, since it didn't include a version number at all.
  if data.day? and not data.version?
    data.version = 0

  window.g = Object.defaultsDeep data, Game
  while g.version < Game.version
    Data.updates[g.version]()
    g.version++
  drawHistory()

window.saveGame = ->
  localStorage.setItem Date.now(), JSON.stringify(g)
  document.getElementById('save').classList.add('saved')
  setTimeout ->
    document.getElementById('save').classList.remove('saved')
  , 800

window.loadGame = (key)->
  if key
    newGame(JSON.parse localStorage[key])
  else if document.getElementsByClassName('load').length is 0 and document.getElementsByClassName('you').length is 0
    window.applyEvent('LoadGame')

window.aboutYou = ->
  unless document.getElementsByClassName('load').length is 0 and document.getElementsByClassName('you').length is 0
    return
  applyEvent('AboutYou')

window.deleteGame = (key)->
  delete localStorage[key]
  row = document.getElementById 'save-' + key
  row.parentNode.removeChild(row)

window.importGame = (file)->
  unless file then return
  reader = new FileReader()
  reader.onload = ->
    try
      data = JSON.parse(reader.result)
      newGame(data)
    catch e
      console.log(e)
  reader.readAsText file

Data.events.LoadGame = # This is a special event, which, when it would be displayed, instead removes the previously displayed div.
  text: ->
    saves = for key in Object.keys(localStorage).sort().reverse()
      date = new Date parseInt(key, 10)
      unless date.getTime() then continue
      try
        save = JSON.parse(localStorage[key])
      catch e
        delete localStorage[key]
        continue
      blob = new Blob [localStorage[key]], {type: 'text/plain'}
      """<tr id="save-#{key}">
        <td>#{saveLabel(save)}</td>
        <td>#{months[date.getMonth()]} #{date.getDate()}, #{date.getHours()}:#{date.getMinutes()}</td>
        <td>
          <button onclick="loadGame(#{key})">Load</button>
          <a class="export" href="#{URL.createObjectURL(blob)}" download="#{saveLabel(save, true)}.json">Export</a>
          <a onclick="deleteGame(#{key})">Delete</a>
        </td>
      </tr>"""

    """<table class="load">
      <tr><td colspan="3">#{options}<input type="file" onchange="importGame(this.files[0])"></td></tr>
      #{saves.join('\n')}
    </table>
    """
  next:
    Cancel: 'Back'

dump = ->
  window.g = Object.defaultsDeep {}, Game
  g.history = [[]]
  for type in ['events', 'randomEvents', 'jobs']
    for key, value of Data[type]
      g.history[0].push key
  drawHistory(true)
