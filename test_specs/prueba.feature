   Feature: ddd
Scenario: Verify that it is possible to navigate through all the pages of the search results

Given Login into the system with "support.hengst"
Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
Then Make a search that have more than one page of results
Then Make click in the navigation buttons located in the upper right corner of the results table