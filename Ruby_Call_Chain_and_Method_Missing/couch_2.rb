class Couch
(1..100_000).each do |s|
    define_method("#{s}") do
      puts s
    end
  end
end