module Foo
  def self.included(base)
    base.extend(ClassMethods)
  end

  def foo
    puts 'instance method'
  end

  module ClassMethods
    def bar
      puts 'class method'
    end
  end
end
