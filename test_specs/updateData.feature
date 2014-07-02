Feature:
Scenario: Verify that it is possible to update a Data Routing item
Given Login to TRUedx application with valid credentials
  Then Click Tools tab located in the upper left side of the page
Then Click on the "Data Routing" button
Then Click on the Interchange Name link for a row in the Data Routing list
Then Change some values
Then Click "Update"
Then Click "Back"

#Then Verify that the values for ‘Sender Id’, ‘Receiver Id’ and ‘Directory’ that were updated are available as options in the filters.