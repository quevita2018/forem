# frozen_string_literal: true

module Forem
  module Autocomplete
    def forem_autocomplete(term)
      where("#{Forem.autocomplete_field} LIKE ?", "%#{term}%")
        .limit(10)
        .select("#{Forem.autocomplete_field}, id")
        .order(Forem.autocomplete_field.to_s)
    end
  end
end
