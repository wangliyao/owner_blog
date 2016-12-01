class UserMailer < ApplicationMailer
  default :from => "liyaowanga@163.com"

  def send_mail(user,comment)
    @comment = comment
    mail( :subject => 'Thanks for you ',
          :to => user,
          :date => Time.now
    )
  end
end
