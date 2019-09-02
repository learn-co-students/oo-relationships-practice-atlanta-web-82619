require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

brad_pitt = Actors.new("Brad Pitt", "Male", 1963)
tom_hardy = Actors.new("Tom Hardy", "Male", 1977)
blake_lively = Actors.new("Blake Lively", "Female", 1987 )
rosie_huntington = Actors.new("Rosie Huntington", "Female", 1984)

fight_club = Movies.new("Fight Club", 1999)
mad_max = Movies.new("Mad Max", 2015)
savages = Movies.new("Savages", 2012)
transformers = Movies.new("Transformers", 2011)

the_jim_jefferies_show = Shows.new("The Jim Jefferies Show", 2017, 2019)
peaky_blinders = Shows.new("Peaky Blinders", 2013, 2019)
gossip_girl = Shows.new("Gossip Girl", 2007, 2012)
transformers_show = Shows.new("Transformers", 2000, 2001)

max = Characters.new("Max", tom_hardy, mad_max)
tyler_durden = Characters.new("Tyler Durden", brad_pitt, fight_club)
o = Characters.new("O", blake_lively, savages)
carly = Characters.new("Carly", rosie_huntington, transformers)
carly_show = Characters.new("Carly", rosie_huntington, transformers_show)
splendid = Characters.new("Splendid", rosie_huntington, mad_max)
himself = Characters.new("Himself", brad_pitt, the_jim_jefferies_show)
alfie_solomons = Characters.new("Alfie Solomons", tom_hardy, peaky_blinders)
serena = Characters.new("Serena van der Woodsen", blake_lively, gossip_girl)

binding.pry
0
