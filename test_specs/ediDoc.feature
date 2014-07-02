Feature:
  Scenario: Verify that it is possible to edit a document based of their database record
  Given Login into the system
  Then In the EDX tab, click in the "Inbox" button, located in the Documents section at the left side of the page
  Then Make a search with results
  Then Make click in the image with DB text in some row of the results table
  Then Change some values of the document
  #Then Make click in the "Update" button