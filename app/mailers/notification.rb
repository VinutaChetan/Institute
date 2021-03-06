class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.notice.subject
  #
  def notice(announcement)
    @announcement=announcement
    @recipents=User.all.pluck(:email)
    mail to:@recipents.join(","),subject:"#{@announcement.body}"
  end
end
