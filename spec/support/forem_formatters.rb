# frozen_string_literal: true

# MRI-specific C-extention
if Forem::Platform.mri?
  require 'forem/formatters/redcarpet'
else
  # JRuby
  require 'forem/formatters/kramdown'
end
