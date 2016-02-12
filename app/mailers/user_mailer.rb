class UserMailer < ApplicationMailer

 def welcome_email(user)
 	@user = user
 	@url  = 'http://abc.com/login'
 	mail(to: @user.email, subject: 'Your have successfully registered with the BookStore')
 end

end

