require_relative 'vampire'

class Dracula < Vampire

  def initialize coffin_location="Transylvania", noc=true, legs=2, name ="Count Dracula", vul=[:garlic, :sunlight], dangers=[:bites]
    super
  end

  def attack animal, human="Renee"
    puts "MuwahHAHAHAHAHAHA!"
    super human
  end
end