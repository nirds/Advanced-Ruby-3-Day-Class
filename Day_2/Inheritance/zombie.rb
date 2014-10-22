require_relative 'monster'

class Zombie < Monster

  def initialize(options={})
    options[:nocturnal] ||= false
    options[:legs] ||= (rand * 2).round(2)

    super options[:nocturnal], options[:legs], options[:name],
          options[:vulnerabilities], options[:dangers]
  end

  def say_name
    "uuurrrggghhhh #{@name}"
  end
end