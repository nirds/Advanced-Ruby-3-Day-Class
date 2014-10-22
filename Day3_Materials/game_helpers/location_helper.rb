module LocationHelper
  def self.location_maker
    Location.new
  end

  def self.location_setup l
    puts "tell me the name of the location:"
    l.name = get_user_input
  end

private

  def self.get_user_input
    gets.chomp
  end
end