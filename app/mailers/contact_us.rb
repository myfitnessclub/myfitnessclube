class ContactUs < ApplicationMailer

 def confirmation_contact_us(contact_us)
    @contact_us = contact_us
    mail(to: @contact_us.email, subject: 'Welcome to My Fitness Club')
    
  end

  def contact_us_mail_for_support(contact_us)
  	@contact_us = contact_us
  	@mail = 'support@myfitnessclub.in'
  	mail(to: @mail, subject: 'My Fitness Club : Contact us')
  end

 def payment_confirmation_mail_to_client(client_data , params) 
     @client_data = client_data
     @params = params
     mail(to: @client_data.email, subject: 'My Fitness Club : Payment confirmation')
  end
  
  def payment_confirmation_mail(client_data , params) 
  	@client_data = client_data
    @params = params
  	@mail = 'myfitnessclube@gmail.com'
  	mail(to: @mail, subject: 'My Fitness Club : Payment confirmation')
   
  end

  def article_mail(article_mail)
     client_data = article_mail
     mail(to: client_data.email, subject: 'My Fitness Club : Subscription Mail')
  end

 
end
