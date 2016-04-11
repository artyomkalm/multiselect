require "rails"
require "multiselect/version"

module MultiSelect
  module Rails
    if ::Rails.version < "3.1"
      require "multiselect/railtie"
    else
      require "multiselect/engine"
    end
  end
end