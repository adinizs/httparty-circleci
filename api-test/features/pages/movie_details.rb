class MovieDetail
    include HTTParty
    require_relative '../hooks/hooks.rb'
    base_uri "https://api.themoviedb.org/3"

    def initialize(headers)
        @movie_datail_params = {:headers => headers}
    end

    def get_movie_datail(movie_id)
        self.class.get("/movie/#{movie_id}", @movie_datail_params)
    end
end