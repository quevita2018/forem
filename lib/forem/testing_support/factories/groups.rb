# frozen_string_literal: true

FactoryBot.define do
  factory :group, class: Forem::Group do |f|
    f.name 'Special People'
  end
end
