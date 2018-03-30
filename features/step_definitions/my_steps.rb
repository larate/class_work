
Given("That user is launch Petsmart site") do
  url = "https://www.petsmart.com/"
  @browser.navigate.to(url)
end

Then("Click the Category Sale") do
 element = @browser.find_element( xpath: "//a[@class = 'dp-nav-link' and text() = 'sale']")
  element.click
end

Then("Click on the SubCategory Cat") do
  element = @browser.find_element(xpath: "//ul[contains(@id, category)]//a[@title = 'Go to Category: Cat']")
  element.click

end

When("Select first available item on the page") do
  element =@browser.find_element(xpath: "//div[@id = 'bv-product-tile-30445']")
  element.click
end

When("Click the Add to Cart button") do
  element = @browser.find_element(xpath: "//button[@id = 'add-to-cart']")
  element.click
end


Then(/^Verify that item is added to the cart\. Amount of items in the car in badge =1$/) do
  element = @browser.find_element(xpath: "//span[@class = 'minicart-quantity']")[1]

end