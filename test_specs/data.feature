Feature:
  Scenario: Verify that it is possible to add a Data Routing item

Given Login to TRUedx application with valid credentials
Then Click Tools tab located in the upper left side of the page
Then Click on the "Data Routing" button
Then Click on "Add" button
Then Fill in the fields
Then Click "Insert"
Then Click "Back"
#Then Verify that the values for "Sender Id", "Receiver Id" and "Directory" that were entered are available as options in the filters.

  Scenario: Verify that it is possible to update a Data Routing item
  Given Login to TRUedx application with valid credentials
    Then Click Tools tab located in the upper left side of the page
  Then Click on the "Data Routing" button
  Then Click on the Interchange Name link for a row in the Data Routing list
  Then Change some values
  Then Click "Update"
  Then Click "Back"

  Scenario: Verify that it is possible to delete a Data Routing item
Given Login to TRUedx application with valid credentials
    Then Click Tools tab located in the upper left side of the page
Then Click on the "Data Routing" button
Then Click on the Interchange Name link for a row in the Data Routing list
#Then Click "Delete"
Then Click OK
  Scenario: Verify that it is possible to filter the Data Routing search result
  Given Login to TRUedx application with valid credentials
      Then Click Tools tab located in the upper left side of the page
  Then Click on the "Data Routing" button
  Then Select an option from one of the following combo boxes
  Then Click "Search"
