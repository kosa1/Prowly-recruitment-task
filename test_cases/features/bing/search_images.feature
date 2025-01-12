Feature: Search with Images filter on Bing
  Scenario: Search for "semrush" with "Images" filter
    Given I am on the Bing homepage
    When I search for "semrush"
    And I select the "Images" filter
    Then I should see only image results related to "semrush"
    And each image result should include a link to its source
    And at least one image should display the "Semrush" logo
