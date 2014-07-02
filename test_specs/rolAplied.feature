Feature:
  Scenario: Verify that the resources assigned to a role are applied to a user.
    Given Login to TRUedx application with valid credentials
Then In the Tools tab, Administration Section, click on the Role button, located on the left menu of the principal page
Then Click on "Add" button
Then Fill Name and Description textfield
Then Click on "Insert" button
Then Add a few resources
Then Click on "Update" button
Then Click on "Back" button
Then In the Tools tab, Administration Section, click on the Users button, located on the left menu of the principal page
Then Select the new Role in some user
Then Click on "Update" button
Then Login to TRUedx system with the new User and review if it display all resources