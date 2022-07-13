@US03
Feature: US_03 Registiration Password

  Background:
    Given user navigates to "<medunnaUrl>"
    Then user clicks on registiration button and navigates to registiration page

  @Tc01
  Scenario: TC_01 AtLeastFourChar
    Then user types one char and sees the length is not enough
    And user types two char and sees the length is not enough
    And user types three char sees the length is not enough
    Then user types 4 char and sees the length is enough

  @Tc02
  Scenario: TC_02 AtLeastSevenChars
    Then user types seven chars
    And user sees strength level is changed to stronger


  @Tc03
  Scenario: TC_04 AtLeastSevenCharsWithOneLowerCaseOneUpperCase
    Then user types seven chars included one lowercase and one uppercase
    And user sees strength level is changed to stronger

  @Tc04
  Scenario: TC_03 AtLeastSevenCharsWithOneLowerCase
    Then user types seven chars included one lowercase char
    And user sees strength level is changed to stronger



  @Tc05
  Scenario: TC_05 AtLeastSevenCharsWithOneLowerCaseUpperCaseNumber
    Then user types seven chars included one lowercase and one uppercase and number
    And user sees strength level is changed to stronger

  @Tc06
  Scenario: TC_06 AtleastSevenCharsWithOneLowerCaseUpperCaseNumberSpecialChar
    Then : user types seven chars included one lowercase and one uppercase and number and special char
    And user sees strength level is changed to stronger