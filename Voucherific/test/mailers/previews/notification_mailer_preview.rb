# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
    def sample_mail_preview
        NotificationMailer.voucher_notif(User.first)
    end
end
