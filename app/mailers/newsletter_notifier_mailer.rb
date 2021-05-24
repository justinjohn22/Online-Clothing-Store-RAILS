class NewsletterNotifierMailer < ApplicationMailer
  default :from => 's3850034@student.rmit.edu.au'

  # send a newsletter email to the user, pass in the user object that contains the user's email address

  def send_newsletter_email(user)
    @user = user
    mail(:to => @user.email, :subject => 'Thanks for subscribing to our Newsletter')
  end
end
