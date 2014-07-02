require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
class Tab < SitePrism::Page
  #def initialize()
  p "=============== TESTING ================="
  set_url "http://10.100.1.240:8080/trinary_jedx_qa_3.9.0_5496/public/logoff.jspx"

  #set_url_matcher "http://10.100.1.240:8080/trinary_jedx_qa_3.9.0_5496/logon.do"
  #set_url "www.google.com"
 # element :tab, "span=EDX"
 # def span1()
  #  puts "elmer"
    #puts @tab.
   # puts "asdsad"
  #@tab.each { |i| puts i}

 #end
  def me()
      within_frame('headerMenu')do
          #find('.option', :text => 'Drafts').click
          find('#headerMenuItem2', :text => 'Requirements').click
        end

  end
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
  
end