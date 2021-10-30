if Rails.env.production?
  host = 'sheltered-hollows-76498.herokuapp.com'
  # メール配信に失敗した場合にエラーを発生
  ActionMailer::Base.raise_delivery_errors = true
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.default_url_options = { host: host }
  ActionMailer::Base.smtp_settings = {
    port: 587,
    address: 'smtp.gmail.com',
    user_name: Rails.application.credentials.gmail[:adress],
    password: Rails.application.credentials.gmail[:password],
    domain: host,
    aythentication: 'plain'
  }

end
