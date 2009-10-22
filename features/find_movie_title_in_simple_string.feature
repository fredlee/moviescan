Feature: Find movie title in simple string

  Scenario: Finds a movie in a string that contains one
    Given "Water World" is a movie title
    And I provide "Water World" 
    When I ask for a matching movie title
    Then it should return "Water World"
