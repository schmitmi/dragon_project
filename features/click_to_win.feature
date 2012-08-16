Feature: navigate to image site

  Scenario: getting to the image page
    Given I am on the "http://www.us129photos.com/#axzz23XZGPfho" page
    Given The roadster count is more that the trans-am count
    When I click the "li" element "rating_1_19" link
    Then The page should display "You have already rated this item"
    Then The page should display "Thank you for voting"