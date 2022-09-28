# frozen_string_literal: true

require "faraday"
require "faraday_middleware"

module TheMovieDb
  # Base class allows children classes to connect and make get, post, delete, put and patch requests to TMDB API
  class Base
    attr_reader :api_key, :base_url, :adapter

    def initialize(api_key:, base_url:, adapter: Faraday.default_adapter)
      @api_key = api_key
      @base_url = base_url
      @adapter = adapter
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = base_url
        conn.request :json
        conn.response :json, content_type: "application/json"
        conn.adapter adapter
      end
    end

    private

    def make_request(end_point, **query_params)
      response = connection.get(end_point, query_params, { authorization: "bearer #{api_key}" })
      if response.status == 200
        response.body
      else
        raise_exception(response)
      end
    end

    def raise_exception(response)
      case response.status
      when 400
        raise BadRequestException, response
      when 401
        raise UnauthorizedException, response
      when 403
        raise ForbiddenException, response
      when 500
        raise ServerException, response
      end
    end
  end
end
