Feature: Add a new blog entry 
  
    As a blogger 
    So that I can easily contribute content to my blog 
    I want to be able to add a new blog entry 
    
Scenario: As a blogger I want to be able to navigate from the homapage to the new article form 
    Given I am on the home page 
    When I click on the "My Blog" link 
    Then I should be on the "Listing Articles" page
    When I click on the "New article" link 
    Then I should be on the "New Article" page 
    And I should see the "Title" feild 
    And I should see the "Text" feild 