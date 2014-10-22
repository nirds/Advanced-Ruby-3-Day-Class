require_relative 'game_loader'

puts "What would you like to create? (Location or Path)"
thing = gets.chomp

module_to_call = Module.const_get("#{thing.capitalize}Helper")

new_thing = module_to_call.send("#{thing.downcase}_maker")

module_to_call.send("#{thing.downcase}_setup", new_thing)

puts Location.all_names