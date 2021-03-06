class ContactMailer < ApplicationMailer
  ADMIN_EMAIL = 'admin@example.com'

  def user_email(contact)
    @contact = contact
    @name = contact.name.present? ? contact.name : contact.email
    subject = '【お問い合わせサンプルアプリ】お問い合わせを受け付けいたしました'
    mail(to: contact.email, subject: subject)
  end

  def admin_email(contact)
    @contact = contact
    @name = contact.name.present? ? contact.name : contact.email
    subject = '【お問い合わせサンプルアプリ】お問い合わせがありました'
    mail(to: ADMIN_EMAIL, subject: subject)
  end
end
