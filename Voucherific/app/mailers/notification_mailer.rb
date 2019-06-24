class NotificationMailer < ApplicationMailer
    default from: "test_voucher@jerseybean.je"

    def voucher_notif(user, voucher_number, voucher_desc, user_first)
        @voucher_desc = voucher_desc
        @user_first = user_first
        @user = user
        #<%= @voucher.number %>
        @vouchernumber = voucher_number
        mail(to: @user, from:"test_voucher@jerseybean.je", subject: "Here is your voucher: #{@vouchernumber}")
    end
end
