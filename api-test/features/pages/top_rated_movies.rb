class TopRated
    include HTTParty
    require_relative '../hooks/hooks.rb'
    base_uri "https://api.themoviedb.org/3"

    def initialize(headers)
        @top_rated_params = {:headers => headers}
    end

    def get_top_rated
        self.class.get('/movie/top_rated', @top_rated_params)
    end
end
