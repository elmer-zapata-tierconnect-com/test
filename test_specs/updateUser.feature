Feature:

  Scenario: Verify that it is possible to update a user
  Given Launch TRUedx site and login with "support.amcast" and "redamon"
  Then Click Tools tab located in the upper left side of the page
  Then Click "Users" inside Administration section
  Then Click "Search"
  Then Click the Name of a user from the users list displayed
  Then Modify the attributes of the selected user
  Then Click "Update" located under the user attributes
  Then Click "Back" located at the bottom of the page