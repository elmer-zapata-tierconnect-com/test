require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.default_driver =:selenium
Capybara.javascript_driver = :webkit

Given /^Launch TRUedx site and login with "([^"]*)" and "([^"]*)"$/ do |user,pass|
  @home = HomePage.new
   @home.load
  p "entroooooooooooooooooooooo"
  #@home.search_field.set 'support.amcast'
  # @home.search_field1.set 'redamon'
  @home.login(user,pass)
  #@home.search_button.click
end



Then /^Click Tools tab located in the upper left side of the page$/ do

  @home.users
end

Then /^Click "([^"]*)" inside Administration section$/ do |users|
  @home.me2(users)
  sleep(1)
end

Then /^Click "([^"]*)" located below the Users list$/ do |nomBut|

  @home.clickBut(nomBut)

end
Then /^Click "([^"]*)"$/ do |nomBut|
  @home.clickBut(nomBut)
  #sleep(2)
end
#update user
Then /^Click the Name of a user from the users list displayed$/ do
  @home.escogeUs
end
Then /^Modify the attributes of the selected user$/ do
  @home.modificar
end
Then /^Click "([^"]*)" located under the user attributes$/ do |nomBut|
  @home.clickBut(nomBut)
end
Then /^Click "([^"]*)" located at the bottom of the page$/ do |nomBut|
  @home.clickBut(nomBut)
  sleep(5)
end

#end update user

#groups
Then /^Click "([^"]*)" located below the Groups list$/ do |nomBut|
  @home.clickBut(nomBut)
  sleep(5)
end
Then /^In group Provide data to the required fields and click Insert$/ do
  @home.creaGroup
end
Then /^Click the Name of a group from the groups list displayed$/ do

  @home.chooseGro
      end
Then /^Modify the attributes of the selected group$/ do
  @home.changeGro
end
Then /^Click "([^"]*)" located under the group attributes$/ do |nomBut|
  @home.clickBut(nomBut)
end
Then /^In the group attributes page click "([^"]*)" located below the group attributes$/ do |nomBut|
  @home.clickBut(nomBut)
end
Then /^Click Ok in the confirmation message$/ do
  @home.eli
end
#end groups
#data RouTing
Given /^Login to TRUedx application with valid credentials$/ do
  @home = HomePage.new
     @home.load
  us='support.amcast'
  pass='redamon'
  @home.login(us,pass)
end
Then /^Click on the "([^"]*)" button$/ do |datRou|
           @home.me2(datRou)
end
Then /^Click on "([^"]*)" button$/ do |nomBut|
           @home.clickBut(nomBut)
end
Then /^Fill in the fields$/ do
      @home.addData
end
Then /^Click on the Interchange Name link for a row in the Data Routing list$/ do
  @home.chooseData
  sleep (2)
end
Then /^Change some values$/ do
  @home.fillData
end
Then /^Select an option from one of the following combo boxes$/ do
  @home.selectOp
end
#end data Routing
Then /^Provide data to the required fields and click Insert$/ do
 @home.llenauser
end
#Then /^Click "([^"]*)" located at the bottom of the page$/ do |nomBut|
 #@home.clickBut(nomBut)
#end
#Then /^Click the Name of a user from the users list displayed$/ do
 #@home.escogeUs
#end
Then /^In the users attributes page click "([^"]*)" located below the user attributes$/ do |nomBut|

 @home.clickBut(nomBut)

end

Then /^In the users attributes page click Delete located below the user attributes$/ do

 @home.eli

end
Then /^Click OK$/ do
 #  @home.alertOK
  @home.eli
end
Then /^Go to Tools$/ do
  @home.users
end
Then /^Select the option Users$/ do
  @home.me2("Users")
end
Then /^In the head of the Search section you can find diferent options to perform a search for users$/ do
  @home.searchUs
end
#roles
Then /^In the Tools tab, Administration Section, click on the Role button, located on the left menu of the principal page$/ do
  @home.users
  @home.me2("Roles")
end
Then /^In the Tools tab, Administration Section, click on the Users button, located on the left menu of the principal page$/ do
  @home.users
    @home.me2("Users")
end
Then /^Click on "([^"]*)" button located on the footer$/ do |nomBut|
   @home.clickBut(nomBut)
end
Then /^Fill Name and Description textfield$/ do
  @home.fillRol
end
Then /^Add a few resources$/ do

  @home.addRes


end
Then /^Go to Users$/ do
  @home.users
  @home.me2("Users")
end
Then /^Fill all mandatory fields$/ do
  @home.llenauser2
end
Then /^Change Name and Description textfield$/ do
  @home.fillRol
end
Then /^Add or Delete Resources of that Role$/ do
  @home.clickBut('Add Resource')
  #@home.clickBut('Delete')

 #page.first(click_button('Delete'))

  sleep(4)
end

Then /^Do click on a Role$/ do
  @home.chooseRol
end
Then /^Do click on "([^"]*)" button$/ do |nomBut|
  @home.clickBut(nomBut)
end
Then /^From Role combo-box, search delete role$/ do

end
Then /^Select the new Role in some user$/ do
  @home.changeRol
