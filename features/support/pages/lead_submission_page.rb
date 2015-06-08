class LeadSubmissionPage
  include PageObject

  #page_url FigNewton.login_url

 page_url 'https://mortgagesperf.kdc.capitalone.com/direct/contact?option=getStarted&version=B'
  #'https://mortgagesqa.kdc.capitalone.com/direct/contact?option=getStarted&version=B'

  #text_field(:firstName, :xpath => "//*[@id='first_name']")
  text_field(:firstName, :id =>'first_name')
  text_field(:lastName, :id =>'last_name')
  text_field(:phoneNumber, :id =>'phone')
  text_field(:emailAddress, :id =>'email')
  select_list(:loanType, :id => 'loan_type')
  text_field(:loanAmount, :id =>'loan_amount')
  select_list(:estimatedCreditScore, :id => 'credit_score')
  text_field(:propertyZIPCode, :id =>'zip_code')
  button(:submit, :id => 'submitBtn')
  label(:thankYouPage,:id => 'page-heading' )


end