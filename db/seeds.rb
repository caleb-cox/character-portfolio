# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
skills = [
  ['Athletics', 'Commando', 'Experience in swimming, running and jumping.'],
  ['Demolition', 'Commando', 'Training with all kinds of explosives.'],
  ['Driving', 'Commando', 'Training in vehicle use, to be specified on skill selection.'],
  ['Firearms', 'Commando', 'Training in all basic firearms: pistols, rifles, etc.'],
  ['Ninjitsu', 'Commando', 'Training in stealth and martial arts.'],
  ['Survival', 'Commando', 'Training in wilderness and urban survival. Gathering food, etc.'],
  ['Connections', 'Hacker', 'Knowing prominent people within a certain environment, to be specified on skill selection.'],
  ['Hardware', 'Hacker', 'Proficiency with electronics, computer hardware.'],
  ['Petty Crime', 'Hacker', 'Experience with picking locks, picking pockets, shoplifting, etc.'],
  ['Rollerblading', 'Hacker', 'Training in rollerblading.'],
  ['Software', 'Hacker', 'Proficiency with software, coding, systems, networks, etc.'],
  ['Street Cred', 'Hacker', 'Knowledge of cool stuff, reputation.'],
  ['Awareness', 'Witch', 'A measure of a characters awareness of their surroundings.'],
  ['Charms', 'Witch', 'Proficiency with spells that manipulate reality in a positive way.'],
  ['Divination', 'Witch', 'Experience with foresight through tarot, palmistry, numerology, etc.'],
  ['Herbalism', 'Witch', 'Knowledge of plants, herbs and their medical uses.'],
  ['Hexes', 'Witch', 'Proficiency with spells that manipulate reality in a damaging way.'],
  ['Knowledge', 'Witch', 'General knowledge, to be specified on skill selection.']
]
talents = [
  ['Blood Magic', 'You may substitute Mana with Health when casting spells.'],
  ['Champion', 'Select a cause. You get a +2 bonus on attack and damage rolls against enemies of that cause. May be taken more than once.'],
  ['Channeller', 'You can add your Witch attribute level to your magic attack damage once per combat.'],
  ['Critical Hit', 'You can add your Commando attribute level to your weapon attack damage once per combat.'],
  ['Crony', 'You are followed by a henchman, who carries your crap and picks up your dry cleaning.'],
  ['Dual-wielding', 'You may wield a weapon in your off-hand without penalty. Does not grant an extra attack.'],
  ['Elite Gear', 'Select a piece of expensive, high-quality equipment. You get a +2 bonus on rolls that use that equipment. May be taken more than once.'],
  ['Familiar', 'You have a small animal like a cat or pigeon as a pet that can do some simple tricks.'],
  ['Hack the Planet', 'Once per day, treat a Software roll as a 6, following the "exploding dice" rule.'],
  ['MacGuyver', 'Once per day, you may jury rig a handy device out of junk objects.'],
  ['Off the Grid', 'You have no bank accounts, social security number, government IDs. For better or worse.'],
  ['Pact', 'You are able to learn and cast ritual spells.'],
  ['Premonition', 'You may reroll any roll once per scene (or combat).'],
  ['Profession', 'You are trained in an occupation like gunsmith, librarian or warez-dealer.'],
  ['Tough as Nails', 'All damage taken is reduced by 2.']
]
skills.each { |skill| Skill.create(name: skill[0], character_attribute: skill[1], description: skill[2])}
talents.each { |talent| Talent.create(name: talent[0], description: talent[1])}

5.times do
  User.create(name: Faker::Book.author, password_digest: Faker::Internet.password)
end

3.times do
  Game.create(name: Faker::StarWars.planet, description: Faker::Hipster.sentence(5) , gm_id: 1)
end

2.times do
  Game.create(name: Faker::StarWars.planet, description: Faker::Hipster.sentence(5) , gm_id: 2)
end

3.times do
  n = 2
  Character.create(name: Faker::Pokemon.name, commando:4, hacker:4, witch:2, user_id: n+1, game_id:1)
  n += 1
end

3.times do
  n = 2
  g = 0
  Character.create(name: Faker::Pokemon.name, commando:4, hacker:4, witch:2, user_id: n+1, game_id:2)
  n += 1
  g += 1
end

3.times do
  n = 2
  Character.create(name: Faker::Pokemon.name, commando:4, hacker:4, witch:2, user_id: n+1, game_id:3)
  n += 1
end

3.times do
  n = 2
  Character.create(name: Faker::Pokemon.name, commando:4, hacker:4, witch:2, user_id: n+1, game_id:4)
  n += 1
end

3.times do
  n = 2
  Character.create(name: Faker::Pokemon.name, commando:4, hacker:4, witch:2, user_id: n+1, game_id:5)
  n += 1
end
