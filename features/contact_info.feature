Feature: User can see contact info
  As a restaurant owner,
  In order to keep my customers up to date
  I would like to be able to make updates regarding information and contact details on my restaurant page

  Background:
    Given the following contact info exists
      | name    | number     | address                      | content            |
      | Comrade | 0701000000 | Sveavägen 16, Stockholm      | Everyone is equal  |    
    And the following user exists
      | name | email        | password | admin |
      | John | john@doe.com | password | true  |
    And I am logged in as "John"
    And I visit the landing page

  Scenario: User sees restaurant info
    When I click "Contact us"
    Then I should see "Contact information"
    And I should see "Phone number:"
    And I should see "Address:"

    Scenario: Owner edits contact info
      When I click "Contact us"
      Then I should see "Contact information"
      And I click "Edit"
      And I fill in "Name" with "Yolo"
      And I click "Update Contact info"
      Then I should see "Yolo" on Contact information page