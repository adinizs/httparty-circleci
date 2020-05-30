#language:en

Feature: Search for top rated movies

    @top_rated
    Scenario: GET top rated movies and GET movie detail

    Given I do a GET in top rated movies 
    When the response body is displayed
    Then I do a GET movie detail with the fisrt movie displayed on search
