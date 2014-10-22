class ClassAttrs
  @class_variable
  def self.class_attr_accessor value
    @class_variable = "@@#{value}".to_sym

    define_method @class_variable do
      class_eval{ class_variable_get @class_variable }
    end
    define_method "#{@class_variable}=".to_sym do
      class_eval { class_variable_set @class_variable }
    end
  end


end