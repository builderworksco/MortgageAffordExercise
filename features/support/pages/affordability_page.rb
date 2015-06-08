class AffordabilityCheckPage

  include PageObject

  page_url "https://mortgages.capitalone.com/direct/calculators/home-affordability"

  text_field(:annual_income ,:id => 'annIncome')
  text_field(:annual_income ,:xpath => '//*[@id="annIncome"]')
  text_field(:monthly_expense ,:id => 'monthlyExp')
  select_list(:loan_type ,:id => 'calc_loan_type')
  text_field(:interest_rate ,:id => 'annIntRate')
  text_field(:down_payment ,:id => 'downPay')
  text_field(:annual_home_expense ,:id => 'annHomeExp')
  button(:calculate_affordability ,:value => 'CALCULATE AFFORDABILITY')
  h2(:affordability_result ,:id => 'results-headline')

  #links(:calculate_home_expense ,id: => 'homeOwnExpLink')

=begin
  def clickcalculate()
    @browser.button(:calculate_affordability,"CALCULATE AFFORDABILITY").click
  end
=end
end