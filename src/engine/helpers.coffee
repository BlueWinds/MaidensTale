window.mistress = -> if Data.storytellers[g.storyteller].gender is 'f' then 'mistress' else 'master'
window.Mistress = -> if Data.storytellers[g.storyteller].gender is 'f' then 'Mistress' else 'Master'
window.Mandy = -> Data.storytellers[g.storyteller].first
window.Masterson = -> Data.storytellers[g.storyteller].last
window.Ms = -> if Data.storytellers[g.storyteller].gender is 'f' then 'Ms' else 'Mr'
window.she = -> if Data.storytellers[g.storyteller].gender is 'f' then 'she' else 'he'
window.She = -> if Data.storytellers[g.storyteller].gender is 'f' then 'She' else 'He'
window.her = -> if Data.storytellers[g.storyteller].gender is 'f' then 'her' else 'his'
window.Her = -> if Data.storytellers[g.storyteller].gender is 'f' then 'Her' else 'His'
window.woman = -> if Data.storytellers[g.storyteller].gender is 'f' then 'woman' else 'man'

mistress.toString = mistress
Mistress.toString = Mistress
Mandy.toString = Mandy
Masterson.toString = Masterson
Ms.toString = Ms
she.toString = she
She.toString = She
her.toString = her
Her.toString = Her
woman.toString = woman

window.saveLabel = (game, short)->
  if short
    "MaidensTale-#{game.day}"
  else
    "#{if game.name is 'unnamed' then 'Nameless' else game.name} - Day #{game.day} - #{Data.storytellers[game.storyteller].first} #{Data.storytellers[game.storyteller].last}"

# options is defined in game.coffee
