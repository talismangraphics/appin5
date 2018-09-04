class ApplicationMailer < ActionMailer::Base
  default from: 'chris@talismangraphics.com'
  layout 'mailer'

  def sample_email(user)
	  @user = user
	  mail(to: 'cjabas@gmail.com', subject: 'Sample Email')
  end
end
