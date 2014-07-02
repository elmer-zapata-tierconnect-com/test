Feature:
  Scenario: Verify that it is possible to delete a Data Routing item
Given Login to TRUedx application with valid credentials
    Then Click Tools tab located in the upper left side of the page
Then Click on the "Data Routing" button
Then Click on the Interchange Name link for a row in the Data Routing list
#Then Click "Delete"
Then Click OK

#Verify that the values for ‘Sender Id’, ‘Receiver Id’ and ‘Directory’ from the deleted item are not available as options in the filters anymore.