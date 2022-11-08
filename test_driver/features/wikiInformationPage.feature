Feature: wiki Main Information Page activities

  As a user
  I want to read the given Information
  So that I can learn from it.
  Background:
    Given User is logged in,


  Scenario: User doesn't see text
    Given that the user chose a plant on previous wiki main page
    And there is no informative text displayed
    Then the user must get a error message with a return button

  Scenario: User sees text
    Given that the user chose a plant on the previous wiki main page
    And there is a text displayed
    Then he can read all the information

  Scenario: User want to return
    Given that the user chose a plant on the previous wiki main page
    And there is a text
    And the user read all the things
    And the user taps the return button
    Then the user should return to the wiki main page

  Scenario: User wants to return to the main menu
    Given that the user chose a plant on the previous wiki main page
    And  there is a text
    And the user read all the things
    And the user taps the burger menu in the upper right corner
    Then a list of our main menu should open
    Then the user can select another menu option

