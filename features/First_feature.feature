Feature: Regression test for for checkin item https://www.petsmart.com/

  Scenario: Verify that user can add any item to the cart
     Given That user is launch Petsmart site
     Then Click the Category Sale
     Then Click on the SubCategory Cat
     When Select first available item on the page
    And  Click the Add to Cart button
    Then  Verify that item is added to the cart. Amount of items in the car in badge =1



