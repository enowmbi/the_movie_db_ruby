# frozen_string_literal: true

require_relative "the_movie_db/version"

# TheMovieDb module - autoload dependency classes
module TheMovieDb
  autoload(:BadRequestException, "the_movie_db/exceptions")
  autoload(:UnauthorizedException, "the_movie_db/exceptions")
  autoload(:ForbiddenException, "the_movie_db/exceptions")
  autoload(:NotFoundException, "the_movie_db/exceptions")
  autoload(:ServerException, "the_movie_db/exceptions")
end
