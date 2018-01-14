require 'spec_helper'
describe 'Testing the budget app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end
  after(:all) do
    @driver.driver_quit
  end
  # it "should open the budgetwatch app" do
  #   find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?
  # end
  # it "should have the budget option on the main landing page" do
  #   find_elements(:id, 'protect.budgetwatch:id/menu')[0].displayed?
  # end
  # it "should access the budget page" do
  #   # find_elements(:id, '')[0].displayed?
  #   scroll_to('Budgets').click
  # end
  # it "should be able to add a budget" do
  #   # find_elements(:id, '')[0].displayed?
  # end

  it "should open the budgetwatch app" do
    find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?
  end
  it "should have the budget option on the main landing page" do
    find_elements(:id, 'protect.budgetwatch:id/menu')[0].displayed?
  end
  it "should access the budget page" do
    scroll_to('Budgets').click
    find_elements(:id, 'protect.budgetwatch:id/action_add')[0].displayed?
  end
  it "should be able to add a budget" do
    find_elements(:id, 'protect.budgetwatch:id/action_add')[0].click
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys('Test')
    find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('9')
    find_elements(:id, 'protect.budgetwatch:id/action_save')[0].click
  end

end
