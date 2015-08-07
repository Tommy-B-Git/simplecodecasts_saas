class ContactMailer < ActionMailer::Base
  default to: 'tommy_brown@me.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Contact Form Message')
  end
endgit status