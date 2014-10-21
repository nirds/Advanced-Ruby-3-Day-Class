class Monster
  attr_accessor :vulnerabilities, :dangers, :name
  attr_reader :nocturnal, :legs

  @@monster_count = Hash.new(0)
  @@monster_types = [Monster]

  def self.inherited klass
    puts "#{klass} is a new type of Monster - oh noes!"
    @@monster_types << klass
  end

  def self.types
   @@monster_types
  end

  def self.count
    @@monster_count[self.to_s]
  end

  def initialize noc, legs, name="Monster", vul = [], dangers = []
    @name            = name
    @nocturnal       = noc
    @vulnerabilities = vul
    @dangers         = dangers
    @legs            = legs

    self.class.ancestors.select{|c| Monster.types.include? c}.each do |c|
      @@monster_count[c.to_s] += 1
    end
  end

public

  def attack human
    puts "#{name} #{dangers.sample} #{human.name}!!"
  end

  def say_name
    "My name is #{@name}"
  end

  def shout_name
    @name.upcase
  end

protected

  def whisper_creepily
    puts "boooo....."
  end

private

  def set_nocturnal_to_false
    @nocturnal = false
  end

end
