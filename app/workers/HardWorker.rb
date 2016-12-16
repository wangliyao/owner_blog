class HardWorker
  include Sidekiq::Worker
  def perform(name,mail)
    put '{name+mail}'
    # UserMailer.send_mail(mail,name).deliver
   end

end
