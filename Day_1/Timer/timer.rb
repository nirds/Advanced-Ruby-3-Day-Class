module Timer
  def self.time_code(times = 1)
    total_run_time = 0

    times.times do
      start = Time.now
      yield
      total_run_time += (Time.now - start)
    end
    total_run_time/times
  end
end