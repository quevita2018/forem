module Forem
  # a new superclass for all app models
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
