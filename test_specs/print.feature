Feature:
  Scenario: Verify that it is possible to print the selected documents of the search results
  Given Login into the system
 Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
    Then Make a search with results
 Then Select checking some checkboxes of the results table
 Then Click in the "Print Selected" button located at the footer
