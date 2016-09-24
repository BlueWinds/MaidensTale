Object.assign Data.events,
  Intro:
    text: ->"""
      "You're almost at your new home, slut."

      You roll over in your cage, quickly running up against the bars when you try to stretch. You sit upright, drawing an appreciative chuckle from the man who addressed you at the sight of hay clinging to your nude breasts.

      This is not how you expected your vacation to go. You'd planned on a nice relaxing drive down the coast, resting wherever fancy landed you, with no cares, plenty of time to see the sights, meet the strangers, get drunk at bars... And now here you are. Whoops.

      A #{options} girl like you should have known better than to take a drink from a stranger.

      <em>You have #{Object.keys(Game.skills).length} different possible skills, ranging from 0 to 10. Different events will offer you chances to raise them over time, and events will present options with various chances of success depending on your ratings.</em>
    """
    next:
      'Well Bred': 'IntroRich'
      'Suburban': 'IntroWelloff'
      'Working class': 'IntroWorking'
      'Street smart': 'IntroPoor'

  IntroRich:
    text: ->"""
      The man smiles as he unlocks the cell door and gestures you to come out. It's a proper barred prison cell, but with the hay to sleep on, you couldn't help but think of it as your cage.

      "Lucky girl, you're going to see your new home today. The auction will begin in an hour, so plenty of time to get you cleaned up and ready. Fine piece of ass like you, no doubt you'll get a fine rich man to take care of you. Or woman. You like women, slut?"

      "I..."

      "Doesn't matter," he cuts you off. "You'll fuck who you're told to, and you'll learn to enjoy it. Go on into the showers and get yourself cleaned up. You want to look nice for the buyers, and that's for your benefit as well as mine. You go for a high price, you get treated like a worthy prize, yes? You don't want to end up a street trash whore."

      You were a normal woman, living your normal life... now you're for sale in an Anglani market. You'd never heard of Anglani before three days ago, when you glimpsed it on the arrival gate, disembarking from your airplane. How they'd arranged to have a squirming duffle bag pass through security back home was a mystery to you. When you got off the plane, you were in for another shock: slavery was legal here, and you were now property. The customs official explained it all very clearly - you can't be killed, that's still a crime, but anything short of that is at your owner's discretion. Your immigration form - filled out for you - didn't state a name. You aren't allowed a name until your master chooses one for you. And a slave trading company has no interesting in naming you - that's a privilage be for your new master.

      That was two days ago. Everything since then has been a blur. Somehow you find you've managed to wash yourself - with that done, rough hands drape you in an elegant gown, do your hair, apply makeup and otherwise prepare you in a hurry, getting you ready to sell for the highest possible price. And, just like that, you find yourself stumbling onto the stage.

      "Ladies and Gentlemen, our next piece of meat is a real prize, a genuine never owned free woman. And boy doesn't she look excellent tonight, you can just tell what a #{options} girl she'll be.
    """
    next:
      Pretty: 'IntroPretty'
      Smart: 'IntroSmart'
      Hardworking: 'IntroHardworking'
    effects:
      skills:
        Etiquette: 10
        Fashion: 7
        Literature: 5
        Instruments: 3
      set:
        background: 'Rich'
  IntroWelloff:
    ext: 'IntroRich'
    effects:
      skills:
        Memorization: 10
        Mathematics: 7
        Makeup: 5
        Baking: 3
      set:
        background: 'Well Off'
  IntroWorking:
    ext: 'IntroRich'
    effects:
      skills:
        Strength: 10
        Cooking: 7
        Flirting: 5
        Endurance: 3
      set:
        background: 'Working Class'
  IntroPoor:
    ext: 'IntroRich'
    effects:
      skills:
        Endurance: 10
        Climbing: 7
        Medicine: 5
        Intimidation: 3
      set:
        background: 'Poor'

  IntroPretty:
    text: ->"""
      "I hear she was #{options} in her old life, can you believe that? Keep her as one or mold her into something new, can't you just feel that pliable flesh in your hands... young and fresh and ripe for the plucking. She's not a virgin though, I can tell you that much." The lewd joke at your expense draws some laughter from the crowd, and some heat from your cheeks.
    """
    next:
      'An exotic dancer': 'IntroDancer'
      'An idol': 'IntroIdol'
      'A musician': 'IntroMusician'
      'A stripper': 'IntroStripper'
      'A whore': 'IntroWhore'
      'Something Else': 'Back'
  IntroSmart:
    ext: 'IntroPretty'
    next:
      'A college student': 'IntroStudent'
      'A doctor': 'IntroDoctor'
      'A librarian': 'IntroLibrarian'
      'A programmer': 'IntroProgrammer'
      'A scientist': 'IntroScientist'
      'A stock broker': 'IntroBroker'
      'Something Else': 'Back'
  IntroHardworking:
    ext: 'IntroPretty'
    next:
      'An athlete': 'IntroAthlete'
      'A barista': 'IntroBarista'
      'A housewife': 'IntroHousewife'
      'A nun': 'IntroNun'
      'A soldier': 'IntroSoldier'
      'Something Else': 'Back'

  IntroDancer:
    effects:
      skills:
        Flirting: 20
        Seduction: 15
        Immodesty: 10
        Dancing: 5
      set:
        profession: 'Exotic Dancer'
    text: ->"""
      The bidding starts slow, picking up as the announcer reminds them that you've never been a slave, and climbing up even more fiercely when you're stripped naked on stage. It's all a blur. You can't hear the numbers being shouted out. You can barely see the crowd, with so much bright light on the stage, but you manage to pick out some faces here and there. Most of the people present aren't bidding - they're just here to enjoy the show. That's you.

      "Going once..." With a start you realize you're about to be sold. To the hideous man in the far corner. Everyone's left him plenty of space. You imagine you can smell him from all the way up here. That's... that's not good. But he hesitated a long time before that last bid - one more and he'll probably be out of the running. You look desperately across the crowd, and finally see

      #{options}

      <em>The master or mistress you choose will personally only appear in the game rarely, but this choice will also determine the sorts of random events you'll encounter - a cruel mistress will still send nice things your way now and then, but you can expect harder tasks and worse punishments.</em>
    """
    next:
      'Ms. Danni Jemson': 'IntroDanni'
      'Mr. Nick Romanov': 'IntroNick'
      'Ms. Sarah Lanshi': 'IntroSarah'

  IntroIdol:
    ext: 'IntroDancer'
    effects:
      skills:
        Fashion: 20
        Flirting: 15
        Makeup: 10
        Singing: 5
      set:
        profession: 'Idol'
  IntroMusician:
    ext: 'IntroDancer'
    effects:
      skills:
        Instruments: 20
        Singing: 15
        Concentration: 10
        Fashion: 5
      set:
        profession: 'Musician'
  IntroStripper:
    ext: 'IntroDancer'
    effects:
      skills:
        Immodesty: 20
        Flattery: 15
        Seduction: 10
        Dancing: 5
      set:
        profession: 'Stripper'
  IntroWhore:
    ext: 'IntroDancer'
    effects:
      skills:
        'Gag Reflex': 20
        Immodesty: 15
        Anal: 10
        Flirting: 5
      set:
        profession: 'Whore'
  IntroStudent:
    ext: 'IntroDancer'
    effects:
      skills:
        Memorization: 20
        Bluffing: 15
        Flirting: 10
        Mathematics: 5
      set:
        profession: 'College Student'
  IntroDoctor:
    ext: 'IntroDancer'
    effects:
      skills:
        Medicine: 20
        Concentration: 15
        Temperance: 10
        Endurance: 5
      set:
        profession: 'Doctor'
  IntroLibrarian:
    ext: 'IntroDancer'
    effects:
      skills:
        Literature: 20
        Memorization: 15
        Mathematics: 10
        Concentration: 5
      set:
        profession: 'Librarian'
  IntroProgrammer:
    ext: 'IntroDancer'
    effects:
      skills:
        Concentration: 20
        Memorization: 15
        Mathematics: 10
        Temperance: 5
      set:
        profession: 'Programmer'
  IntroScientist:
    ext: 'IntroDancer'
    effects:
      skills:
        Mathematics: 20
        Memorization: 15
        Concentration: 10
        Literature: 5
      set:
        profession: 'Scientist'
  IntroBroker:
    ext: 'IntroDancer'
    effects:
      skills:
        Concentration: 20
        Flattery: 15
        Mathematics: 10
        Etiquette: 5
      set:
        profession: 'Stock Broker'
  IntroAthlete:
    ext: 'IntroDancer'
    effects:
      skills:
        Endurance: 20
        Strength: 15
        Climbing: 10
        Intimidation: 5
      set:
        profession: 'Athelete'
  IntroBarista:
    ext: 'IntroDancer'
    effects:
      skills:
        Temperance: 20
        Flirting: 15
        Cooking: 10
        Makeup: 5
      set:
        profession: 'Barista'
  IntroHousewife:
    ext: 'IntroDancer'
    effects:
      skills:
        Cooking: 20
        Baking: 15
        Endurance: 10
        Oral: 5
      set:
        profession: 'Housewife'
  IntroNun:
    ext: 'IntroDancer'
    effects:
      skills:
        Temperance: 20
        Etiquette: 15
        Literature: 10
        Baking: 5
      set:
        profession: 'Nun'
  IntroSoldier:
    ext: 'IntroDancer'
    effects:
      skills:
        Strength: 20
        Intimidation: 15
        Endurance: 10
        Temperance: 5
      set:
        profession: 'Soldier'
  IntroDanni:
    title: "Mistress Jemson is a kind woman - strict but fair, she wants what's best for her slaves and treats them well. Don't mistake her kindness for weakness, though."
    effects:
      set:
        storyteller: 'danni'
    text: ->"""
      You lock eyes with a young woman, hardly older than you but clearly used to command. Long dark curls roll past her shoulders, and when she sees the desperation in your gaze, there's an immediate reaction of sympathy. She bids.
    """
    next: 'IntroHome'
  IntroNick:
    title: "Master Romanov enjoys fucking, and fucking slaves is his favorite. Expect to be used."
    effects:
      set:
        storyteller: 'nick'
    text: ->"""
      You catch the eye of an older man, with salt and pepper hair and a neatly trimmed beard. He smiles, a mixture of reassurance and sensuality, and raises his sign for a bid.
    """
    next: 'IntroHome'
  IntroSarah:
    title: "Mistress Sarah enjoys suffering. Her ideal slave is obedient, submissive, and silent - and she'll apply pressure in that direction."
    effects:
      set:
        storyteller: 'sarah'
    text: ->"""
      You catch the eye of an older woman, and are rewarded by an electric thrill running up your spine. Even from across the room, she manages to make you feel like prey. She bids.
    """
    next: 'IntroHome'

  IntroHome:
    text: -> """
      "Going once... going twice... sold! Sold to one of our favorite customers. You can collect your merchandise out back, we'll have it ready for you as usual in a few minutes."

      It takes you a moment to realize that "it" refers to "you," but your realization isn't necessary - hands hustle your naked body off stage so the auctioneer can get on with the rest of the night. That leaves you in the hands of a single guard. Briefly, you consider trying to escape -  you're not bound, and there's a whole crowd of people nearby you could try to get lost in, but you abandon the idea when you get a better look at the guard - he's at least a foot taller than you and seemingly made of muscle. He smirks when he sees you looking.

      "Ready as usual" turns out to involve a great deal of rope and cloth - cloth stuffed in your mouth holding your jaw open then wrapped around your head to hold it in place, more cloth around your eyes, and rope pulling your knees up to your chest and your arms folded along your sides. The whole procedure occurs without regard for your comfort or compliance, leaving you blind, mute and immobile, folded up like a little pill and abandoned on the floor, still naked.

      You hear people moving around, people talking about payment, and steps approaching. Suddenly a pair of fingers push themselves into your unprepared pussy. You'd yelp, were you able to make noise, but your startled reaction draws a chuckle anyway. The fingers probe around inside you for a moment before withdrawing.

      "She's a hot little thing, isn't she?"
      "Mhm. The #{mistress} will be pleased. See you at poker night?"
      "Of course."

      The purpose of the ropes - beyond making you helpless - becomes apparent as the place where they gather behind your back becomes a handle, the man lifting you up like a squirming duffle bag. They're not sure how much trouble you'd be left to your own devices, so they're taking no chances. You're carried outside, then into a van. Even if you couldn't see bits and pieces around your blindfold, the change in quality of the surrounding sounds would make that much obvious. The engine starts, and you're off.

      It's an uncomfortable ride. Face pressed up against the floor, it seems like you can feel every bump in the road. At least it doesn't last long - you can't be more than a few miles from the auction house when the van comes to a stop again.

      "Welcome to your new home, slut." A shoe digs into your side - not unkindly, but enough to make sure you know you're the one being addressed. "I'm going to remove your blindfold and gag now, and loosen most of the restraints. Feel free to scream. Most new slaves do, and it's best to get it out of your system before I open the door and everyone sees you. Wouldn't make a good first impression to be acting like a wild animal caught in a cage, now would it?" He leans down so his voice is right in your ear. "That is what you are though, a wild animal. Don't worry though, we'll tame you."

     "I'm untying you now." He reaches down and begins to unwrap the gag. "We'll put up with a lot, especially in your first few days. One thing we never tollerate is attacking any of the overseers or other slaves. Hurting people is my job, not yours."

     #{options}

     <em>In addition to your skills, you have three mood bars, which fill up with different emotions. The first holds some combination of Humility and Pride, the second combines Hope and Despair, the third combines Spirit and Detachment. Each bar can hold up to ten points, distributed between the two emotions.</em>

     <em>Moods serve two purposes - they help you learn skills faster, and they can be spent to help pass skill tests. More on skill tests in a moment.</em>
    """
    next:
      'Bite him': 'IntroBite'
      'Panic': 'IntroPanic'
      'Retain your dignity': 'IntroDignity'

  IntroBite:
    text: -> """
      Sicko. You nod to show you understand. Once the cloth is gone, you spit out the rag that was holding your jaw open and work it, biding your time while he removes the blindfold and works the knots to untie you. Your attack comes when he reaches down to carress your cheek - rather than the gentle gesture he expected to give, he gets your teeth sunk into his palm and fingers.

      He doesn't yell, just backhands you across the face with his other arm, a brutal blow that still isn't enough to dislodge you. His follow up kick to your gut is, however, leaving you twisting on the floor gasping for breath while he cradles a bloody hand.

      "I warned you, bitch. Now, we have some things to do right this second, but come tomorrow, or the day after, or the day after that... you'll regret it. We like to make people live in suspense about what exactly that means. You've just earned your first punishment." He kicks you again, and while you're still curled up in pain, rolls you over onto your face with his foot. He uses his one good hand to open the van door. "Joel! A hand? Bitch bit me, right down to the bone."

      It doesn't take long before Joel arrives to help carry you. You thrash a little, but it's not at all effective - now that they're keeping clear of your head, there's nothing you can do to stop him from throwing you over one shoulder like a sack of potatoes.
    """
    next: 'IntroArrive'
    effects:
      mood:
        Pride: 3
        Spirit: 3
      set:
        punishment: true
  IntroPanic:
    text: ->"""
      It's all too much. His hand right by your head, the jerky ride, the shock of being told you're going to be a slave... you scream something obscene and incoherent at your captor, thrash around on the floor with wild eyes, and start to sob.

      You half expected him to kick you, or perhaps drag you screaming across the yard, but the abuse never comes. Instead he sits on you long enough to pull out a knife and cut most of ropes holding you curled up, then sits behind you and pulls you upright in an irresistable hug. He doesn't speak, just holds you. You're terribly weak compared to him, but you do manage to conk him a good one in the eye with the back of your head in your panic.

      Slowly though, the gentle contact works its magic, and in spite of yourself, you find your body relaxing. He still doesn't say anything, just holding you comfortingly. Eventually he lets go, and with a handkerchief from one pocket, wipes off your face, an action welcome despite the indignity of having him do it for you.

      "That's a good girl." He stands and opens the door, and after a moment looking around, "Hey Joel! Come carry the new one in, I have to give my report."

      It doesn't take long before Joel arrives to help carry you. All your fight is gone for now, your body exhausted, so you don't do anything to resist when he throws you over his shoulder like a sack of potatoes.
    """
    next: 'IntroArrive'
    effects:
      mood:
        Spirit: 3
        Despair: 3
  IntroDignity:
    text: ->"""
      You nod your understanding. Tied up like this, there's not a whole lot you can do, and even if you did manage to get free, you're naked in a foreign country where everyone seems to accept slaves as the natural state of affairs. It wouldn't be long before you were caught and returned.

      With your silent cooperation, it doesn't take him long to remove the gag and blindfold, and untie most of the ropes. Only most of them - your elbows and wrists are still tied together. He helps you to stand, but you're still weak from being immobile too long, and looking at your wobble, he sits you back down - still naked - on the floor.

      "Hey Joel! Come carry the new one in. She's being good, but I have to give my report." It doesn't take long before Joel arrives to help carry you. He's rather gentle, scooping you up in a bridal carry.
    """
    next: 'IntroArrive'
    effects:
      mood:
        Humility: 3
        Despair: 3
  IntroArrive:
    text: ->"""
      The afternoon light bites your eyes after so much darkness, making you squint and wish your arms were free so you could rub them. Lifting your head, you get your first look ot your new home.

      It's a mansion. A fabulous one, right out of a storybook. #{Ms}. #{Masterson} must be very wealthy indeed, as though you didn't already know that from the way #{she} bought a new sex slave out from under a room full of eager bidders. A red tile roof and stone walls, dozens of rooms, a garage off to one side large enough for a dozen cars. The grounds are huge, and very well kept - multiple outbuildings, some of them large enough to be houses in their own right, are interspersed with gardens and an outdoor pool. You were wrong at first - it's not a mansion, it's a palace. Or at least it seems that way.

      There are others working or walking around, but you don't get a chance to do more than glimpse their curious faces before Joel carries you into one of the outbuildings. It's a bedroom - or a dungeon? It has features of both. There's a soft bed, but stone walls with manacles hanging from them. A bathroom to one side, but also a hole in the ground and a hose coiled half out of sight beneath a stone bench.

      Joel drops you onto the bed, and before you can react, climbs on top of you, pinning you down with his bodyweight. Like most of the men you've seen so far, he's over six foot and with muscules to back it up, the sort that come from hard work rather than the gym. If he weren't about to rape you, he'd be almost handsome, with his chiseled face, chopped brown hair and rough hands... it takes a moment before you realize you're not about to be raped. He's just taking no chances as he finishes untying you.

      "This'll be your new home for the next few days, while we get everything sorted. Someone will be by soon to speak with you." He climbs off and stands as soon as he's done, no lingering touches or other unnecessary contact.

      You rub your wrists and look around. You're pretty sure it's a cell now, not a bedroom. He's handsome and he has power over you, but maybe you can get some more answers before he leaves you alone and naked in your cell.

      #{options}

      <em>Here you have the option of several different skill tests. During a skill test, you roll 2d6 + (skill / 10, round down). If you meet the difficulty, you pass. Don't worry if you can't pass every skill check, especially at first - you'll usually get better at the skill even if you fail.</em>

      <em>During random events, which test you choose determines </em>what happens<em>, while pass/fail determines the </em>mechanical rewards<em>. You won't miss anything during random events (and the intro) by failing tests.</em>
    """
    next:
      'Be cute and scared':
        skill: 'Seduction'
        diff: 6
        result: ['IntroCuteYes', 'IntroCuteNo']
      'Ask about clothes':
        skill: 'Flirting'
        diff: 5
        result: ['IntroClothesYes', 'IntroClothesNo']
      'Glare at him':
        skill: 'Intimidation'
        diff: 8
        result: ['IntroGlareYes', 'IntroGlareNo']

  IntroCuteYes:
    text: ->"""
      You bite your lip and glance at his face, then away again, hugging your arms across your chest. "That's a long time to be alone..."

      He reaches out to put a hand on your shoulder, then seeming to remember how naked you are, pulls it back. "It's not that bad. A chance to think things over and have some privacy. You won't get much of that anymore."

      You smile shyly in his direction and turn on the bed, pulling your knees up to your chest. "Do you have to go right now?"

      "I'm afraid I do. Work waits for no woman." He does put his hand on your shoulder this time, giving it a brief squeeze before standing. "Don't worry, the #{mistress} treats #{her} slaves well." He's clearly not used to using that word yet, especially not with attractive naked women.

      "You're not a slave?"

      "Nope, just a hired hand. #{She} treats us pretty well too." He grins, pats your shoulder again and makes his exit.

      The lock clicks. You're alone.
    """
    effects:
      skills:
        Seduction: 1
      mood:
        Hope: 2
    next: 'IntroPlanDay'

  IntroCuteNo:
    ext: 'IntroCuteYes'
    effects:
      skills:
        Seduction: 1
      mood:
        Despair: 1

  IntroClothesYes:
    text: ->"""
      "Um... do I have to stay naked?" You lower your arms and pull your knees up to your chin, giving him a brief flash of first your breasts and then your pussy before you turn to face the wall, back in his direction.

      "That you do." It's obvious he's noticed your state of nakedness - not that he could have helped it carrying you few minutes ago then pinning you to the bed, but now you're calling attention to it, and he's blushing slightly. It's cute.

      "It's a bit drafty in here..."

      "There's a thermostat in the corner. This isn't a punishment, just a... um... reminder of your new status. As a slave." He's not really used to using that word, it's clear, especially not with attractive women.

      "You're not one?"

      "Nope, just a hired hand." He pats you on the shoulder and flees the scene. You may not have gotten any clothes - not that you were really expecting to - but you're pretty sure you've at least made an impression.

      The lock clicks. You're alone.
    """
    effects:
      skills:
        Flirting: 1
      mood:
        Spirit: 2
    next: 'IntroPlanDay'

  IntroClothesNo:
    ext: 'IntroClothesYes'
    effects:
      skills:
        Flirting: 1
      mood:
        Detachment: 1

  IntroGlareYes:
    text: ->"""
      You stare at him. He looks at the floor. He's clearly not used to being in such proximity to naked women, especially not angry ones. "Out."

      "I'm not an overseer, but that doesn't mean I can't touch you if I want to." He grabs your wrists with one hand and hauls your arms up over your head, then smacks your breast with the other. It's more shocking than painful, a sudden reminder of just how at his mercy you are.

      Seeing your expression Joel seems to remember himself, and with an embarrassed, appologetic "sorry," releases you and flees the scene.

      The lock clicks. You're alone.
    """
    effects:
      skills:
        Intimidation: 1
      mood:
        Pride: 2
    next: 'IntroPlanDay'

  IntroGlareNo:
    ext: 'IntroGlareYes'
    effects:
      skills:
        Intimidation: 1
      mood:
        Humility: 1

