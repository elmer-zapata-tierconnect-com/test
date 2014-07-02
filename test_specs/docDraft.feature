Feature:
  Scenario: Verify that it is possible to create a new Draft based on an inbox document
  Given Login into the application
 Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
 Then Make a search with results
 Then Make click in the icon with DRFT text and a green arrow in some row of the results table
 Then Select a document template
 Then Click in the "Add" button of the pop up
 Then Fill the data for the document
 #Then Click in the "Insert" button
 Then Go to "Drafts" in the Documents section and search the recently created Draft