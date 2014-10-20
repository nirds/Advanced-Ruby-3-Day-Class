require 'stackprof'

class Foo
  def self.method_missing(method)
    self.send(:define_method, method) { 1 + 1 }
  end
end

StackProf.run(mode: :cpu, out: 'stackprof-cpu-myapp.dump') do
  1_000_000.times do
    Foo.foo
  end
end

# view with:
#   $ stackprof stackprof-cpu-myapp.dump