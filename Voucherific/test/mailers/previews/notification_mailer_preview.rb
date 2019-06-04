# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
    def sample_voucher_notification
        NotificationMailer.voucher_notif("example@banana.com", "example voucher num")
    end
end
