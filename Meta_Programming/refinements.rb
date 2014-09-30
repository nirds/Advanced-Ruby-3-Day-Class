require 'date'
module HelpfulTime
  refine Time do
    def before? other_time
     self < other_time
    end
    def after? other_time
      self > other_time
    end

    def less date
      Date.parse(to_s.split.first) < date
    end

    def more date
      Date.parse(to_s.split.first) > date
    end

    def < date
      return less(date) if date.kind_of? Date
      super
    end

    def > date
      return more(date) if date.kind_of? Date
      super
    end
  end
  refine Date do
    def before? other_date
     self < other_date
    end
    def after? other_date
      self > other_date
    end

    def compare_to time
      self <=> Date.parse(time.to_s.split.first)
    end

    def <=> time
      return compare_to(time) if time.kind_of? Date
      super
    end
  end
  refine DateTime do
    def before? other_date
     self < other_date
    end
    def after? other_date
      self > other_date
    end
  end
end

module AgeCalculator
  using HelpfulTime

  def self.how_old_am_i? birthday
    old = Date.parse('01/01/1980')
    return "Really old!" if birthday.before? old
    "not that old yet."
  end
end