Feature: Non compliant browsers does see a utf8 param.
  For Non compliant browser there shall be a hidden parameter containing a utf8 value.

  Background:
    Given I generate a new rails application
    And I run a rails generator to generate a "User" scaffold with "name:string"
    And I run a migration

  Scenario: 
    Given I write to "app/controllers/application_controller.rb" with:
    """
    class ApplicationController < ActionController::Base
      protect_from_forgery
      utf8_enforcer_workaround
    end
    """
    And I start the rails application
    And I use Internet Explorer
    When I go to the new user page
    Then there is a utf8 input tag
