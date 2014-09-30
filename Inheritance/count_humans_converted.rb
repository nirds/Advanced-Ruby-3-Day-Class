module CountHumansConvered
  def humans_converted
    @@humans_converted.map{|h| h.name}
  end
end