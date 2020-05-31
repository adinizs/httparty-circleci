#ecoding: uft-8

Given("I do a search movie with param {string}") do |param|
    @search = @search_movie.get_search_movie(param)
    @text = param
end
  
Then("the movie should return") do
    expect(@search.code).to eq 200
    expect(@search.parsed_response['results'][0]['title']).to include(@text)
end