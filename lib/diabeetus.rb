require "diabeetus/version"

module Diabeetus
  class Tester
    def diabeetus?
      self.tainted?
    end
  end
end
