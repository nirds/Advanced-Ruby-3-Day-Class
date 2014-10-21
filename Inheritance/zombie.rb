require_relative 'monster'

class Zombie < Monster

  def self.inherited klass
    define_singleton_method("#{klass.to_s.downcase}_count") do
      @@monster_count[klass.to_s]
    end
    super
  end

  def initialize nocturnal: false, legs: 2, name: "Zombie", vul: [:decapitation], dangers: [:bite, :scratch]
    nocturnal = true if nocturnal.nil?
    super nocturnal, legs, name,
          vul, dangers
  end

  def say_name
    "uuurrrggghhhh #{@name}"
  end
end