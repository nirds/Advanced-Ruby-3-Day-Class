module Timer

  def run_code n=1
    time_series = []

    n.times do
      start_time = get_start_time
      yield
      time_series << get_time_difference(start_time)
    end

    time_series.inject(:+)/n
  end

  def get_start_time
    Time.now
  end

  def get_time_difference start_time
    Time.now - start_time
  end

end

include Timer