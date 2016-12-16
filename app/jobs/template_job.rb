class TemplateJob < ActiveJob::Base
  queue_as :default
  def perform(name,mail)
    UserMailer.send_mail(mail,name).deliver
  end
end
