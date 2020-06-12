class MessagesController < ApplicationController
  before_action :set_group

  # メッセージのやりとりを行うため、インスタンス変数の用意
  # 対象の日報に送信されているメッセージの情報を@messagesで渡す
  def index
    @message = Message.new
    @messages = @report.messages.includes(:user)
  end

  def create
    @message = @report.messages.new(message_params)
    if @message.save
      redirect_to report_path(@report)
    else
      redirect_to report_path(@report)
    end
  end

  private

  # 不要なデータが送信されないための対策
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

  # 日報の情報を持ってくる
  def set_group
    @report = Report.find(params[:report_id])
  end
end
