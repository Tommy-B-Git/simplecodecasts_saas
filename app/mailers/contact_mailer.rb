class ContactMailer < ActionMailer::Base
  default to: 'tommy_brown@me.com'
  def contact_email(name, email, body)
    @name = name #@instanceVars are assigned the values from vars assigned in contacts_controller (lines 9,10,11)
    @email = email
    @body  = body
    mail(from: email, subject: 'Contact form message')
  end
end