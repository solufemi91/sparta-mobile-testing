
Given("I can open the app") do
  mainpage.main_page_displayed?
end

When("click on budget") do
  mainpage.find_budget_image
end

Then("the budget page opens") do
  mainpage.check_budget_page_displayed?
end

When("I enter a budget") do
  mainpage.find_budget_image
  mainpage.check_budget_page_displayed?
  mainpage.click_add_budget_button
  mainpage.add_details_for_first_form('hello')
  mainpage.add_details_for_second_form('9')
end

And("save the budget") do
  mainpage.click_save_button
end
#
Then("the budget is saved and can be seen on the homepage") do
  expect(mainpage.find_created_budget_name).to eq 'hello'
end
