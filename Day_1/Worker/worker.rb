module Worker
  def self.work(times = 1)
    times.times do
      @result = yield
    end
    @result
  end
end