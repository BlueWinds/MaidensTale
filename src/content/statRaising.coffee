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
#     'ExploreSorley'
  ]


Data.events.ExploreNothing =
  description: 'Explore the mansion'
  text: ->"""
    You wander around a bit, poking your head into various rooms, but don't manage to find anything interesting. All places you've been before, locked doors and rooms with sounds you don't feel like interrupting lest you be required to join in and lose the rest of your day as someone's entertainment.
  """

Data.events.ExplorePool =
  description: 'Explore the mansion'
  conditions:
    events:
      ExplorePool: false
  text: -> """
    You've discovered... a pool. Why did no one tell you there was an indoor pool? It took a bit of finding - the thing is underground, no windows and an unmarked door. The lack of windows is an intentional part of the effect - blue and green light undulates slowly across the ceiling, giving the whole room the effect of being underwater. Pale blue tiles in rippling patterns slope downward into the water - there's no hard edge to the pool, just a steady slope down towards the deep end. No one's here at the moment, but there's a rack of fresh white towels at each side awaiting use.

    You take note. It's a beautiful place, very relaxing. You might like to spend some time here even if you don't go for a swim.
  """

Data.events.ExploreKitchen =
  description: 'Explore the mansion'
  conditions:
    events:
      ExploreKitchen: false
  text: -> """
    You found the kitchen. That's great. What's less great is being chased around by an angry woman with a ladle. Hiding in an alcove along one of the hallways, you hear pounding steps. Oh god, she's found you again.

    Someday you'll have to try visiting without sticking your fingers in a bowl of delicious and beautifully decorated pudding. Totally worth it. You break cover and flee.
  """

Data.events.ExploreCloset =
  description: 'Explore the mansion'
  conditions:
    events:
      ExploreCloset: false
  text: -> """
    In addition to the two normal closets set aside for your use at any time of day or night (it's rather embarrassing how many pairs of panties you've ruined or lost since coming here), you've found the storage room.

    It's huge. You don't dare take anything out of it - you're not allowed more than the outfits the overseers have chosen to give you - but given how unoccupied it feels, you doubt anyone would mind if you spent a few hours... practicing. Yes, that's what you'll be doing. Definitely not drooling, that would be undignified. You can totally... practice... with that fur coat over there. Or even better, baggy jeans and a t-shirt. You didn't think this country even <em>made</em> clothes that didn't highlight a woman's sexuality.
  """

Data.events.ExploreLibrary =
  description: 'Explore the mansion'
  conditions:
    events:
      ExploreLibrary: false
  text: -> """
    The library, oddly enough, is not very extensive. Oh, sure, when you stumble across a room with walls covered floor to ceiling with books it's more than <em>you've</em> ever owned, but compared to the decadence displayed everywhere else in the mansion, one room tucked away in a corner of the third floor is hardly what you'd expected.

    Still, books. It seems well enough used - no dust to be found - but you can probably squirrel yourself up in one of those comfy overstuffed chairs and do some reading if you like. Or study, if that's your thing. Or at take a nap. You do that last one now.
  """

Data.events.ExploreRecordingStudio =
  description: 'Explore the mansion'
  conditions:
    events:
      ExploreRecordingStudio: false
  text: -> """
    There's a recording studio. Of course there's a recording studio. Silly to imagine there's a thing this estate isn't equipped for, no matter how unusual. It's not big, just enough for a couple of chairs, but it's soundproof, full of high quality electronics, and there's a closet full of beat up old instruments and songbooks. It must double as a practice room as well. The engineer's booth is empty.

    The place doesn't feel like it gets that much use, so it's probably safe to borrow it whenever you like. The worst they can do is... well, no, you don't want to think about the worst they can do to you. The worst they're <em>likely</em> to do is kick you out.
  """

