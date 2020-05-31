class MessagesController < ApplicationController
  before_action :set_group

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

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

  def set_group
    @report = Report.find(params[:report_id])
  end
end
