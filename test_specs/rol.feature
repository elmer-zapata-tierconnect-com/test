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
#Then Select new role from 'Role' combo-box.(Select new "Role" created in step 7)

  Scenario: Verify that it is possible to update a 'Role'
      Given Login to TRUedx application with valid credentials
  Then In the Tools tab, Administration Section, click on the Role button, located on the left menu of the principal page
  Then Do click on a Role
  Then Change Name and Description textfield
  Then Add or Delete Resources of that Role
  Then Click on "Update" button
  Then Click on "Back" button


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
