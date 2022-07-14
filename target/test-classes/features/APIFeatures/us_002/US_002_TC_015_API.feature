@US02 @US_002_TC_015 @api
Feature: username should be validated with API

  Scenario: username should be validated with API
    Given user sends POST request to get Bearer Token
    Then user verifies that response status code is 200
    And user sends a GET request to get email address
    Then user verifies that response status code is 200
    Then user verifies that the returned information matches the expected one, and is unique
