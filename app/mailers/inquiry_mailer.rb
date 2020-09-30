class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'aaa@example.com',
      to:   'my.rhythm.ism@gmail.com',
      subject: 'お問い合わせ通知'
    )
  end
end