Data.events.IntroPlanDay =
  ext: 'PlanDay'
  text: ->"""
    #{Data.events.PlanDay.text()}

    <em>Each day, you'll get to choose your activities for the morning, evening and night, as well as pick what you're going to wear (though right now, of course, you only have one option in that regard). Click on the task to change it, then Ready once you've set your schedule.</em>

    <em>For actions which increase your skills, you'll learn faster by having more of the associated mood - for example, Cooking +2 (Humility) means that the action will increase your cooking faster if you had more Humility (or slower if you have less of it).</em>
  """

Data.randomEvents.IntroReleaseFromCell =
  time: 'Night'
  conditions:
    events:
      IntroReleaseFromCell: false
  text: ->"""
    You're woken from a sound sleep by a hush of air from the door opening. You stretch your arms up and rub your eyes, trying to make sense of your surroundings. Comfortable bed, stone walls, no clothes, a strange man watching you... you sit upright and pull the sheet up to cover your naked chest.

    "Good morning, my nameless little whore. It's time to get you acquianted with the estate. I'd tell you to get dressed, but, well, you don't get to." He levels a crooked smile in your direction, and you decide that you don't much like the way he looks at you. Joel from yesterday was pleasant and blushing, and the head overseer whose name you didn't catch was direct and efficient, but really, you didn't find yourself worrying about them too much, even naked and at their complete mercy.

    "Come on, get a move." He comes over to the edge of the bed and gives the sheet a tug. You hang onto it for a moment before sense takes over. He's going to get his way, one way or another, and you'd rather not give him an excuse to make "his way" into something worse than a tour and introductions. He tugs the sheet again and you let it fall, leering at your breasts as you squirm in discomfort.

    He leads you out of your cell into the early morning light, your arms firmly crossed over your chest, providing the least possible bit of modesty. The two of you walk along a cobbled path towards the main mansion.

    "#{Ms} #{Masterson} is a good owner - like most of the other sex slaves here, you'll have a lot more freedom than you might have expected. The four of you are here as decoration and fuck toys, not laborers. That's no an excuse for laziness, but you won't have someone leaning over your shoulder telling you what to do every minute. How you make yourself pleasing to us is your decision." He stops waliking suddenly, and as you nearly run into him, he reaches down between your legs to grope you. Your hands slap him away reflexively, and he takes the chance to grab a breast and squeeze, before stepping back and giving you space again.

    "There's one important duty you have though. Your body's available to anyone who wants it at any time. The #{mistress}, me, the field hands, visitors from town - if they're on the estate, you're at their disposal sexually. Only overseers can give you non-sexual orders, though. That's me, Mr. Stevens, Ms. Wendy. We're also the only ones - other than the #{mistress} of course - whocan give you long-standing orders. Once you're out of sight of anyone else, you're free. Understand?"

    "Yes."

    "Yes Sir. My first order - I'm always Sir to you. The other overseers don't care so much, but I like it. I want a sir at the end of everything you say to me." He pauses, waiting for you to answer.

    "Yes... sir." Now doesn't seem the time to push.

    "Very good. Now, I'm going to have some fun with you later, but first we need to visit the #{mistress}. We can't keep calling you slut forever, it's not specific enough, since that could mean any woman in the room. Time to get your new name. Exciting, isn't it, slut?"
  """
  next: 'Naming'

