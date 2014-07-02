Feature:
  Scenario: Verify that it is possible to delete a group.
Given Launch TRUedx site and login with "support.amcast" and "redamon"
    Then Click Tools tab located in the upper left side of the page
Then Click "Groups" inside Administration section
Then Click "Search"
Then Click the Name of a group from the groups list displayed
#Then In the group attributes page click "Delete" located below the group attributes
Then Click Delete and click Ok in the confirmation message