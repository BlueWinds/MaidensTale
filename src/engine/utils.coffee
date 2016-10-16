Object.defineProperty Array.prototype, 'wordJoin', {value: ->
  if @length > 1
    str = @slice(0, -1).join(', ')
    str += ' and ' + @[@length - 1]
    return str
  return @join('')
}

Object.values = Object.values or (o)-> Object.keys(o).map((k)-> o[k])

Object.firstValue = (obj)->
  return obj[Object.keys(obj)[0]]

Object.pickBy = (obj, filter)->
  n = {}
  for key, value of obj when filter(value, key)
    n[key] = value
  return n

Object.defaults = (object, origin)->
  for key, value of origin when not object[key]?
    object[key] = value
  return object

Object.defaultsDeep = (object, origin)->
  for key, value of origin
    if value instanceof Array
      if object[key]? then continue
      object[key] = []
      Object.defaultsDeep(object[key], value)
    else if typeof value is 'object'
      unless object[key]? then object[key] = {}
      unless typeof object[key] is 'object' then continue
      Object.defaultsDeep(object[key], value)
    else if not object[key]?
      object[key] = value

  return object

Math.sum = (array)->
  sum = 0
  for v in array then sum += v
  return sum

window.smoothScroll = (targetY)->
  startY = window.scrollY

  # Default is 2000 px / second, but apply a min of 100ms and max of 800ms
  duration = Math.max(100, Math.min(800, Math.abs(scrollY - targetY) / 2000 * 1000))
  # outSine
  easing = (pos)-> Math.sin(pos * (Math.PI / 2))
  # inOutSine
  # easing = (pos)-> (-0.5 * (Math.cos(Math.PI * pos) - 1))

  startTime = null
  tick = (time)->
    startTime or= time
    p = Math.min(1, (time - startTime) / duration)
    scroll = easing(p)
    window.scrollTo(0, startY + ((targetY - startY) * scroll))

    if p < 1
      requestAnimationFrame(tick)

  # Call once to get it started.
  requestAnimationFrame(tick)
