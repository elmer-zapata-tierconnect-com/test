Feature:
  Scenario: Verify that it is possible to add a group.
Given Launch TRUedx site and login with "support.amcast" and "redamon"
Then Click Tools tab located in the upper left side of the page
Then Click "Groups" inside Administration section
Then Click "Add" located below the Groups list
Then In group Provide data to the required fields and click Insert
Then Click "Back" located at the bottom of the page
  Scenario: Verify that it is possible to update a group.
  Given Launch TRUedx site and login with "support.amcast" and "redamon"
  Then Click Tools tab located in the upper left side of the page
  Then Click "Groups" inside Administration section
  Then Click "Search"
  Then Click the Name of a group from the groups list displayed
  Then Modify the attributes of the selected group
  Then Click "Update" located under the group attributes
  Then Click "Back" located at the bottom of the page

  Scenario: Verify that it is possible to delete a group.
  Given Launch TRUedx site and login with "support.amcast" and "redamon"
      Then Click Tools tab located in the upper left side of the page
  Then Click "Groups" inside Administration section
  Then Click "Search"
  Then Click the Name of a group from the groups list displayed
  #Then In the group attributes page click "Delete" located below the group attributes
  Then Click Ok in the confirmation message

  Scenario: Verify that is possible to change the Password Expiration Time of a group.
      Given Login to TRUedx application with valid credentials
  Then Click Tools tab located in the upper left side of the page
  Then Click "Groups" inside Administration section
  Then Click on some group
  Then Change the value of the Password Expiration Time field to 0
  Then Click on "Update" button
  Then Click the Logoff link, located on the top right of the page
  Then Click the Logon link, located in the middle of the page
  Then Login a user of the updated gruop
  Then Click Tools tab located in the upper left side of the page