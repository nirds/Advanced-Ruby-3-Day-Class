require_relative 'monsters'

def count_nocturnal
  $monsters.count {|m| m[:nocturnal]}
end

def names_nocturnal
  $monsters.select {|m| m[:nocturnal]}.map{|n| n[:name]}
end

def sum_legs
  $monsters.reduce(0) {|l, m| l + m[:legs]}
end

def common_stats(key, num)
  $monsters.flat_map{|m| m[key]}.group_by{|i| i}.sort_by{|k,v| -v.size}.first(num).map(&:last).flatten.uniq
end

puts "#{count_nocturnal} monsters are nocturnal."
puts "#{names_nocturnal} are the names of the nocturnal monsters"
puts "The monsters have #{sum_legs} legs among them."
num_vulns = 2
puts "The most common #{num_vulns} vulnerabilities are #{common_stats(:vulnerabilities, num_vulns)}"
num_dangers = 2
puts "The most common #{num_dangers} dangers are #{common_stats(:dangers, num_vulns)}"

