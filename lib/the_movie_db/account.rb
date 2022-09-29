# frozen_string_literal: true

module TheMovieDb
  # Account class - Get your account details
  class Account < Base
    BASE_URL = ""
    GET_END_POINT_ENTRIES = %w[

    ].freeze

    POST_END_POINT_ENTRIES = %w[

    ].freeze

    def initialize(api_key:, base_url: BASE_URL, adapter: Faraday.default_adapter)
      super
    end

    GET_END_POINT_ENTRIES.each do |end_point|
      define_method(end_point.tr("/-", "_").to_sym) do |**args|
        make_request(end_point, **args)
      end
    end
  end
end
