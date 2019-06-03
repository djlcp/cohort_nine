class NotificationMailer < ApplicationMailer
    default from: "test_voucher@jerseybean.je"

    def voucher_notif(user)
        @user = user
        mail(to: @user, from:"test_voucher@jerseybean.je", subject: 'Test email that more than likely wont work')
    end
end
