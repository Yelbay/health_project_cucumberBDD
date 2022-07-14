@US02 @US_002_TC_001 @ui
Feature: Choose a username that can contain any chars, but it cannot be blank

  Scenario Outline: test username for new applicant
    Given user goes to webpage
    When user navigates to registration page
    And user verifies Registration is displayed
    And user provides ssn id as "<ssn>"
    And user provides firstname as "<firstname>"
    And user provides lastname as "<lastname>"
    And user provides username as "<username>"
    And user provides email as "<email>"
    When user types password as "<password>"
    And user types password confirmation as "<passwordconfirm>"
    And user clicks on Register button
    Then user should see Registration saved message
    And user closes the browser

    Examples: test data for applicants
      | ssn         | firstname | lastname | username                        | email                     | password | passwordconfirm |
      | 281-13-4235 | Mario     | Costa    | abcdefghijklmn11121             | 1211mariocosta@gmail.com  | 1234     | 1234            |
      | 382-13-4235 | Mario     | Costa    | opqrstuvwxyz11121               | 1211mariocosta1@gmail.com | 1234     | 1234            |
      | 483-13-4235 | Mario     | Costa    | 123456789011121                 | 1211mariocosta2@gmail.com | 1234     | 1234            |
      | 584-13-4235 | Mario     | Costa    | !@#$%^&*()_+-=";':./,\<>{}11121 | 1211mariocosta3@gmail.com | 1234     | 1234            |
      | 685-13-4235 | Mario     | Costa    | ABCDEFGHIJKLMN11121             | 1211mariocosta4@gmail.com | 1234     | 1234            |
      | 786-12-4235 | Mario     | Costa    | OPQRSTUVWXYZ11121               | 1211mariocosta5@gmail.com | 1234     | 1234            |





