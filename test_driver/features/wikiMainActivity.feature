Feature: wiki Main Page activities

  As a user
  I want to search for plants
  So that I can read more about plants and learn from it.


  Background:
    Given The user is logged in
    And The wiki Main page is open

  Scenario: User taps the book symbol
    Given the user is at the wiki Main page
    And the user hasn't selected anything yet
    When the user taps the book symbol
    Then the view changes to the information Page

  Scenario: User taps "Back to Home" button
    Given the user is at the wiki Main Page
    And the user taps the "Back to Home" Button
    Then the view changes to main menu

  Scenario:  User searches for plant in search bar
    Given the user is at the wiki Main Page
    And the user taps the search bar and types in a word
    Then the list displays results which match or are close to the typed-in word

  Scenario: User taps burger menu in upper right corner
    Given the user is at the wiki Main Page
    And the user taps the burger menu in the upper right corner
    Then a small list of our main menu should appear

  Scenario:  User searches for plant in search bar and it fails
    Given the user is at the wiki Main Page
    And the user taps the search bar and types in a word but the query fails
    Then an error message should be given back and the user has to redo the search attempt