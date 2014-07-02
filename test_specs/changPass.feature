Feature:
  Scenario: Verify that is possible to change the Password Expiration Time of a group.
    Given Login to TRUedx application with valid credentials
Then Click Tools tab located in the upper left side of the page
Then Click "Groups" inside Administration section
Then Click on some group
Then Change the value of the Password Expiration Time field to 0
Then Click on "Update" button
Then Click the Logoff link, located on the top right of the page
Then Click the Logon link, located in the middle of the page
Then Login a user of the updated gruop
Then Click Tools tab located in the upper left side of the page
#Then Click "Users" inside Administration section
#Then Check the Password Expiration Time is displayed on the right side of the Change Password link