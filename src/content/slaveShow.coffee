Data.adventures.SlaveShow =
  conditions:
    day: [10, NaN]
  description: 'Slave Show'
  steps: [
    'ShowComingSoon'
    'ShowSoonPass'
  ]

Data.events.ShowComingSoon =
  description: 'Coming soon'
  text: ->"""
    "The #{mistress} has a job for you." Mr. Stevens gestures you to sit, which you do. He remains standing, pacing in front of you while you perch on the edge of the leather seat. He doesn't say anything more.

    "What..."

    "You're going to appear in the annual slave show," he cuts you off with an annoyed glare. "Last year #{she} took Robin, almost as new as you are now. It was humiliating, and I won't have you embarrassing us the same way." He says <em>us</em>, but you're pretty sure he just means <em>him</em>. You can be as embarrassed as you like and he won't much care. "She came within ten minutes. It was a disgrace."

    You wait silently. He doesn't seem in the mood for questions.

    "I would send Robin if it were my choice - she's learned much this past year - but it's not. #{Ms}. #{Masterson} has chosen you, and so you'll be the one to go. Here's the brochure - I expect you to do well in at least one event. Which will it be?"

    #{options}
  """
  next:
    'Orgasm Control':
      skill: 'Temperance'
      mood: 'Detachment'
      diff: 9
      result: ['ShowSoonSybian', 'ShowSoonFail']
    'Ballroom Dance':
      skill: 'Dancing'
      mood: 'Pride'
      diff: 9
      result: ['ShowSoonDance', 'ShowSoonFail']
    'Oil Wrestling':
      skill: 'Strength'
      mood: 'Spirit'
      diff: 9
      result: ['ShowSoonWrestle', 'ShowSoonFail']
    'Talent Show':
      skill: 'Singing'
      mood: 'Hope'
      diff: 9
      result: ['ShowSoonSing', 'ShowSoonFail']
    'Orgasm Count':
      skill: 'Endurance'
      mood: 'Despair'
      diff: 9
      result: ['ShowSoonSybian', 'ShowSoonFail']
    'Photo Shoot':
      skill: 'Makeup'
      mood: 'Humility'
      diff: 9
      result: ['ShowSoonPhotos', 'ShowSoonFail']

Data.events.ShowSoonSybian =
  text: ->"""
    "That event humiliated me last year. Prove it." He takes you firmly by the arm and half drags you down a flight of stairs to the dungeon. A sybian sits in the corner. "Undress." He pulls it to the center while you obey.

    You lower yourself onto the cool plastic, a little nervous about what you've just volunteered for. Why didn't you go for something nice and safe, like dancing? Dancing's fun.

    You've used a sybian before, and know what to expect as it starts rumbling underneath you, vibrating your whole body but most especially your clit. It feels fantastic. You close your eyes and savor the sensation, feeling the warmth building up inside you. You're about to cum when you remember that this isn't just for fun - you have to prove something. Whoops. These things are a lot less fun when the person controlling them is in a mean mood, and you suspect Mr. Stevens just might be.

    Yep. It suddenly pulses, spinning up into overdrive, pounding your clit and ripping a screaming orgasm from your mouth before you can even think to stop it.

    "Well," he laughs as you spasm. "you would have failed miserably if this were the Orgasm Control competition. Let's see how you can do about count, then. You have ten minutes to cum as many times as you can. Go."

    You thought it was already at high speed - turns out you were wrong. There are more settings.

    Shit. Should have tried dancing.
  """
  next: 'ShowSoonPass'