Data.events.ExploreStevensRoom =
  description: 'Explore the mansion'
  conditions:
    events:
      ExploreStevensRoom: false
  text: -> """
    You stumble across a great secret - Mr. Stevens' room. Well, it's probably not actually a secret, given there is a sign on the door, but it feels like one. You stand there staring at the door dumbly for a moment before it opens.

    Mr. Stevens is as surprised to see you as you are to see him. He blinks, then steps back into his room, gesturing you to follow.

    It's decorated much like you expected, from what little you know of him. There's a fireplace in one wall flanked by bookshelves, with a huge leather chair facing it. The speckled grey and black tiled floor matches his mustache. His bed is spacious and neatly made. Everything is perfectly in its place.

    "#{g.name}. Why are you here?"

    You take a moment to formulate a response that won't get you punished - you haven't done anything wrong, you know that, but you want to be sure he knows it too. "I didn't know your room was here, I was just passing by."

    He frowns. Not, it takes you a moment to realize, at the content of your words - he's frowning at your slouching stance. "You look like a slob, and like a free woman. Please return another evening and we'll see what we can do to fix that. But for now just go away. I'm busy."

    You flee.
  """

Data.events.ExploreSexToys =
  description: 'Explore the mansion'
  conditions:
    events:
      ExploreSexToys: false
  text: -> """
    While you do get fucked a lot, sometimes it would be nice to take your time, go at your own pace... or maybe practice deep-throating things so you don't feel so much like throwing up next time someone skullfucks you.

    There are sex toys everywhere in this building. Like, you can't open a closet without finding a pair of vibrating dildos and a butt plug and maybe a blindfold. The trouble though is finding a place to use them in private, where the sounds you make won't draw someone wanting to take advantage of you.

    But! You've just found a spot, a nice little balcony on the second floor (so no one inside can hear you) sheltered by trees (so no one outside can see you). And, of course, there's a chest full of naughty objects just waiting for use. Because going fifteen feet inside to fetch... a squirt gun filled with lube and a vibrator with a smiley face?... might ruin the mood. You close the chest again and try not to think about who decided to put it there.
  """

# Data.events.ExploreSorley =
#   description: 'Explore the mansion'
#   conditions:
#     events:
#       ExploreSorley: false
#   text: -> """
#     "Hello, my cute little strumpet," a voice whispers in your ear.
#
#     You jump and draw back. How the hell did you not hear Sorley come up behind you - it's not like the hallway is noisy, this time of evening (or ever, for that matter).
#
#     "I see you've managed to find my bedroom," he gestures to the door you just passed, unmarked, still held open with his toe. He's your least favorite of the overseers. Something about the way he stares... "Come in." Damn.
#
#     A flat TV takes up most of the wall opposite a large bed, rumpled sheets and a pair of jeans hanging off the side. An empty fast food bag sits next to his laptop on a cluttered desk. The screen saver is a slide show of nude women, and with a start, you realize that one of the photos is of <em>you</em>. Oh dear.
#   """

Data.jobs.PracticeBaking =
  description: 'Baked goods!'
  conditions:
    events:
      ExploreKitchen: true
    misc:
      confined: '!cell'
  time: 'Night'
  effects:
    skills:
      Baking: 'Humility'
  selectNext: 'random'
  next: [
    'PracticeBakingCupcakes'
    'PracticeBakingBread'
    'PracticeBakingCheesecake'
  ]

Data.events.PracticeBakingCupcakes =
  description: 'Baked goods!'
  text: -> """
    With the hustle and bustle of the day concluded, you poke your head around the corner, cautiously checking if the fearsome cook is still present. She isn't. Now's your chance - time to make cupcakes!

    The kitchen is quite large, providing as it does for not only the household staff, but also dozens of field hands working the grounds and nearby farm land. You spend nearly an hour rummaging through pantries, trying to locate all the necessary ingredients, before you finally have everything laid out and ready for use.

    Flour. Cocoa powder. Baking soda. Salt. Butter. Sugar. Eggs. Vanilla. Buttermilk. You mix, stir and pour, then put the batter in the oven to cook.

    Butter. Sugar. Caramel sauce. Milk. Vanilla. You beat the frosting with an electric mixer until it stands stiff in the bowl. After spreading it over the top of the piping hot cakes, you drizzle a little more caramel sauce over it, then sprinkle a pinch of sea salt over everything.

    You take three for yourself, two for Robbin, one for Tits and leave the rest in the kitchen for who ever's lucky enough to find them.
  """

