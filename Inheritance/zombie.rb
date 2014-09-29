require_relative 'monster'

class Zombie < Monster

  def say_name
    "uuurrrggghhhh #{@name}"
  end
end