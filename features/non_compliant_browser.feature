Feature: Non compliant browsers does see a utf8 param.
  For Non compliant browser there shall be a hidden parameter containing a utf8 value.

  Background:
    Given I generate a new rails application
    And I run a rails generator to generate a "User" scaffold with "name:string"
    And I run a migration

  Scenario: 
    Given I start the rails application
    And I use Internet Explorer
    When I go to the new user page
    Then there is a utf8 input tag
