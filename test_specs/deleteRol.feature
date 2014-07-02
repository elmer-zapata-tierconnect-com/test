Feature:
  Scenario: Verify that it is possible to add a new 'Role'

    Given Login to TRUedx application with valid credentials
    Then In the Tools tab, Administration Section, click on the Role button, located on the left menu of the principal page
    Then Click on "Add" button located on the footer
    Then Fill Name and Description textfield
    Then Click on "Insert" button
    Then Add a few resources
    Then Click on "Back" button
    Then Go to Users
    Then Click on "Add" button
    Then Fill all mandatory fields
  Scenario: Verify that it is possible to delete a 'Role'

    Given Login to TRUedx application with valid credentials
Then In the Tools tab, Administration Section, click on the Role button, located on the left menu of the principal page
Then Do click on a Role
Then Do click on Delete ButtonR
Then Go to Users
Then Click on "Add" button
#Then Fill all mandatory fields
#Then From Role combo-box, search delete role