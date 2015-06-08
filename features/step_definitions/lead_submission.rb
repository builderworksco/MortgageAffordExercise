Given(/^I am on site$/) do
  visit(LeadSubmissionPage)
  #puts"Hi am there"
end

  When(/^I enter first name as "([^"]*)"$/) do |myfirstName|
    on(LeadSubmissionPage).firstName = myfirstName
  end


And(/^I enter last name as "([^"]*)"$/) do |mylastName|
  on(LeadSubmissionPage).lastName = mylastName
end

And(/^I enter phonenumber as "([^"]*)"$/) do |myphoneNumber|
  on(LeadSubmissionPage).phoneNumber = myphoneNumber
end

And(/^I enter email as "([^"]*)"$/) do |myemailId|
  on(LeadSubmissionPage).emailAddress = myemailId
end

And(/^I select loantype as "([^"]*)"$/) do |myloanType|
  on(LeadSubmissionPage).loanType=myloanType
end

And(/^I enter loanamount as "([^"]*)"$/) do |myloanAmount|
  on(LeadSubmissionPage).loanAmount = myloanAmount
end

And(/^I select creditscore as "([^"]*)"$/) do |mycreditScore|
  on(LeadSubmissionPage).estimatedCreditScore = mycreditScore
end

And(/^I enter zipcode as "([^"]*)"$/) do |myZipCode|
  on(LeadSubmissionPage).propertyZIPCode = myZipCode
end

And(/^click submit$/) do
  #sleep 3
  pending
  #on(LeadSubmissionPage).submit
#  @browser.element(:id =>"submitBtn").wait_until_present
#  @browser.element(:id =>"submitBtn").click
end

Then(/^I should see Thank You page$/) do
  pending
  #on(LeadSubmissionPage).thankYouPage
end