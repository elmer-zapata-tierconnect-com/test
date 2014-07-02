Feature:
  Scenario: Verify that it is possible to update a 'Role'
    Given Login to TRUedx application with valid credentials
Then In the Tools tab, Administration Section, click on the Role button, located on the left menu of the principal page
Then Do click on a Role
Then Change Name and Description textfield
Then Add or Delete Resources of that Role
Then Click on "Update" button
Then Click on "Back" button