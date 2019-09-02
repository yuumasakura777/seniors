class NotificationMailer < ActionMailer::Base
  default from: "tseniors777@gmail.com"

  def send_confirm_to_user(user)
    @user=user
    mail(
      subject: "ユーザー登録が完了しました。",
      to: @user.email
    ) do |format|
      format.text
    end
  end

  def send_edit_message(user)
    @user=user
    mail(
      subject: "ユーザー情報を更新しました。",
      to: @user.email
    ) do |format|
      format.text
    end

  end

  def send_matcher_users(user, name, email)
    @user=user
    @name=name
    @email=email
    mail(
      subject: "マッチングされました。",
      to: @email
    )do |format|
      format.text
    end
  end

  def send_follower_users(user, name, email)
    @user=user
    @name=name
    @email=email
    mail(
      subject: "フォローされました。",
      to: @email
    )do |format|
      format.text
    end
  end

  def talk_messages(user, name, email)
    @user=user
    @name=name
    @email=email
    mail(
      subject: "メッセージが届いています。",
      to: @email
    )do |format|
      format.text
    end
  end


end