Data.events.PracticeBakingBread =
  ext: 'PracticeBakingCupcakes'
  text: -> """
    Taking a bit of break from the demanding presence of so many people, you slip down to the kitchen, expecting it to be deserted at this time of night. You're wrong, however - though all the assistants are long gone, the cook still remains, a scary lady known for chasing people around the mansion with her ladle and making them <em>wish</em> she were wielding a whip instead.

    She sees you enter and motions you to come over. It's too late to flee, so you comply, but fortunately she seems in a good mood tonight. "#{g.name}, right? Silly name for a girl like you, I never know what the #{mistress} is thinking when she picks things like that. Come over here and measure out the flour for me, will you?"

    Drafted into her service, you don't have time for any projects of your own. Measuring, mixing, kneading dough, and rolling out biscuits, you help her prepare for tomorrow in pleasant almost-silence, interrupted only by the cook's occasional orders and gentle corrections. You learn a great deal.
  """

Data.events.PracticeBakingCheesecake =
  ext: 'PracticeBakingCupcakes'
  text: -> """
    You have a sweet tooth. After pondering a raid on the pantry, you instead settle on something more ambitious - you're going to make yourself a cheesecake. Down to the kitchens you go.

    Given the time of night, the place is almost empty when you arrive, only a single servant remaining to finish up the dishes from dinner. You give him a friendly nod, reassure him that you'll clean up after yourself, and begin looking for a recipe book. After turning down three options, you eventually settle on one to your liking.

    Heavy with rich cream cheese, a bit of tang from sour cream, with strawberry sauce poured over the top - it sounds perfect, and your mouth is watering just thinking about it. The refrigerator disappoints, however, giving you only four of the necessary six packages of cream cheese. Not to be deterred, you substitute in plain yogurt instead, adding a bit of extra butter to make up for the missing richness.

    You stay up later than you should waiting for it to finish baking and then cool in the refrigerator, but it's worth the wait. It comes out fantastic. You set aside a slice with Robbin's name on it (poor girl needs a bit more flesh on her bones), then leave the rest in the refrigerator for anyone else lucky enough to find it.
  """

Data.jobs.PracticeInstruments =
  description: 'Violin lessons'
  conditions:
    events:
      ExploreRecordingStudio: true
    misc:
      confined: '!cell'
  time: 'Evening'
  effects:
    skills:
      Instruments: 'Spirit'
  selectNext: 'random'
  next: [
    'PracticeInstrumentsWendy'
    'PracticeInstrumentsAlone'
    'PracticeInstrumentsAudience'
  ]

Data.events.PracticeInstrumentsWendy =
  description: 'Violin lessons'
  text: -> """
    You remember, back to a former life. Violin lessons. It seems so long ago now, but the instruments you saw leaning up in the recording studio stirred an interest you'd almost forgotten about. Having a few hours before dinner, you decide to spend them seeing just how rusty your skills have gotten.

    As you approach, a you realize the studio's already occupied. The door is ajar, and the sounds of warm up slurs and long open strings draw you closer. Through the half open door you see Wendy, violin tucked against her chin as she travels uncertainly through some very basic exercises.

    You're about to turn away when she spots you. The music falters, and for a moment you're worried she's going to shout at you. Instead she gestures you in.

    "This is #{g.name}," Wendy introduces you. She's one of the overseers, and in your opinion, one of the less pleasant ones. She's smiling at you right now, but that's no surety that she won't viciously punish you for hearing her falter at some later date.

    Her teacher is an elderly man, tall and willowy, fragile enough that he might blow away in a stiff breeze. "How do you do, miss. Would you like to join us?" He gestures to a battered old practice instrument laying in the corner.

    You thank him and collect it, trying not to catch Wendy's eye. He asks you how much you know, and soon you're performing exercises of your own. You're surprised how fair he is to you, even though you're a slave and not really his student, but he divides his attention evenly between the two of you.

    By the end of the lesson, it's apparent that you're a more apt student than Wendy. You hope she doesn't bear a grudge.
  """

