Feature: Restaurant owner can update his menu
  As a restaurant owner,
  In order to keep my customers up to date regarding my products
  I would like to be able to make updates to my menu
  
  Background: 
    Given the following categories exists
      | title    |
      | Starters |
    And the following products exists
      | name          | description           | price | category |
      | garlic bread  | garlic, bread, butter | 30    | Starters |
    And the following user exists
      | name | email        | password | admin |
      | John | john@doe.com | password | true  |
    And I visit the landing page
    And I click "Login"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I click "Log in"
  
  Scenario: Owner can update products in menu [Happy Path]
    When I click "Edit"
    And I fill in "Description" with "garlic with bread"
    And I click "Update Product"
    Then I should see "garlic with bread"