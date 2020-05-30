Before do |scenario|

  @headers = {
      Authorization: "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZTBjOTI3YTU4ZWE4YzJkMWU5ZTk4Yzg0ZDcwODI1NCIsInN1YiI6IjVlZDE1NjdlYWFlYzcxMDAyMTY4YTk0ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.iTdT3P7NrBNY_hlTDz-8aAbv8siXrc_remwPDuIRevM"
  }

    @top_rated = TopRated.new(@headers)
    @movie_detail = MovieDetail.new(@headers)
end