Data.events.PracticeInstrumentsAlone =
  ext: 'PracticeInstrumentsWendy'
  text: -> """
    You remember back to a former life. Violin lessons. It seems so long ago now, but the instruments you saw leaning up in the recording studio stirred an interest you'd almost forgotten about. Having a few hours before dinner, you decide to spend them seeing just how rusty your skills have gotten.

    The room is dark and empty as you approach. You slip inside and pull the door closed, going over to the closet holding instruments. There's two violin cases here, one polished and expensive looking, the other battered and fraying around the edges. You grab the cheap one.

    The instrument inside is well used, but also well loved and well cared for. You tighten the bow and get started.
  """

Data.events.PracticeInstrumentsAudience =
  ext: 'PracticeInstrumentsWendy'
  text: -> """
    On the way to practice violin in the recording studio you gather an audience. It's impossible to dissuade Robbin - protestations that you're in poor practice, that you're only going to be doing exercises tonight and that there's not much room only convince her further that you're hiding something wonderful behind false modesty. You shake your head at her enthusiasm and allow her to come.

    While you tune the practice violin and tighten the bow, she plops herself down on the other chair in the room and draws her legs up to her chest.

    You begin practicing, sure that she'll get bored soon and see herself out. She doesn't. Robbin listens raptly, chin on her knees, happy smile on her lips.
  """

Data.jobs.PracticeEtiquette =
  description: "Mr. Stevens' lessons"
  conditions:
    events:
      ExploreStevensRoom: true
    misc:
      confined: '!cell'
  time: 'Night'
  effects:
    skills:
      Etiquette: 'Hope'
  selectNext: 'random'
  next: [
    'PracticeEtiquetteMadam'
    'PracticeEtiquettePosture'
    'PracticeEtiquetteNames'
  ]

Data.events.PracticeEtiquetteMadam =
  description: "Mr. Stevens' lessons"
  text: -> """
    You finally take Mr. Stevens up on his offer, to help teach you the things expected of of a slave here in Anglan. While everyone seems willing to consider it cute rather than insulting due to the fact that you're not a native, there's something to be said for not sticking out like a sore thumb because you said the wrong thing to the wrong person.

    "Let's start with the way you called Ms. Landel 'ma'am' the other day. It was inappropriate. I can ma'am her. Joel can ma'am her. You and Robbin cannot - you should use the full two syllables, madam, at all times with someone of high rank. You think it's silly, do you? That such class distinctions are nonsense? Well, I must admit, I can't blame you. I find the customs from your nation quite odd as well - it makes less than no sense that you thank everyone for every thing."

    Ranting about the uselessness of please and thank you aside, you do learn a good deal from Mr. Stevens. You'll be less likely to embarrass yourself at future social functions.
  """

Data.events.PracticeEtiquettePosture =
  ext: 'PracticeEtiquetteMadam'
  text: -> """
    Mr. Stevens' room is exactly as you remember, comfortable and old fashioned, with an understated sort of elegance. He has pretensions.

    You only have a moment to study the room, though, before your lesson begins. Tonight he seems intent on teaching you how to stand properly. At first you're put off by the thought that you should need to be taught something silly like how to stand, but by the end of the evening your view has changed. Now your legs and back both <em>ache</em> at the thought that you need to be taught how to stand properly.

    You understand where he's coming from. It does look better. It even feels better, when your posture improves. But it will take a while for muscles to adjust to a new standard.
  """

Data.events.PracticeEtiquetteNames =
  ext: 'PracticeEtiquetteMadam'
  text: -> """
    For once, Mr. Stevens isn't in his room when you knock for a lesson. There is, however, an envelope on the floor in front of his door with your name on it.

    <em>#{g.name}, here is a list of all the nobility that #{Ms}. #{Masterson} regularly invites to parties and other events, along with their dependents, positions, and other relevant information. Review it. Memorize it. Remember it. I will test you on your knowledge next week, and you will be punished severely if you ever confuse Mr. Thesal with Mr. Redrick again in my hearing.
  """
