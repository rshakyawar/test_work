class Emailer < ActionMailer::Base
  default :from => "from@example.com"
   def contact(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = recipient
      @from = 'rshakyawar@systematixtechnocrates.com'
      @sent_on = sent_at
  	  @body["email"] = 'rshakyawar@systematixtechnocrates.com'
   	  @body["message"] = message
      @headers = {}
   end

end
