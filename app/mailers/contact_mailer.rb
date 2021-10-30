class ContactMailer < ApplicationMailer
  def user_email(name:, email:)
    @name = name
    mail(
      to: email,
      subject: '【お問い合わせサンプルアプリ】お問い合わせを受け付けいたしました'
    )
  end

  def admin_email; end
end
