require 'benchmark'

Benchmark.bm do |b|
  b.report('Sequential:') do
    10_000.times { 1 * 1 }
  end

  b.report('Threaded:') do
    a = Thread.new{ 5_000.times { 1 * 1 } }
    b = Thread.new{ 5_000.times { 1 * 1 } }
    a.join
    b.join
  end
end