Data.events.Naming =
  text: -> """
    The two of you reach a small side door to the mansion, and he gestures you inside. The interior is all red carpet, polished wood, tasteful wealth and rows of doors with bronze plakards. You don't have much of a chance to gawk though, since you're led immediately up a flight of stairs and through a pair of double doors into the master bedroom.

    It can't be anything other than the master bedroom, given the combination of a king sized bed, an amazingly expensive looking computer setup in one corner currently showing rows of security cameras, and the #{woman} lounging in bed reading. #{She} looks up when the two of you enter, and suddenly you're completely conscious of your nudity again. You try to shrink back, but a hand pushes you forward.

    #{Mandy} #{Masterson}, your owner, the #{woman} with almost complete power over your life, sizes you up. It's the first time you've seen #{her} up close, and the first time #{she}'s seen you except on stage.

    "I'll name her..." #{options}
  """
  next:
    Natalie: 'setName'
    Jessie: 'setName'
    Slut: 'setName'
    Cunt: 'setName'
    Slave: 'setName'
    'Something else...': 'setName'

Data.pseudoEvents.setName = (name)->
  if name is 'Something else...'
    newName = window.prompt("I'll name her...")
    if not newName then return
    g.name = newName
  else
    g.name = name
  applyEvent('NamingDone', name)

