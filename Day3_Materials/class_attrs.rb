<<<<<<< HEAD
class String
  def something
  end
end

module ReneeString
  refine String do
    def something_else
      something
    end
  end
end



=======
>>>>>>> master
module ClassAttrs
  refine Class do
    def class_attr_accessor *args
      args.each do |m|
<<<<<<< HEAD
        singleton_class.instance_eval do
=======
        meta_class.instance_eval do
>>>>>>> master
          define_method m do
            class_variable_get("@@#{m}")
          end
          define_method "#{m}=" do |a|
            class_variable_set("@@#{m}", a)
          end
        end
      end
    end
<<<<<<< HEAD
=======

    def meta_class
      class << self
        self
      end
    end
>>>>>>> master
  end
end