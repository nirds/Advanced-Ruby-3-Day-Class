require 'stackprof'
require_relative '../Inheritance/monster'

StackProf.run(mode: :cpu, out: 'stackprof-cpu-myapp.dump') do
  10_000_000.times do
    m = Monster.new(true, 2, "fake monster", [], [])
    foo = "bar" + m.say_name
    bar = "foo" + m.say_name
  end
end

# view with:
#   $ stackprof stackprof-cpu-myapp.dump