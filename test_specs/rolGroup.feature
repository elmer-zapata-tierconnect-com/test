Feature:
  Scenario: Verify that an user can use all resources in its Role and in its Group
Given Login to TRUedx application with valid credentials
Then Click Tools tab located in the upper left side of the page
Then Click "Groups" inside Administration section
Then Click on "Add" button
Then Provide data to the required fields
Then Select a 'Role' in its dropdown. (Remember the Role's Name)
Then Select a 'Group' in its dropdown. (Remember the Group's Name)
Then Click on "Insert" button
Then Click on "Back" button
Then Launch TRUedx site and login with new user.
Then Click 'Tools' tab located in the upper left side of the page.
Then Click 'Roles' inside 'Administration' section.
Then Search the 'Role' and do click on its row.
Then Remember the resources list.
Then Click 'Tools' tab located in the upper left side of the page.
Then Click 'Groups' inside 'Administration' section.
Then Search the 'Group' and do click on its row.
Then Remember the resources list.
Then Launch TRUedx site and login with new user credentials.
Then Review if the user can use all resources assigned in its Role and in its Group