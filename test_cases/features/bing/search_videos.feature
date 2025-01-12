Feature: Search with Videos filter on Bing
  Scenario: Search for "semrush" with "Videos" filter
    Given I am on the Bing homepage
    When I search for "semrush"
    And I select the "Videos" filter
    Then I should see only video results related to "semrush"
    And each video result should include a title, a short description, and a playable thumbnail
    And at least one video should be from an official Semrush channel
