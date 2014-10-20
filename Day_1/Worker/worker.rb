module Worker
  def self.work(times = 1)
    @result
    times.times do
      @result = yield
    end
    return @result
  end
end