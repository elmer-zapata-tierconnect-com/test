Feature:
  Scenario:Verify that it is possible to search inbox documents by date
  Given Login into the system
   Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
  	Then Fill the date type
   #Then Select the date type
 # Then Make click on 'Search' button
  Scenario: Verify that it is possible to search inbox documents by their document type
  Given Login into the system
 Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
 Then Click on the Set ID combobox
 Then Check all,none and some document type checkboxes
 #Then Make click in the "Search" button

  Scenario: Verify that it is possible to search inbox documents by their partner
  Given Login into the system
 Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
 Then Make click in the combo box with the "All Partners" value
 Then Check All,none and some Partners checkboxes
 #Then Make click in the "Search" button
Scenario: Verify that it is possible to search inbox documents by their group

Given Login into the system
Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
Then Make click in the combo box with the "All Groups" value
Then Check All,none and some group Checkboxes
#Then Make click in the "Search" button
  Scenario: Verify that it is possible to search inbox documents by their reference number
 Given Login into the system
Then In the Reference Number textfield type existent and non existent reference numbers
Then Make click in the Search button

  Scenario: Verify that it is possible to search inbox documents by some fraction of their text
  Given Login into the system
  Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
  Then In the Full Text Query textfield, type text that correspond to some document, you can use asterisk as a wildcard
  Then Make click in the Search button

    Scenario: Verify that it is possible to order the documents search by column

   Given Login into the system
   Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
    Then Make a search with results
   Then Make click in the column headers of the results table

  Scenario: Verify that it is possible to navigate through all the pages of the search results

  Given Login into the system with "support.hengst"
 Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
Then Make a search that have more than one page of results
 Then Make click in the navigation buttons located in the upper right corner of the results table