class UserMailer < ApplicationMailer
  
  default from: 'jb.vidal@gmail.com'
  default subject: "[Default subject] Your call to the 'mail' function may be missing a 'subject' argument"
 
  def welcome_email(my_user)
    @user = my_user 
    @url  = 'http://monsite.fr/login' 
    mail(to: @user.email, subject: "Bienvenue chez nous !") 
  end

end
