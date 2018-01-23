# frozen_string_literal: true

module Forem
  class Group < ApplicationRecord
    validates :name, presence: true

    has_many :memberships
    has_many :members, through: :memberships, class_name: Forem.user_class.to_s

    def to_s
      name
    end
  end
end
