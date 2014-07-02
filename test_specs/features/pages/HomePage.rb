require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
class HomePage < SitePrism::Page
  #def initialize()
  p "=============== TESTING ================="
  #set_url "http://10.100.1.240:8080/trinary_jedx_qa_3.9.0_5496/logon.do"
  set_url "http://10.100.1.240:8080/trinary_jedx_qa_3.9.0_5502/logon.do"
  set_url "http://10.100.1.59:8080/trinary_jedx_qa_3.9.0_5505/"
  #set_url "http://10.100.1.6:8080/trinary_jedx_qa_3.9.0_5502/logon.do"
  #set_url_matcher "http://10.100.1.240:8080/trinary_jedx_qa_3.9.0_5496/logon.do"
  #set_url "www.google.com"
  element :search_field, "input[name='userName']"
  element :search_field1, "input[name='password']"
  element :search_button, "input[name='submit']"
    $numAleatorio=0
    $numRol=0
  $group=0
  $us=0
  $numId=1
    nomUser=""
  def login(usNa,pass)
    #within_frame('main') do
    p "logiinnnnnnnnnn"
    fill_in('userName', with: usNa)
    fill_in('password', with: pass)
    #search_field=usNa
    #search_field1=pass
    click_button("Entrar")
    sleep(2)
     # end
    #search_button.click
  end
  def randomfilters()
    num=Time.now
    num=num.strftime("%d/%m/%Y")
    fill_in('param(startDate)', with:'01/01/2005')
    fill_in('param(endDate)', with:num )
  end
  def users()
      within_frame('headerMenu') do
          #find('.option', :text => 'Drafts').click
        p "xq no hace click"
          find('#headerMenuItem3', :text => 'Tools').click
          #find('#headerMenuItem3', :text => 'Tools').click
        #sleep(6)
        end

  end


  def clickBut(nom)
    p "botonnnnnn"
    within_frame('main') do

      click_button(nom)

      #driver.wait_until(page.driver.browser.switch_to.alert.accept)#sthash.qNJsEVBR.dpuf
      #page.evaluate_script('window.confirmDeleteMessage = function() { return true; }')
      #page.click('Aceptar')
     # evaluate_script('window.confirm = function() { return true; }')
     # element = @driver.find_element(:enter  => "\xEE\x80\x87")
     # element.send_keys "keysToSend"
      #element.send_keys
      #sleep(10)



    end

  end
  def creaGroup()
    num2=String(rand(450))
                   $group=num2
    within_frame('main') do
      p "groupppppppp"
      fill_in('name', with: "group"+num2)
      #select 'Company', :from=> 'TypeId'
      #page.select('Company', :from => 'TypeId')
      page.select 'Company', :from => 'typeId'
      page.select 'datastore1', :from => 'dataStoreId'
      page.select 'amcastauto', :from => 'parentId'
      page.select 'datastore1', :from => 'dataStore_externalId'
      fill_in('translationJobId', with: '1000V')
      click_button('Insert')
      sleep(2)
    end
  end
  def creaGroup2()
      num2=String(rand(450))
                     $group=num2
      within_frame('main') do
        p "groupppppppp"
        fill_in('name', with: "group"+num2)
        #select 'Company', :from=> 'TypeId'
        #page.select('Company', :from => 'TypeId')
        page.select 'Company', :from => 'typeId'
        page.select 'datastore1', :from => 'dataStoreId'
        page.select 'amcastauto', :from => 'parentId'
        page.select 'datastore1', :from => 'dataStore_externalId'
        fill_in('translationJobId', with: '1000V')
        click_button('Insert')
        sleep(2)
      end
    end
  def chooseGro()
    within_frame('main')do
          click_link('group'+$group)
          sleep(2)
          end
  end
  def chooseGro2()
      within_frame('main')do
            click_link('group0')
            sleep(2)
            end
    end

  def changeGro()
    within_frame('main') do
    page.select 'Plant', :from => 'typeId'
    page.select 'datastore2', :from => 'dataStoreId'

    end
  end
  def alertOK()
    p "alertttttttttttttt"
    within_frame('main') do
      page.driver.browser.switch_to.alert.accept
    end
  end
  def chooseData()
    within_frame('main') do

      click_link('Interchange Name')
      click_link('addData'+$numAleatorio)
    end
  end
  def eli()
    within_frame('main')do
        click_button('Delete')
         sleep(2)
         #driver.wait_until(page.driver.browser.switch_to.alert.accept)#sthash.qNJsEVBR.dpuf
         #page.evaluate_script('window.confirmDeleteMessage = function() { return true; }')
         #page.click('Aceptar')
        # evaluate_script('window.confirm = function() { return true; }')
       # browser = GemName::CucumberFormatter::Browser.get_browser
        #browser.alert.ok
        #page.evaluate_script('window.confirm = function() { return true; }')
        #page.click('Aceptar')
        page.driver.browser.switch_to.alert.accept
         #sleep(10)
    end
  end

 #def me1(nombreTab)
  #  if nombreTab
   #  within_frame('headerMenu')do
    #     #find('.option', :text => 'Drafts').click
     #    find('#headerMenuItem3', :text => 'Requirements').click
      # end

  #end

  def me2 nombreOpcion
      #nombreOpcion=nombreOpcion.capitalize
      p "holaaaaaaaaaaaa"
      p nombreOpcion
      sleep(2)
      within_frame('menu')do
          find('.option', :text => nombreOpcion).click

      end
  end
  def escogeUs()
    within_frame('main')do
      click_link('userPrueba'+$us)
      sleep(2)
      end
  end
  def addData()
    num2=String(rand(450))
    $numAleatorio=num2
    within_frame('main') do
      fill_in('interchangeName', with: "addData"+num2)
      fill_in('senderQualifier', with: num2)
      fill_in('senderId', with: num2)
      fill_in('receiverQualifier', with:num2)
      fill_in('receiverId', with:'43')
      fill_in('directory', with:num2)
    end
  end
  def selectOp()
    within_frame('main') do
    page.select '43', :from => 'receiverId'
    end
  end

  def addRes()
    within_frame('main') do
        page.select 'fileresend', :from => 'resourceId'
        click_button('Add Resource')
        page.select 'resend', :from => 'resourceId'
        click_button('Add Resource')
        end
  end
  def modificar()
    num2=String(rand(450))
       numAleatorio=num2

       within_frame('main') do
     #    nomUser=fill_in('userName')
         fill_in('firstName', with: "firstChanged"+num2)
         fill_in('lastName', with: "lastChanged"+num2)
      end

  end
  #metodo para llenar los parametros de un usuario a crear
   def llenauser()
     num=Time.now
         num=num.strftime("%d/%m/%Y")

         num2=String(rand(450))
     $us=num2
         nombre="userPrueba"+num2
         email="prueba@"+num2+".com"
               within_frame('main') do
              #click_button('Add')
              fill_in('userName', with: nombre)
              fill_in('email', with: email)
              fill_in('firstName', with: "first"+num2)
              fill_in('lastName', with: "last"+num2)

                 click_button('Insert')
                 sleep(6)
               #  click_button('Back')
              #find_link(nombre).visible?

                 #click_link(nombre)
               end

   end
  def llenauser2()
       num=Time.now
           num=num.strftime("%d/%m/%Y")

           num2=String(rand(450))
           nombre="userPrueba"+num2
           email="prueba@"+num2+".com"
                 within_frame('main') do
                #click_button('Add')
                fill_in('userName', with: nombre)
                fill_in('email', with: email)
                fill_in('firstName', with: "first"+num2)
                fill_in('lastName', with: "last"+num2)
                page.select 'rol'+$numRol, :from => 'roleId'
                   click_button('Insert')
                   sleep(6)
                 #  click_button('Back')
                #find_link(nombre).visible?

                   #click_link(nombre)
                 end

  end
  def llenauser3()
       num=Time.now
           num=num.strftime("%d/%m/%Y")

           num2=String(rand(450))
           nombre="userPrueba"+num2
           email="prueba@"+num2+".com"
                 within_frame('main') do
                #click_button('Add')
                fill_in('userName', with: nombre)
                fill_in('email', with: email)
                fill_in('firstName', with: "first"+num2)
                fill_in('lastName', with: "last"+num2)
                page.select 'rolPrueba', :from => 'roleId'
                page.select 'grupo0', :from => 'groupId'
                 #  click_button('Insert')
                   #sleep(2)
                 #  click_button('Back')
                #find_link(nombre).visible?

                   #click_link(nombre)
                 end

     end

  def clicka()
    #page.within_window(main_window) do
        #Normally fill in the form and log in

    num=Time.now
    num=num.strftime("%d/%m/%Y")
    num2=String(rand(450))
    nombre="userPrueba"+num2
    email="prueba@"+num2+".com"
          within_frame('main') do
         click_button('Add')
         fill_in('userName', with: nombre)
         fill_in('email', with: email)
         fill_in('firstName', with: "first"+num2)
         fill_in('lastName', with: "last"+num2)

            click_button('Insert')
           click_button('Back')
     find_link(nombre).visible?

            #click_link(nombre)
          end
  #end
  end

  def fillData()
    num2=String(rand(450))

       within_frame('main') do
         #fill_in('interchangeName', with: "addData"+num2)
         fill_in('senderQualifier', with: num2)
         fill_in('senderId', with: num2)
         fill_in('receiverQualifier', with:num2)
         fill_in('receiverId', with:num2)
         fill_in('directory', with:num2)
       end
  end
  def fillRol()
    num2=String(rand(450))
    $numRol=num2
    within_frame('main') do
      fill_in('name', with: "rol"+num2)
      fill_in('description', with: "desc"+num2)
    end
  end

  def chooseRol()
    within_frame('main') do
          click_link('rol'+$numRol)
        end
  end
  def changeRol()
    within_frame('main') do
      click_link('userPrueba232')
      page.select 'rol'+$numRol, :from => 'roleId'
    end
  end

  def searchUs()
    within_frame('main') do
    num=Time.now
        num=num.strftime("%d/%m/%Y")
        fill_in('param(startDate)', with:'01/01/2005')
        fill_in('param(endDate)', with:'01/01/2015' )
    click_button('Search')
      sleep(5)
      end
  end
  def verRol()
    #find('.a', :text => 'Logoff').click
    #find('#header-header', :text => 'Logoff').click
    #find('')
    #clickBut ('Logoff')
    #find_all('Logoff').click
    #page.find('.a ')
    click_link 'Logoff'

  end
  def changePass()
    within_frame('main') do
      fill_in('passwordExpirationTime', with:'3')
    end
  end

  def logou()
    within_frame('headerMenu') do
      click_link 'Logoff'
    end
  end

  def chooseUsGr()
    within_frame('main') do
      click_link 'userPrueba232'
    end
  end

  def fillSearchInbox()
    within_frame('main') do
      fill_in('param(startDate)', with:'01/01/2005')
      fill_in('param(endDate)', with:'01/01/2014')
      click_button('Search')
      page.select 'Modify Date', :from => 'param(targetDate)'
      click_button('Search')
      page.select 'Sent Date', :from => 'param(targetDate)'

      click_button('Search')
    end
  end


  def clickId()
    within_frame('main') do
      click_on('All Documents')
      #click_link('check all')
    end
  end

  def selectAll()
    within_frame('main') do
      click_on('Check all')
      click_button('Search')
    end
  end
  def clickPart(ll)
    within_frame('main') do
      click_on(ll)
    end
  end
  def fillRef()
    num=Time.now
          num=num.strftime("%d/%m/%Y")
      within_frame('main') do
        fill_in('param(startDate)', with:'01/01/2005')
                    fill_in('param(endDate)', with:num)
      fill_in('param(documentReferenceNumber)', with:'1403252065')
    end
  end
  def fillQue()
    num=Time.now
          num=num.strftime("%d/%m/%Y")
      within_frame('main') do
        fill_in('param(startDate)', with:'01/01/2005')
                    fill_in('param(endDate)', with:num)
      fill_in('param(query)', with:'a*')
    end

  end

  def search()
    num=Time.now
        num=num.strftime("%d/%m/%Y")
    within_frame('main') do
      fill_in('param(startDate)', with:'01/01/2005')
            fill_in('param(endDate)', with:num)
      click_button('Search')
    end
  end
  def search2()
     num=Time.now
         num=num.strftime("%d/%m/%Y")
     within_frame('main') do
       fill_in('param(startDate)', with:'01/01/2005')
             fill_in('param(endDate)', with:'05/28/2014')
       click_button('Search')
     end
   end
  def clickHead()
    num=Time.now
        num=num.strftime("%d/%m/%Y")
    within_frame('main') do
      fill_in('param(startDate)', with:'01/01/2005')
      fill_in('param(endDate)', with:num)
    within_table('tableList') do
      find('tr', :text =>'SetID').click

      sleep(4)
      find('tr', :text =>'SetID').click
      sleep(3)
    end
  end
  end

  def clickNav()
    within_frame('main') do
     # find('#span.image_button.paginate_button.paginate_disabled_next').click
      #within_table('contentTable') do
     # find('.image_button.paginate_button.paginate_disabled_next').click
      #find(:xpath, "//img[@class='onClickEditRecord']", :match => :first).click
     # find(:xpath, "//span[@class='image_button.paginate_button.paginate_disabled_next']", :match => :first).click
      sleep(3)
      find(".image_button.paginate_button.paginate_disabled_next").click
      sleep(5)
       # end
    end
  end

  def db()
    within_frame('main') do
      find(:xpath, "//img[@class='onClickEditRecord']", :match => :first).click
    end
  end
  def db1()
    within_frame('main') do
      find(:xpath, "//img[@title='Edit_Document_DB_Record']",:match =>:first).click
    end
  end
  def changeDoc()
      #main_window = page.driver.find_window('http://10.100.1.240:8080/trinary_jedx_qa_3.9.0_5496/protected/editor.do?actionMethod=pickType&tradingPartnerPairId=&parentId=')
    within_window(page.driver.browser.window_handles.last) do
      fill_in('partner', with:'partner:P')
      sleep(4)
      click_button('Update')
    end

  end

  def form()
    within_frame('main') do
          find(:xpath, "//img[@class='onClickViewForm']", :match => :first).click
      sleep(2)
     end
  end
  def edi()
    within_frame('main') do
          find(:xpath, "//img[@class='onClickViewEDI']", :match => :first).click
      sleep(2)
        end
  end
  def rpt()
    within_frame('main') do
              find(:xpath, "//img[@class='onClickViewReport']", :match => :first).click
          sleep(2)
            end
  end

  def dra()
    within_frame('main') do
                  find(:xpath, "//img[@class='onClickDraftDocument']", :match => :first).click
              sleep(2)
                end
  end

  def selectTem()

    within_window(page.driver.browser.window_handles.last) do
      page.select 'amcastauto : TOYS R US : TOYSRUS.ZZ.TOYSRUS-TRU.ZZ.TRU : 810', :from => 'dcIdsetId'
      sleep(4)

    end
  end
  def clickPopUp(nom)
    within_window(page.driver.browser.window_handles.last) do
      click_button(nom)
    end
  end

  def fill810()
    within_window(page.driver.browser.window_handles.last) do


      fill_in('/XMLX12/X12/DOCUMENT/BIG/E02/S1', with:1111)
      fill_in('/XMLX12/X12/DOCUMENT/BIG/E01/S2', with:'02/02/2014')
      fill_in('/XMLX12/X12/DOCUMENT/BIG/E04/S1', with:'7777777')
      #fill_in('/XMLX12/X12/DOCUMENT/DETAILS/DETAIL[2]/IT1/E07/S1', with:'10')
      #fill_in('/XMLX12/X12/DOCUMENT/DETAILS/DETAIL[2]/IT1/E09/S1', with:10)
      #fill_in('/XMLX12/X12/DOCUMENT/DETAILS/DETAIL[2]/IT1/E02/S1', with:10)
      #fill_in('/XMLX12/X12/DOCUMENT/DETAILS/DETAIL[2]/IT1/E04/S1', with:2)
       fill_in('/XMLX12/X12/TDS/E01/S1', with:4)
       click_button('Insert',:match => :first)
        sleep(3)
      page.execute_script "window.close();"
    end
  end
  def checkSome()
    within_frame('main') do
      page.check('selects', :match => :first)
    end
  end
  def fill2()
    within_window(page.driver.browser.window_handles.last) do
        fill_in('fileName0', with:'task.txt')
        fill_in('storedLocation', with:'C:\FolderA')
        fill_in('writeLocation', with:'C:\FolderB')
        click_button('Update Event Registry')
        #click_button('Close')
        page.execute_script "window.close();"
      end
  end
  def fill856()

   # for a in 0..5000
      #p a
    #  within_window(page.driver.browser.window_handles.first) do
        within_frame('menu') do
                find('.option', :text => 'Draft').click
              end
            within_frame('main') do
              click_button('Add Draft')
            end
     # end

      within_window(page.driver.browser.window_handles.last) do
      #page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
   # within_window(page.driver.browser.window_handles.last) do
      page.select 'amcastauto : NISSAN856 : 123456789.ZZ.123456789-NISSAN.ZZ.NISSAN : 856', :from => 'dcIdsetId'
      click_button('Add')
    #fill_in('/XMLX12/X12/DOCUMENT/BSN/E02/S1',with:$numId)
    #fill_in('/XMLX12/X12/DOCUMENT/BSN/E03/S2',with:'07/01/2014')
    #fill_in('/XMLX12/X12/DOCUMENT/BSN/E04/S2',with:'10:20 AM')
      sleep(4)
    click_button('Insert',:match => :first)
      sleep(9)
      #page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
