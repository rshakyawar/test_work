class EmailerController < ApplicationController
layout ADMIN_LAYOUT  
def sendmail
      email = params["email"]
      recipient = email["recipient"]
      subject = email["subject"]
      message = email["message"]
      Emailer.deliver_contact(recipient,subject,message)
      return if request.xhr?
      redirect_to send_mail_path :notice=>show_flash_message('Message sent successfully')
   end
end   
