files = Dir.new('game_helpers').entries.reverse
files.pop(2)
files.each do |f|
  require_relative "game_helpers/#{f}"
end