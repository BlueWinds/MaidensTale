Data.jobs.ExploreMansion =
  description: 'Explore the mansion'
  time: 'Evening'
  conditions:
    misc:
      confined: '!cell'
  effects:
    skills:
      Memorization: 'Despair'
  selectNext: 'random'
  next: [
    'ExploreNothing'
    'ExplorePool'
    'ExploreKitchen'
    'ExploreCloset'
    'ExploreLibrary'
    'ExploreRecordingStudio'
    'ExploreStevensRoom'
    'ExploreSexToys'
    'ExploreSorley'
  ]


Data.events.ExploreNothing =
  text: ->"""
    You wander around a bit, poking your head into various rooms, but don't manage to find anything interesting. All places you've been before, locked doors and sound coming from inside rooms you don't feel like interrupting lest you be required to join in and lose the rest of your day as someone's entertainment.
  """

Data.events.ExplorePool =
  conditions:
    events:
      ExplorePool: false
  text: -> """
    You've discovered... a pool. Why did no one tell you there was an indoor pool? It took a bit of finding - the thing is underground, no windows and an unmarked door. The lack of windows is an intentional part of the effect - blue and green light undulates slowly across the ceiling, giving the whole room the effect of being underwater. Pale blue tiles in rippling patterns slope downward into the water - there's no hard edge to the pool, just a steady slope down towards the deep end. No one's here at the moment, but there's a rack of fresh white towels at each side waiting use.

    You take note. It's a beautiful place, very relaxing. Even if not going for a swim you might like to spend some time here.
  """

Data.events.ExploreKitchen =
  conditions:
    events:
      ExploreKitchen: false
  text: -> """
    You found the kitchen. That's great. What's less great is being chased around by an angry woman with a ladle. Hiding in an alcove along one of the hallways, you hear pounding steps. Oh god, she's found you again.

    Someday you'll have to try visiting without sticking your fingers in a bowl of delicious and beautifully decorated pudding. Totally worth it. You break cover and flee.
  """

Data.events.ExploreCloset =
  conditions:
    events:
      ExploreCloset: false
  text: -> """
    In addition to the normal closets set aside for your use at any time of day or night (it's rather embarrassing, how many pairs of panties you've ruined or lost since coming here), you've found the storage room.

    It's huge. You don't dare take anything out of it - you're not allowed more than the outfits the overseers have chosen to give you - but given how empty it is, you doubt anyone would mind if you spent a few hours... practicing. Yes, that's what you'll be doing. Definitely not drooling, that would be undignified. You can totally... practice... with that fur coat over there. Or even better, baggy jeans and a tshirt. You didn't think this country <i>made</i> clothes that didn't highlight a woman's sexuality.
  """

Data.events.ExploreLibrary =
  conditions:
    events:
      ExploreLibrary: false
  text: -> """
    The library, oddly enough, is not very extensive. Oh, sure, when you stumble across a room filled floor to ceiling with books it's more than <i>you've</i> ever owned, but compared to the decadence displayed everywhere else in the mansion, one room tucked away in a corner of the fourth floor is hardly what you'd expected.

    Still, books. It seems well enough used - no dust to be found - but you can probably squirrel yourself up in one of those comfy overstuffed chairs and do some reading, if you like. Or study, if that's your thing. Or at take a nap.
  """

Data.events.ExploreRecordingStudio =
  conditions:
    events:
      ExploreRecordingStudio: false
  text: -> """
    There's a recording studio. Of course there's a recording studio. It's not big, just enough for a couple of chairs, but it's soundproof, full of high quality electronics, and there's a closet full of beat up old instruments and songbooks. It must double as a practice room as well.

    The place doesn't feel like it gets that much use, so it's probably safe to borrow it whenever you like. The worst they can do is... well, no, you don't want to think about the worst they can do to you. The worst they're <i>likely</i> to do is kick you out.
  """

Data.events.ExploreStevensRoom =
  conditions:
    events:
      ExploreStevensRoom: false
  text: -> """
    You stumble across a great secret - Mr. Stevens' room. Well, it's probably not actually a secret - there is a sign on the door after all - but it feels like one. You stand there staring at the door dumbly for a moment before it opens.

    Mr. Stevens is as surprised to see you as you are to see him. He blinks, then steps back into his room, gesturing you to follow.

    He's decorated it much like you expected, from what little you know of him. There's a fireplace in one wall, with a huge leather chair facing it, flanked by bookshelves. The speckled grey and black tiled floor matches his mustache. His bed is spacious, neatly made. Everything is perfectly in its place.

    "#{g.name}. Why are you here?"

    You take a moment to formulate a response that won't get you punished - you haven't done anything wrong, you know that, but you want to be sure he knows it too. "I didn't know your room was here, I was just passing by."

    He frowns. Not, it takes you a moment to realize, at the content of your words - he's frowning at your slouching stance. "You look like a slob, and like a free woman. Please return another evening and we'll see what we can do to fix that. But for now just go away. I'm busy."

    You flee.
  """

Data.events.ExploreSexToys =
  conditions:
    events:
      ExploreSexToys: false
  text: -> """
    While you do get fucked a lot, sometimes it would be nice to take your time, go at your own pace... or maybe practice deep-throating things so you don't feel so much like throwing up next time someone skullfucks you.

    There are sex toys everywhere in this building. Like, you can't open a closet without finding a pair of vibrating dildos and a butt plug and maybe a blindfold. The trouble, though, is finding a place to use them in private, where the sounds you make won't draw someone wanting to take advantage of you.

    But! You've just found a spot, a nice little balcony on the second floor (so no one inside can hear you) sheltered by trees (so no one outside can see you). And, of course, there's a chest full of naughty objects just waiting for use. Because going fifteen feet inside to fetch... a squirt gun filled with lube and a vibrator with a smiley face?... might ruin the mood. You close the chest again and try not to think about who decided to put it there.
  """

Data.events.ExploreSorley =
  conditions:
    events:
      ExploreSorley: false
  text: -> """
    "Hello, my cute little strumpet," a voice whispers in your ear.

    You jump and draw back. How the hell did you not hear Sorley come up behind you - it's not like the hallway is noisy, this time of evening (or ever, for that matter).

    "I see you've managed to find my bedroom," he gestures to the door you just passed, unmarked, still held open with his toe. He's your least favorite of the overseers. Something about the way he stares... "Come in." Damn.

    A flat TV takes up most of the wall opposite a large bed, rumpled sheets and a pair of jeans hanging off the side. An empty fast food bag sits next to his laptop on a cluttered desk. The screensaver is a slideshow of nude women, and with a start, you realize that one of the photos is of <i>you</i>. Oh dear.
  """