Data.events.NamingDone =
  text: ->"""
    "#{g.name}. I hope you'll find your new life enjoyably and fulfilling. We'll speak again in a few days once you've had more of a chance to settle in."

    And just like that, you have a new name. #{g.name}. You roll it around in your mind trying to figure out how to feel about it. You're not given much time to decide though, since with that little ritual taken care of, the overseer - you still haven't caught his name besides "sir," and that's not a thing you want to call him to yourself - hurries you back out of #{Ms}. #{Masterson}'s presence.

    He leads you back down the stairway and into a walk-in closet right next to the manner door. It's large enough to serve as a changing room as well as a closet, with a vanity and mirror along the back wall. The hanging space is divided into several sections - Robin, Tanya, Tits, unlabeled.

    "That's your section right there," he points to the unlabeled division. It's mostly empty right now, only three outfits compared to the dozen or so for each of the other slaves. "Right next to Robin's clothes. You'll earn more options over time. There's another copy of this closet over on the opposite side of the mansion - use whichever's convenient. Shower's just on the other side of the hall. This drawer," he pats the vanity and leers, "always has fresh panties, since you'll be soaking, losing, tearing off or otherwise ruining them rather frequently. Now, cute as it is to watch your little derriere bouncing along, that's a treat for special occasions. Time to get dressed."

    #{options}
  """
  effects:
    set:
      confined: 'manor'
  next:
    Miniskirt: "NamingSkirt"
    Sundress: "NamingDress"
    Jeans: "NamingJeans"

