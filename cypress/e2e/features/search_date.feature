Feature: Search with date filter on Google

  Scenario: Search for "prowly" with "Past 24 hours" filter
    Given I am on the Google homepage
    When I search for "prowly"
    And I filter results by "Past 24 hours"
    Then I should see only results published within the last 24 hours
    And the results should be sorted by relevance and recency
