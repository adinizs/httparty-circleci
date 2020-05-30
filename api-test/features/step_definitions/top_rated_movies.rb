#ecoding: uft-8

Given("I do a GET in top rated movies") do
    @get_top_movies = @top_rated.get_top_rated
end
  
When("the response body is displayed") do
    expect(@get_top_movies.code).to eq 200
end
  
Then("I do a GET movie detail with the fisrt movie displayed on search") do
    @movie_id = @get_top_movies.parsed_response['results'][0]['id']
    @get_movie_datail = @movie_detail.get_movie_datail(@movie_id)
    expect(@get_movie_datail.code).to eq 200
    expect(@get_movie_datail.parsed_response['id']).to eq @movie_id
end