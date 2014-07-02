Feature:


    Scenario: Verify that it is possible to create a user
    Given Launch TRUedx site and login with "support.amcast" and "redamon"
    Then Click Tools tab located in the upper left side of the page
    Then Click "Users" inside Administration section
    Then Click "Add" located below the Users list
    Then Provide data to the required fields and click Insert
    Then Click "Back" located at the bottom of the page
    #Then Verify that user is created
  Scenario: Verify that it is possible to update a user
    Given Launch TRUedx site and login with "support.amcast" and "redamon"
    Then Click Tools tab located in the upper left side of the page
    Then Click "Users" inside Administration section
    Then Click "Search"
    Then Click the Name of a user from the users list displayed
    Then Modify the attributes of the selected user
    Then Click "Update" located under the user attributes
    Then Click "Back" located at the bottom of the page
  Scenario: Verify that it is possible to delete a user.
      Given Launch TRUedx site and login with "support.amcast" and "redamon"
      Then Click Tools tab located in the upper left side of the page
      Then Click "Users" inside Administration section
      Then Click the Name of a user from the users list displayed
      Then In the users attributes page click Delete located below the user attributes
  Scenario: Verify that it is possible to search users for date ranges
 Given Login to TRUedx application with valid credentials
 Then Go to Tools
 Then Select the option Users
 Then In the head of the Search section you can find diferent options to perform a search for users