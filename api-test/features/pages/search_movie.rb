class SearchMovie
    include HTTParty
    require_relative '../hooks/hooks.rb'
    base_uri "https://api.themoviedb.org/3"

    def initialize(headers)
        @search_movie_params = {:headers => headers}
    end

    def get_search_movie(param)
        self.class.get("/search/movie?query=#{param}", @search_movie_params)
    end
end