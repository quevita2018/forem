# frozen_string_literal: true

module Forem
  class Subscription < ApplicationRecord
    belongs_to :topic
    belongs_to :subscriber, class_name: Forem.user_class.to_s

    validates :subscriber_id, presence: true

    def send_notification(post_id)
      # If a user cannot be found, then no-op
      # This will happen if the user record has been deleted.
      if subscriber.present?
        SubscriptionMailer.topic_reply(post_id, subscriber.id).deliver_now
      end
    end
  end
end
