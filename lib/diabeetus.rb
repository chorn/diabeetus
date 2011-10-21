require "diabeetus/version"

module Diabeetus
  class Tester
    def diabeetus?
      self.methods.size == self.class.new.methods.size
    end

    def insulin_shot
      base_class_instance = self.class.new
      self.methods.each do |m|
        if base_class_instance.methods.grep(m).size == 0
          class << self
            remove_method(m)
          end
        end
      end
    end
  end
end
