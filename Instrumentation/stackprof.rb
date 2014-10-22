require 'stackprof'

class Foo

  def self.foo
    1+1
  end

  def self.method_missing(method)
    puts "mm"
    define_singleton_method(method) { self.foo }
  end
end

StackProf.run(mode: :cpu, out: 'stackprof-cpu-myapp.dump') do
  1_000_000.times do
    Foo.foo
    Foo.bar
  end
end

# view with:
#   $ stackprof stackprof-cpu-myapp.dump