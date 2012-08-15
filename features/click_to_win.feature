Feature: navigate to image site

  Scenario: getting to the image page
    Given I am on the "http://www.us129photos.com/#axzz23XZGPfho" page
    When I click the "loginLink" link
    Then I should see "thank you"