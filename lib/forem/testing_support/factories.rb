# frozen_string_literal: true

Dir[__dir__ + '/factories/*.rb'].each do |f|
  require f
end
