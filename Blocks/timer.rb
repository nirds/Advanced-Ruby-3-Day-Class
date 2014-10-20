module Timer

  def self.time_code n = 1
    run_times = []
    n.times do
      start_time = get_start_time
      yield
      run_times << get_time_difference(start_time)
    end
    total_run_time = 0
    run_times.each do |rt|
      total_run_time += rt
    end
    total_run_time/n
  end

  def self.get_start_time
    Time.now
  end

  def self.get_time_difference start_time
    Time.now - start_time
  end

end