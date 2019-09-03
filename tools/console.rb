require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

nick = Actor.new("Nick Lunn")
matt = Actor.new("Matt")
luciano = Actor.new("Luciano")
juicy = Actor.new("Juicy Furfaro")
danielle = Actor.new("Danielle Furfaro")
bradley = Actor.new("Bradley")
juan = Actor.new("Juan Quintana")
malek = Actor.new("Malek")

tuscany_movie = Movie.new("Tuscany")
tuscany_show = Show.new("Tuscany")
pool_party = Movie.new("Pool Party")
walking = Show.new("Walking to Work")
goon_squad = Show.new("Goon Squad")

nicholas = Character.new("Nicholas", nick)
nicky = Character.new("Nicky", nick)
gucci = Character.new("Gucci Luc", luciano)
music = Character.new("Music Matt", matt)
bella = Character.new("Bella", juicy)
chef = Character.new("Chef", danielle)
boss = Character.new("Boss!", malek)
brad = Character.new("Brad", bradley)
juanito = Character.new("Juanito", juan)

brad.new_show(tuscany_show)
brad.new_movie(tuscany_movie)
brad.new_show(goon_squad)
juanito.new_show(tuscany_show)
juanito.new_movie(tuscany_movie)
boss.new_movie(tuscany_movie)
boss.new_show(tuscany_show)
boss.new_show(goon_squad)
chef.new_show(tuscany_show)
bella.new_show(tuscany_show)
gucci.new_movie(tuscany_movie)
music.new_movie(tuscany_movie)
nicky.new_movie(tuscany_movie)
nicky.new_show(tuscany_show)
nicholas.new_show(walking)
nicky.new_movie(pool_party)
brad.new_movie(pool_party)
juanito.new_movie(pool_party)

binding.pry
0