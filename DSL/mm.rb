def method_missing m, *args, &block
  self.class.class_eval do
    define_method m do |&block|
      yield if block_given?
      block.call if block_given?
    end
  end
end