Data.events.NamingSkirt =
  title: "A hip-hugging black miniskirt and low cut red blouse"
  text: ->"""
    By this point you know better than to hope he'll let you dress in privacy, and you can feel his eyes on you while you wiggle into your new clothes. But it doesn't really matter - you're dressed in something resembling normal clothes, and that instantly allows you to recover some portion of the modesty, sense of control and self esteem you've been so lacking in since this whole ordeal began. You breathe a sigh of relief.

    "You know, I was going to give you a tour of the estate, but my enthusiasm has suddenly just dried up. Your room's on the third floor. You're currently confined to the manor house - don't go wandering, we'll know. And remember, anyone can fuck you whenever and however they want. You're everyone's slut."

    He leaves. You're at loose ends.
  """
  effects:
    set:
      Clothes: 'miniskirt'
      availableClothes:
        Miniskirt: true

Data.events.NamingDress =
  title: "A skimpy flower-patterned sun dress"
  ext: "NamingSkirt"
  effects:
    set:
      Clothes: 'sundress'
      availableClothes:
        Sundress: true

Data.events.NamingJeans =
  title: "An X-backed teal blouse and skinny jeans"
  ext: "NamingSkirt"
  effects:
    set:
      Clothes: 'jeans'
      availableClothes:
        Jeans: true
