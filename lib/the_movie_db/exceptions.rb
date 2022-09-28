# frozen_string_literal: true

module TheMovieDb
  # BadRequestException - 400
  class BadRequestException < StandardError
    def initialize(json)
      puts json["status_message"] || super
    end
  end

  # UnauthorizedException - 401
  class UnauthorizedException < StandardError
    def initialize(json)
      puts json["status_message"] || super
    end
  end

  # ForbiddenException - 403
  class ForbiddenException < StandardError
    def initialize(json)
      puts json["status_message"] || super
    end
  end

  # NotFoundException - 404
  class NotFoundException < StandardError
    def initialize(json)
      puts json["status_message"] || super
    end
  end

  # InternalServerError - 500
  class ServerException < StandardError
    def initialize(json)
      puts json["status_message"] || super
    end
  end
end
