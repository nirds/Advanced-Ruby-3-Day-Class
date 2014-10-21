require 'singleton'

class NotSet
  include Singleton
end

module NotSetBehavior

  refine Object do

    def method_missing m, *args, &block
      return self == NotSet.instance if m == :not_set?
      super
    end

    def respond_to? m, include_all = false
      return true if m == :not_set?
      super
    end
  end
end