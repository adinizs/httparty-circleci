#language:en

Feature: Search movie for text

    @search_movie
    Scenario: GET search movie

    Given I do a search movie with param "Avengers: Endgame"
    Then the movie should return