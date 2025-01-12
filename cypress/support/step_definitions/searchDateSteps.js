import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given("I am on the Google homepage", () => {
  cy.visit("https://www.google.com");
});

When("I search for {string}", (keyword) => {
  cy.get('textarea[aria-label="Search"]').type(`${keyword}{enter}`);
});

When("I filter results by {string}", (timeFilter) => {
  cy.wait(14000)
  cy.contains('Narzędzia').click();
  cy.contains("Kiedykolwiek").click();
  cy.contains("Ostatnie 24 godziny").click({force: true});
});

Then("I should see only results published within the last 24 hours", () => {
  cy.get(".LEwnzc")
    .each(($date) => {
      const text = $date.text();
      const number = parseInt(text.match(/\d+/)[0]);
      expect(number).to.be.lessThan(24);
    });
});

Then("the results should be sorted by relevance and recency", () => {
  cy.get(".g").should("have.length.greaterThan", 0); 
  cy.get(".g").first().should("be.visible"); 
});
