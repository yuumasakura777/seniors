class NotificationMailer < ActionMailer::Base
  default from: "hogehoge@example.com"

  def send_confirm_to_user(user)
    @user=user
    mail(
      subject: "ユーザー登録が完了しました。",
      to: @user.email
    ) do |fomat|
      format.text
    end
  end
end
