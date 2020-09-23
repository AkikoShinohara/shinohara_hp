class InquiriesController < ApplicationController
  def index
  end

  def new
    @inquiry = Inquiry.new
  end
  def create
    binding.pry
    @inquiry = Inquiry.create(inquiry_params)    #ここでフォームの入力内容をDBに保存する
    @inquiry.save
    # if @inquiry.save        #もし保存ができたら、下記を実行
    # InquiryMailer.send_mail(@inquiry).deliver     #3項で作成したメソッドの実行
    # end
  end


  private
    def inquiry_params
        params.permit(:name, :email, :message)        #保存するカラムを限定する
    end
end
