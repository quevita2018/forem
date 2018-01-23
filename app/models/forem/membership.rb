# frozen_string_literal: true

module Forem
  class Membership < ApplicationRecord
    belongs_to :group
    belongs_to :member, class_name: Forem.user_class.to_s
  end
end
