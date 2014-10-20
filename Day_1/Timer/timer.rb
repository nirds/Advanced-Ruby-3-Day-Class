module Timer
  def self.time_code(times = 1)
    start = Time.now
    times.times do
      yield
    end
    (Time.now - start)/times
  end
end