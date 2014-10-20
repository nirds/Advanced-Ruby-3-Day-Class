module Timer

  def run_code n=1
    n.times.inject([]) do |time_series, _|
      start_time = get_start_time
      yield
      time_series << get_time_difference(start_time)
    end.inject(:+)/n
  end

  def get_start_time
    Time.now
  end

  def get_time_difference start_time
    Time.now - start_time
  end

end

include Timer