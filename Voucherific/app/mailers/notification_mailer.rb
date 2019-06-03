class NotificationMailer < ApplicationMailer
    default from: "test_voucher@jerseybean.je"

    def voucher_notif(user, voucher_number)
        @user = user
        #<%= @voucher.number %>
        @vouchernumber = voucher_number
        mail(to: @user, from:"test_voucher@jerseybean.je", subject: "Here is your voucher: #{@vouchernumber}")
    end
end
