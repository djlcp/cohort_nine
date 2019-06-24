class NotificationMailer < ApplicationMailer
    default from: "test_voucher@jerseybean.je"

    def voucher_notif(user, voucher_number, voucher_desc, user_first, user_id)
        @voucher_desc = voucher_desc
        @user_first = user_first
        @user = user
        #<%= @voucher.number %>
        @vouchernumber = voucher_number
        @user_id = user_id
        mail(to: @user, from:"test_voucher@jerseybean.je", subject: "Here is your voucher: #{@vouchernumber}")
    end
end
