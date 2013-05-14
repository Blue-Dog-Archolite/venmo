module Venmo
  module Config

    VALID_OPTIONS_KEYS = [
      :secret
    ].freeze

    # @private
    attr_accessor *VALID_OPTIONS_KEYS

    # Create a hash of options and their values
    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end
  end
end
