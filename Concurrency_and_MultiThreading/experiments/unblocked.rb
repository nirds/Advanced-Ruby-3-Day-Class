require 'benchmark'

Benchmark.bm do |b|
  b.report('Sequential:') do
    2.times do
      sleep(1)
    end
  end

  b.report('Threaded:') do
    a = Thread.new{ sleep(1) }
    b = Thread.new{ sleep(1) }
    a.join
    b.join
  end
end