end
Then /^Login to TRUedx system with the new User and review if it display all resources$/ do
  within_frame('headerMenu') do
  @home.verRol
  #@home.click_button('logon')
  end
  click_link('Logon')
  sleep(3)
  @home.login('userPrueba232','redamon1')
end
Then /^Click Delete and click Ok in the confirmation message$/ do
  @home.eli
end

Then /^Click on some group$/ do
  @home.chooseGro2
end

Then /^Change the value of the Password Expiration Time field to 0$/ do
  @home.changePass
end

Then /^Click the Logoff link, located on the top right of the page$/ do
  @home.logou
end
Then /^Click the Logon link, located in the middle of the page$/ do
  click_link('Logon')
end
Then /^Login a user of the updated gruop$/ do
  @home.login('userPrueba232','redamon1')
end
Then /^Check the Password Expiration Time is displayed on the right side of the Change Password link$/ do
  @home.chooseUsGr
end

Then /^Provide data to the required fields$/ do
  @home.creaGroup2
end
Then /^Do click on Delete ButtonR$/ do
  within("/div[@id='layout_footer_div']") do
    #first(find_button('Delete').click)
    # first(find('Delete').click)
    #click_button('Delete')
    #first('Delete').click
    #click_button('Delete', :match => :first)
    click_button('Delete')
  end
end


Given /^Login into the system$/ do
  @home=HomePage.new
  @home.load
    @home.login('support.amcast','redamon')

end
Then /^In the EDX tab, click in the "([^"]*)" button, located in the Documents section at the left side of the page$/ do |opMenu|
    @home.me2(opMenu)
end

Then /^Fill the date type$/ do
  @home.fillSearchInbox
end
Then /^Click on the Set ID combobox$/ do
  @home.clickId
end
Then /^Check all,none and some document type checkboxes$/ do
  @home.selectAll
end
Then /^Make click in the combo box with the "([^"]*)" value$/ do |link|
  @home.clickPart(link)
end

Then /^Check All,none and some Partners checkboxes$/ do
  @home.selectAll
end
Then /^Check All,none and some group Checkboxes$/ do
  @home.selectAll
end
Then /^In the Reference Number textfield type existent and non existent reference numbers$/ do
  @home.fillRef
end
Then /^Make click in the Search button$/ do
  @home.clickBut('Search')
  sleep(2)
end

Then /^In the Full Text Query textfield, type text that correspond to some document, you can use asterisk as a wildcard$/ do
  @home.fillQue
end
Then /^Make a search with results$/ do
  @home.search2
end
Then /^Make click in the column headers of the results table$/ do
  @home.clickHead

end
Given /^Login into the system with "([^"]*)"$/ do |user|
  @home=HomePage.new
  @home.load
  @home.login(user,'redamon')
end
Then /^Make a search that have more than one page of results$/ do
  @home.search2
  sleep(4)
end

Then /^Make click in the navigation buttons located in the upper right corner of the results table$/ do
  @home.clickNav
end

Then /^Make click in the image with DB text in some row of the results table$/ do
  @home.db
end
Then /^Change some values of the document$/ do
  @home.changeDoc
end

Then /^Make click in the icon with FORM text and a green arrow in some row of the results table$/ do
  @home.form
end

Then /^Make click in the image with EDI text and a Green arrow in some row of the results table$/ do
  @home.edi
end
Then /^Make click in the icon with RPT text and a green arrow in some row of the results table$/ do
  @home.rpt
end

Then /^Make click in the icon with DRFT text and a green arrow in some row of the results table$/ do
  @home.dra
end
Then /^Select a document template$/ do
  @home.selectTem
end
Then /^Click in the "([^"]*)" button of the pop up$/ do  |nomBut|
  @home.clickPopUp(nomBut)
end
Then /^Fill the data for the document$/ do
  @home.fill810
  sleep(2)
end
Then /^Go to "([^"]*)" in the Documents section and search the recently created Draft$/ do |nom|
  @home.me2(nom)
  @home.search

  sleep(8)
end

Then /^Select checking some checkboxes of the results table$/ do
  @home.checkSome
end
Then /^Click in the "([^"]*)" button located at the footer$/ do |nomBut|
  @home.clickBut(nomBut)
  sleep(10)
  within_window(page.driver.browser.window_handles.last) do
    page.driver.browser.switch_to.alert.accept
  end
end
Then /^Click in the Resend Document button$/ do
  @home.clickBut('Event Viewer')
  @home.db1
  @home.fill2
  @home.checkSome
  #@home.me2('Documents')
  #p @home.currentURL
  @home.me2('Inbox')
  @home.clickBut('Resend Document')

  page.driver.browser.switch_to.alert.accept

end

#Then /^Make click in the "([^"]*)" button$/ do |nomBut|
 # @home.clickBut(nomBut)
#end

Then /^Click Add Draft located in the bottom side of the page$/ do
  #@home = Array.new(10)
 # for  a in 0..3
   # t = Thread.new {
   #   @home[a] = HomePage.new
    #       @home[a].load
    #       @home[a].login('support.amcast','redamon')
           #@home[a].fill856

            #page.execute_script "window.close();"
    #}
   # t.join();
             @home.fill856


   #end
end


Then /^Click prueba$/ do
  @home.fill856v2
end
Then /^Crea$/ do
  @home.creaDraft
end





