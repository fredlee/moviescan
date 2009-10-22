Feature: Find movie title in simple string

  Scenario: Finds a movie in a string that contains one
    Given I provide "Water World" 
    And "Water World" is a movie title
    When I ask for a matching movie title
    Then it should return "Water World"
