class WelcomeMailer < ApplicationMailer
	
	def sample_email(user)
	    @user = user
	    mail to: @user.email, subject: 'Sample Email', message: 'Hola Bienvenidos a Wts '
  end

end
