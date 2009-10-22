Feature: Find movie title in simple string

  Scenario: Finds a movie in a string that contains one
    Given a source with "Water World" as a movie title
    And I provide a simple string "Water World" to the scanner
    And I create a FanBoy
    When I ask the FanBoy for matching movie titles
    Then the results should include "Water World"

  Scenario: Finds a movie in a comma separated string
    Given a source with "Water World" as a movie title
    And I provide a simple string "Water World, Water Boy, Titanic" to the scanner
    And I create a FanBoy
    When I ask the FanBoy for matching movie titles
    Then the results should include "Water World"

  Scenario: Finds a movie in a comma separated string with partial titles
    Given a source with "Water World" as a movie title
    And I provide a simple string "Water, Ice, Fire" to the scanner
    And I create a FanBoy
    When I ask the FanBoy for matching movie titles
    Then the results should include "Water World"
