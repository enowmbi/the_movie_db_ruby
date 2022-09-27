# frozen_string_literal: true

RSpec.describe TheMovieDb do
  it "has a version number" do
    expect(TheMovieDb::VERSION).not_to be nil
  end
end
