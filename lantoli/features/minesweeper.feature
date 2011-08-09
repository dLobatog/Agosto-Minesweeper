Feature: minefields creation

  Scenario: one field with one empty cell
    Given I want to play MineSweeper
    When I give the board
      """
      1 1
      .
      0 0
      """
    Then I should get the board
      """
      Field #1:
      .
      
      """

  Scenario: two fields with one empty cell
    Given I want to play MineSweeper
    When I give the board
      """
      1 1
      .
      1 1
      .
      0 0
      """
    Then I should get the board
      """
      Field #1:
      .

      Field #2:
      .

      """

  Scenario: one mine in the middle
    Given I want to play MineSweeper
    When I give the board
      """
      3 3
      ...
      .*.
      ...
      0 0
      """
    Then I should get the board
      """
      Field #1:
      111
      1*1
      111

      """


