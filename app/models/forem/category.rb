# frozen_string_literal: true

require 'friendly_id'

module Forem
  class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: %i[slugged finders]

    has_many :forums
    validates :name, presence: true
    validates :position, numericality: { only_integer: true }

    scope :by_position, -> { order(:position) }

    def to_s
      name
    end
  end
end
