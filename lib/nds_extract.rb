$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  pp nds
  #
  director_total = {}


  directors_database.each do |director|
    director_total[director[:name]] = 0
    director[:movies].each do |movie|
      director_total[director[:name]] += movie[:worldwide_gross]
    end
  end
  # #pp movies
pp directors_database
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # Be sure to return the result at the end!
return director_total
end
