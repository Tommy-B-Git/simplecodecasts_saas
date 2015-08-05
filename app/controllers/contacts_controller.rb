class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params) #contact_params are values form field sent via query string
    if @contact.save #code below is to send out email is form details are saved to DB ok
      name = params[:contact][:name]
      email = params[:contact][:email] #params is just a hash name we use to attach the key to i.e [:email]
      body = params[:contact][:comments] #these variables are from the form user input
      #BELOW - Run contact_email method from the ContactMailer object (contact_mailer.rb) passes in vars declared above
      ContactMailer.contact_email(name,email,body).deliver
      
      flash[:success] = "Message Sent" #validation occurs in models/contact.rb
      redirect_to new_contact_path
    else
      flash[:danger] = "Error occured, message has not been sent" #validation occurs in models/contact.rb
      redirect_to new_contact_path
    end  
  end
  private
  def contact_params # private function for security using the Contact.new(contact_params) above 
    params.require(:contact).permit(:name, :email, :comments)
  end
end  