module Forem
  class ModeratorGroup < ApplicationRecord
    belongs_to :forum, :inverse_of => :moderator_groups
    belongs_to :group
  end
end
