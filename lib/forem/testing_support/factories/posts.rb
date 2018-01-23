# frozen_string_literal: true

FactoryBot.define do
  factory :post, class: Forem::Post do |t|
    t.text 'This is a brand new post!'
    t.user { |u| u.association(:user) }

    trait :approved do |post|
      post.state 'approved'
    end

    factory :approved_post, traits: [:approved]
  end
end
