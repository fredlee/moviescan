Feature: Find movie title in complex string

  Scenario: Finds a movie in a complex string that contains one
    Given a source with "Water World, Water Boy" as movie titles
    And I provide a complex string "I think Water World sucked major ass!" to the scanner
    And I create a FanBoy
    When I ask the FanBoy for matching movie titles
    Then the results should include "Water World"
    And the results should not include "Water Boy"

