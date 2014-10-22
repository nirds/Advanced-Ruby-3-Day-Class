require 'benchmark'

class Foo

  # def self.foo
  #   1+1
  # end

  def self.method_missing(method)
    #puts "mm"
    1+1
    #self.send("self.define_method){ self.foo }
    #define_singleton_method(method) { self.foo }
  end
end

Benchmark.bm do |b|
  b.report('run:') do
    1_000_000.times do
      Foo.foo
      #Foo.bar
    end
  end
end