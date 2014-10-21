module ClassAttrs
  refine Class do
    def class_attr_accessor *args
      args.each do |m|
        meta_class.instance_eval do
          define_method m do
            class_variable_get("@@#{m}")
          end
          define_method "#{m}=" do |a|
            class_variable_set("@@#{m}", a)
          end
        end
      end
    end

    def meta_class
      class << self
        self
      end
    end
  end
end