i = 1
COMMANDS =[]
loop do
  print "#{i}>"
  i+=1
  input = gets.chomp
  COMMANDS << input
  command, *params = input.split /\s/
  case command
    when /\Ahelp\z/i
      puts "+++"
      puts "open #loads a file"
      puts "exit #will exit"
      puts "do <ruby code> #evals <ruby code>"
      puts "anything else doesn't work"
      puts "+++"
    when /\Aopen\z/i
      puts "should open #{params.first}"
    when /\Ado\z/i
      puts(eval(*params.join))
    when /\Aexit\z/i
      break
    when /\Alast\z/i
      puts COMMANDS[-2]
    else
      puts 'Invalid command'
  end
end