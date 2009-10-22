Feature: Find movie title in simple string

  Scenario: Finds a movie in a string that contains one
    Given a source with "Water World" as a movie title
    And I provide a simple string "Water World" to the scanner
    And I create a FanBoy
    When I ask the FanBoy for matching movie titles
    Then the results should include "Water World"
