Feature: Visitor can view menu
  As a visitor 
  In order to get an overview of the restaurant's products 
  I would like to be able to see a menu
  
  Background: 
    Given the following categories exists
      | title         |
      | Starters      |
      | Main Courses  |
      | Desserts      |
    And the following products exists
      | name          | description                     | price | category        |
      | garlic bread  | garlic, bread, butter           | 30    | Starters        |
      | margherita    | cheese, tomato sauce, basil     | 70    | Main Courses    |
      | vesuvio       | cheese, tomato sauce, ham       | 70    | Main Courses    |
      | calzone       | cheese, tomato sauce, ham       | 80    | Main Courses    |
      | ice-cream     | strawberry                      | 40    | Desserts        |
      | ice-cream     | vanilla                         | 40    | Desserts        |
  
  Scenario: Be able to see menu[Happy Path]
    Given I visit the landing page 
    Then I should see 'Menu'
    And I should see "margherita"
    And I should see "cheese, tomato sauce, basil"
    And I should see "70.0"
    And I should see "ice-cream"
    And I should see "vanilla"
    And I should see "40.0"