=begin
      click_button('Send',:match => :first)
      page.driver.browser.switch_to.alert.accept
             sleep(6)
=end

    #page.execute_script "window.close();"
      $numId=$numId+1
        end
    #end
     # page.driver.browser.switch_to.window('http://10.100.1.59:8080/trinary_jedx_qa_3.9.0_5502/protected/frameset.jsp')
      #within_window(page.driver.browser.window_handles.last) do
=begin
      within_frame('menu') do
        p "aa"
        find('.option', :text => 'Inbox').click
      end
=end
    #sleep(4)
       # end
    #end
  end

  def fill856v2()

     # for a in 0..5000
        #p a
      #  within_window(page.driver.browser.window_handles.first) do
          within_frame('menu') do
                  find('.option', :text => 'Draft').click
                end
           within_frame('main') do
             fill_in('numOfEntries',with:'5')
             fill_in('param(startDate)', with:'01/01/2005')
             click_button('Search')
             page.check('checkall', :match => :first)
             click_button('Send Selected')
             page.driver.browser.switch_to.alert.accept

           end
       # end

      #  within_window(page.driver.browser.window_handles.last) do
        #page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
     # within_window(page.driver.browser.window_handles.last) do
        #page.select 'amcastauto : NISSAN856 : 123456789.ZZ.123456789-NISSAN.ZZ.NISSAN : 856', :from => 'dcIdsetId'
       # click_button('Add')
      #fill_in('/XMLX12/X12/DOCUMENT/BSN/E02/S1',with:$numId)
      #fill_in('/XMLX12/X12/DOCUMENT/BSN/E03/S2',with:'07/01/2014')
      #fill_in('/XMLX12/X12/DOCUMENT/BSN/E04/S2',with:'10:20 AM')
        #sleep(4)
      #click_button('Insert',:match => :first)
       # sleep(9)
        #page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
        #click_button('Send',:match => :first)
        #page.driver.browser.switch_to.alert.accept
         #      sleep(6)

      #page.execute_script "window.close();"
        #$numId=$numId+1
        #  end
      #end
       # page.driver.browser.switch_to.window('http://10.100.1.59:8080/trinary_jedx_qa_3.9.0_5502/protected/frameset.jsp')
        #within_window(page.driver.browser.window_handles.last) do

      #sleep(4)
         # end
      #end
  end
  def creaDraft()
           for a in 0..100
      #p a
      within_window(page.driver.browser.window_handles.last) do
        within_frame('menu') do
                find('.option', :text => 'Draft').click
              end
            within_frame('main') do
              click_button('Add Draft')
            end
      end

      #within_window(page.driver.browser.window_handles.last) do
      page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
   # within_window(page.driver.browser.window_handles.last) do
      page.select 'amcastauto : NISSAN856 : 123456789.ZZ.123456789-NISSAN.ZZ.NISSAN : 856', :from => 'dcIdsetId'
      click_button('Add')
    #fill_in('/XMLX12/X12/DOCUMENT/BSN/E02/S1',with:$numId)
    #fill_in('/XMLX12/X12/DOCUMENT/BSN/E03/S2',with:'07/01/2014')
    #fill_in('/XMLX12/X12/DOCUMENT/BSN/E04/S2',with:'10:20 AM')
      sleep(3)
    click_button('Insert',:match => :first)
      sleep(9)
      #page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
      #click_button('Send',:match => :first)
      #page.driver.browser.switch_to.alert.accept
       #      sleep(6)

    page.execute_script "window.close();"
      #$numId=$numId+1
       # end
    #end
     # page.driver.browser.switch_to.window('http://10.100.1.59:8080/trinary_jedx_qa_3.9.0_5502/protected/frameset.jsp')
      #within_window(page.driver.browser.window_handles.first)
      page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
      within_frame('menu') do
        p "aa"
        find('.option', :text => 'Inbox').click
      end

    #sleep(4)
       # end
    #end
  end
  end
end




