@area
Feature: User is able to convert area units

  Background:
    Given I click on Got it button

    #Scenario: User to able to dismiss help
    #Given I land on help
    #When I click on Got it button
    #Then I land on Area screen


  Scenario: User is able to swap values
    #ошибка для проверки теста From Header
      Given I see "Sq KilometrA" in From Header

      And I see "Sq Metre" in To header
      When I click on Swap button
      Then I see "Sq Metre" in From Header
      And I see "Sq Kilometre" in To header


  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From Header
    And I see "Sq Metre" in To header
    When I click on Swap button
    Then I see "Sq Metre" in From Header
    #ошибка для проверки теста To Header
    And I see "Sq KilometrA" in To header


  Scenario Outline: User is able to convert default units
       Given I click on Clear button
        When I enter "<target>" to From field
        Then I get "<result>" in To field

        Examples:
        |target|result|
        |1     |1000000|
      #  |2     |2000000|
      #  |3     |3000000|


Scenario: User is able to use soft keyboard to enter values
  Given I click on Clear button
  When I click on From field
  And I press "47" on soft keyboard
    #для проверки теста
  Then I get "47000000" in To field


  Scenario:
      When I select "Hectare" from left column
      Then I see "Hectare" in From header
      And I get "10000" in To field