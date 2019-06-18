class ApplicationMailer < ActionMailer::Base
  default from: config.action_mailer.smtp_settings.from
  layout 'mailer'
end
