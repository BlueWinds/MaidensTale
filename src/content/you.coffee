Data.events.AboutYou =
  text: ->
    alreadySeenMoods = {}
    moodSliders = for label, rating of g.mood when not alreadySeenMoods[label]
      opposed = Data.opposedMood[label]
      alreadySeenMoods[opposed] = true
      "<div><label>#{label}<br>#{opposed}</label>#{moodSlider(rating, g.mood[opposed])}</div>"

    skillSliders = ("<div><label>#{label}</label>#{skillSlider(rating)}</div>" for label, rating of g.skills)

    """
      You are #{g.name}, property of #{mistress} #{Masterson}, bought and paid for at an auction #{dayToTimeString(g.day)} ago. You stand a delicate 5' 3", your slight frame weighing in at 110 lbs. You have shoulder-length straight hair and are currently wearing #{if g.events.NamingDone? then 'nothing at all' else clothesDesc[g.clothes]}. Before becoming a slave, you were a #{g.background} #{g.profession}.

      <div class="sliders stats">#{moodSliders.join('')}</div>

      <div class="sliders">#{skillSliders.join('')}</div>

      #{options}
    """
  next:
    Back: 'Back'

clamp = (value, min, max)-> Math.max(min, Math.min(max, value))

moodSlider = (mood, opposed)->
  moodW = clamp(mood * 10, 3, 97)
  opposedW = clamp(opposed * 10, 3, 97)
  """<slider style="width: 100px" title="#{mood} / #{opposed}">
    <div class="bottom" style="width: #{Math.min(50 - moodW, 100 - moodW - opposedW)}px"></div>
    <div class="bottom mood" style="width: #{moodW}px"></div>
    <div class="top opposed" style="width: #{opposedW}px"></div>
  </slider>
  """

skillSlider = (skill)->
  """<slider class="right" title="#{skill}">
    <div class="top bottom skill" style="width: #{skill}px"></div>
  </slider>"""

clothesDesc =
  Sundress: 'wearing a skimpy floral sundress'
  Jeans: 'wearing skinny jeans and an x-backed teal blouse'
  Miniskirt: 'wearing a hip-hugging black miniskirt and low cut red blouse'

dayToTimeString = (day)->
  years = Math.floor(day / 365)
  months = Math.floor((day - years * 365) / 30)
  days = day - years * 365 - months * 30
  return if years
    if years > 1 then "#{years} years" else 'more than a year'
  else if months
    if months > 1 then "about #{months} months" else 'more than a month'
  else
    if days > 1 then "#{days} days" else 'one day'