Data.events.ShowSoonDance =
  text: ->"""
    "Very well. Show me."

    You bite your lip, wondering what you've gotten yourself into. "Um... what sort of dance? Who will my partner be?"

    He shakes his head and grabs you by one wrist, dragging you out of the room and down the hall. "Tits!" He opens the door to one of the other sex slaves' bedrooms without waiting for a response. Tits scrambles to her feet as the door slams open.

    "You can dance, right? #{g.name} needs a partner for Ballroom at the competition this year."

    Tits is a woman in her thirties, long brown curls and olive skin, all too obviously named for her massive pair of knockers. They strain against her white t-shirt, and bounce whenever she moves too quickly. You try not to stare. "Yes sir. Um, #{g.name}, do you west coast swing?"

    You nod, and watch as she fumbles with the stereo on her dresser, dropping a CD. You don't have stereo in your room. You're jealous. Of the stereo, that is. You're not jealous at all of the way her chest shifts when she bends down to pick it up. That's lust you're feeling, not jealousy.

    By the time she gets the music started, Mr. Stevens is tapping his foot impatiently. You wonder what has him so riled up today, but are soon distracted by Tits. By Tits taking the lead, and twirling you experimentally, that is. Totally not by Tits' tits.

    Shit. Should have tried something safer, like orgasm count. You're good at cumming. Far easier than dancing with a partner you've never met under a stern glare while her tits keep threatening to wallop you in the face.
  """
  next: 'ShowSoonPass'

Data.events.ShowSoonWrestle =
  text: ->"""
    "Hm. That's a messy one. Let's just have you go a round with Tits naked and ignore the oil for now." He shakes his head. "Strip."

    As soon as you do, he grabs you by one wrist and drags you out of the room and down the hall. "Tits!" He opens the door to one of the other sex slave's bedrooms without waiting for a response. Tits scrambles to her feet as the door slams open.

    "Tits, tie #{g.name} into a pretzel for me. No, wait, get naked first."

    Tits is a woman in her thirties, long brown curls and olive skin, all too obviously named for the massive pair of knockers that jiggle as she pulls off her white t-shirt. You're a little intimidated, and more than a little turned on. She cracks her knuckles and grins at you. "Say when."

    "Um... when?" You answer hesitantly, and are instantly bowled over by her charge. She takes you down carefully though, preventing you from cracking your head (or anything else) on the ground. The momentary surprise wears off, and you put some strength into your limbs, twisting around in her grip and pushing her off.

    She laughs, straightens her hair with one hand, and comes at you again. Shit. Should have tried something nice and safe, like a beauty pageant.
  """
  next: 'ShowSoonPass'

Data.events.ShowSoonSing =
  text: ->"""
    He quirks an eyebrow. "You have a singing voice?"

    You nod, a annoyed that he doubts you. You've learned a great deal about yourself since becoming a slave, but he has no reason to believe you can't sing. You take a moment to ponder a song. You finally settle on "Somewhere Over the Rainbow," since it's the only thing you can remember the lyrics of and sounds good without musical backing.

    You're right. You have an excellent voice. He sits silently though the performance, and when you finish, has no more words. He gestures you to leave. You slip out with a smile.
  """
  next: 'ShowSoonPass'

Data.events.ShowSoonPhotos =
  text: ->"""
    You point to the photo shoot, and Mr. Stevens regards you as a biologist might look at an interesting specimen. You stare back coolly. After a moment, he nods sharply.

    "You just might win that one. Robin is too girlish to ever do well at that one, but perhaps you can manage the proper combination of poise and sexiness. There is a naked section, of course. And your photos will be used in the advertisements. It's also traditional to give the photographer a happy ending, to motivate him to edit your shots well before display."

    You swallow the lump in your throat. Shit. The beauty competition is starting to sound more like being a porn star for a day.
  """
  next: 'ShowSoonPass'

# Empty event so that the adventure listing knows it's complete.
Data.events.ShowSoonPass =
  text: ->"""
    Finally back alone in your room, you have a chance to examine the brochure Mr. Stevens gave you. The slave show will be something like a country fair, with all the traditional booths such as ring toss, sticky confection stands and more types of fried meat than you can shake a stick at. Unlike most fairs though, there'll be no children present, and great deal more naked women. You hope that #{Ms}. #{Masterson} doesn't decide to give you a turn in the glory hole stall after the competitions are over.

    <em>The slave show hasn't been written yet. Look forward to it in another update soon.</em>
  """

Data.events.ShowSoonFail =
  text: ->"""
    You wish you could melt through the floor. God that was embarrassing.

    He is not impressed by your performance. "Well. Fortunately we have some time before the actual event." He wipes a fleck of spittle off his shirt with a handkerchief. "I hope you have other talents."

    You flee.
  """
