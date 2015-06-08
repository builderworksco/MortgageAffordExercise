Feature: Lead Submission for Mortgage
  In order to provide the right mortgage product for our customers
  As a Mortgage officer I need all required customer details
  so that I can contact the customer and advise them on the product that they need
@system
  Scenario Outline: Submit all customer contact details
    Given I am on site
    When I enter first name as "<myfirstName>"
    And I enter last name as "<mylastName>"
    And I enter phonenumber as "<myphoneNumber>"
    And I enter email as "<myemailId>"
    And I select loantype as "<myloanType>"
    And I enter loanamount as "<myloanAmount>"
    And I select creditscore as "<mycreditScore>"
    And I enter zipcode as "<myZipCode>"
    And click submit
    Then I should see Thank You page

  Examples:
    | myfirstName | mylastName | myphoneNumber | myemailId                     | myloanType         | myloanAmount | mycreditScore | myZipCode |
    | Vladimir    | Mandala    | 5556643456    | vladimir.mandala@capital1.com | Mortgage Refinance | 100000       | 720-739       | 07302     |
    | Bjorn       | Edwin      | 3028880588    | bjorn.edwin@capital1.com      | Buy a Home         | 1000000      | 740+          | 19018     |