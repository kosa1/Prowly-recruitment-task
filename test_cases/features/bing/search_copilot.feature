Feature: Search with Copilot filter on Bing
  Scenario: Search for "semrush" with Copilot
    Given I am on the Bing homepage
    When I search for "semrush"
    And I open the Copilot panel
    Then I should see summarized information about "semrush"
    And the response should include a brief description, features, and links for further details
    And I should be able to interact with Copilot to refine my query
