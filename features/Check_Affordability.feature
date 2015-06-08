Feature: Check Mortgage Affordability
  @system
  Scenario Outline: Affordable for a loan with Scenario Outline
    Given I am on the mortgage affordability page
    When I enter Annual Income as "<annual_income>"
    And I enter Monthly Debt Expenses as "<monthly_expense>"
    And I select Loan Type as "<loan_type>"
    And I enter Interest Rate as "<interest_rate>"
    And I enter Down Payment as "<down_payment>"
    And I enter Annual Home Ownership Expense as "<annual_home_expense>"
    And I submit the form
    Then I should see my affordability as "<expected_result>"

  Examples: My affordability is as expected
    | annual_income | monthly_expense | loan_type      | interest_rate | down_payment | annual_home_expense | expected_result   |
    | 70000         | 1000            | 30 Year Fixed  | 3.5           | 5000         | 2000                | $303,782          |
    | 85000         | 1500            | 15 Year Fixed  | 3.75          | 7000         | 4000                | $173,730          |

  Examples: My affordability is not as expected
    | annual_income | monthly_expense | loan_type      | interest_rate | down_payment | annual_home_expense | expected_result   |
    | 70000         | 1000            | 15 Year Fixed  | 3.8           | 5000         | 2000                | $200,000          |
    | 85000         | 1500            | 30 Year Fixed  | 3.65          | 7000         | 4000                | $300,000          |

  @smoke @regression
  Scenario: Affordable for a loan with Scenario
    Given I am on the mortgage affordability page
    When I enter Annual Income as "70000"
    And I enter Monthly Debt Expenses as "1000"
    And I select Loan Type as "30 Year Fixed"
    And I enter Interest Rate as "3.5"
    And I enter Down Payment as "5000"
    And I enter Annual Home Ownership Expense as "2000"
    And I submit the form
    Then I should see my affordability result
