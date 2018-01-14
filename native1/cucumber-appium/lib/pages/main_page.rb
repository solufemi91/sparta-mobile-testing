class MainPage

  BUDGET_AND_TRANSACTION = 'protect.budgetwatch:id/action_settings'
  FIND_BUDGET_BUTTON = 'protect.budgetwatch:id/image'
  BUDGET_ADD_BUTTON = 'protect.budgetwatch:id/action_add'
  FIRST_FORM = 'protect.budgetwatch:id/budgetNameEdit'
  SECOND_FORM = 'protect.budgetwatch:id/valueEdit'
  SAVE_BUTTON = 'protect.budgetwatch:id/action_save'
  CREATED_BUDGET_NAME = 'protect.budgetwatch:id/budgetName'

  def initialize(driver)
    @driver = driver
  end

  def main_page_displayed?
    @driver.find_elements(:id, BUDGET_AND_TRANSACTION)
  end

  def find_budget_image
    @driver.find_elements(:id, FIND_BUDGET_BUTTON)[0].click
  end

  def check_budget_page_displayed?

    @driver.find_elements(:id, BUDGET_ADD_BUTTON)[0].displayed?

  end

  def click_add_budget_button
    @driver.find_elements(:id, BUDGET_ADD_BUTTON)[0].click
  end

  def add_details_for_first_form(details)
    @driver.find_element(:id, FIRST_FORM).send_keys(details)
  end

  def add_details_for_second_form(details)
    @driver.find_element(:id, SECOND_FORM).send_keys(details)
  end

  def click_save_button
    @driver.find_elements(:id, 'protect.budgetwatch:id/action_save')[0].click
  end

  def find_created_budget_name
    @driver.find_elements(:id, 'protect.budgetwatch:id/budgetName')[0].text
  end



end
