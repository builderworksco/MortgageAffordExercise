Given(/^I am on the mortgage affordability page$/) { visit_page(AffordabilityCheckPage) }

When(/^I enter Annual Income as "([^"]*)"$/) do |annual_income|
  on(AffordabilityCheckPage).annual_income = annual_income
end

And(/^I enter Monthly Debt Expenses as "([^"]*)"$/) do |monthly_expense|
  on(AffordabilityCheckPage).monthly_expense = monthly_expense
end

And(/^I select Loan Type as "([^"]*)"$/) do |loan_type|
  on(AffordabilityCheckPage).loan_type = loan_type
end

And(/^I enter Interest Rate as "([^"]*)"$/) do |interest_rate|
  on(AffordabilityCheckPage).interest_rate = interest_rate
end

And(/^I enter Down Payment as "([^"]*)"$/) do |down_payment|
  on(AffordabilityCheckPage).down_payment = down_payment
end

And(/^I enter Annual Home Ownership Expense as "([^"]*)"$/) do |annual_home_expense|
  on(AffordabilityCheckPage).annual_home_expense = annual_home_expense
end

And(/^I submit the form$/) do
  on(AffordabilityCheckPage).calculate_affordability
  #on(AffordabilityCheckPage).calculate_home_expense
  #@browser.button(:calculate_affordability,"CALCULATE AFFORDABILITY").click
end

Then(/^I should see my affordability as "([^"]*)"$/) do |expected_result|
  @browser.element(:id =>"maxHomeVal").wait_until_present
  actual_result = @browser.element(:id =>"maxHomeVal").text
  expect(actual_result).to eq(expected_result)
end

Then(/^I should see my affordability result$/) do
  p on(AffordabilityCheckPage).affordability_result
end