# language: en

Feature: Search
     Scenario: Search for orangain 
          Given I am on the "/" page of Google
          When I search for "orangain"
          Then I should get response with content-type "text/html"
          And I should see "orangain - Google 検索" in the title bar
          And I should see "かと (orangain) on Twitter" in the page
