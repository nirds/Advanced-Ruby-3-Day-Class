module PathHelper
  def self.path_maker
    Path.new
  end

  def self.path_setup p
    puts "tell me the start of the path:"
    p.start = get_user_input
  end

private

  def self.get_user_input
    gets.chomp
  end
end