Feature: Search with content filter on Bing

  Scenario: Search for "semrush" with Copilot 
    Given I am on the Bing homepage
    When I search for "semrush"
    And I open the Copilot panel
    Then I should see summarized information about "semrush"
    And the response should include a brief description, features, and links for further details
    And I should be able to interact with Copilot to refine my query

  Scenario: Search for "semrush" with "Images" filter
    Given I am on the Bing homepage
    When I search for "semrush"
    And I select the "Images" filter
    Then I should see only image results related to "semrush"
    And each image result should include a link to its source
    And at least one image should display the "Semrush" logo

  Scenario: Search for "semrush" with "Videos" filter
    Given I am on the Bing homepage
    When I search for "semrush"
    And I select the "Videos" filter
    Then I should see only video results related to "semrush"
    And each video result should include a title, a short description, and a playable thumbnail
    And at least one video should be from an official Semrush channel
