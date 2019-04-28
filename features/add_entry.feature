Feature: Add a new recipe entry
  
  As a chef
  So that I can easily contribute recipes to my recipe
  I want to be able to add a new recipe entry
  
Scenario: As a chef I want to be able to navigate from the homepage to the new recipe form
    Given I am on the home page
    When I click on the "Create Recipe" link
    Then I should be on the "Recipe Finder" page
    And I should see the "Title" field
    And I should see the "Description" field
    And I should see the "Instruction" field
    And I should see the "Ingredients" field

    