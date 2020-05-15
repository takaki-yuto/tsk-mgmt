class ReportsController < ApplicationController

  def index
    @myreports = Report.where(user_id: current_user).order(created_at: "DESC").page(params[:myreport]).per(7)
    @replyreports = Report.where.not(user_id: current_user).order(created_at: "DESC")
    member_id = []
    @replyreports_sin = []
    @replyreports.each do |replyreport|
      replyreport.users.each do |user|
        member_id << user.id
      end
      if member_id.include?(current_user.id)
        @replyreports_sin << replyreport
      end
      member_id = []
    end
    @replyreports_sin = Kaminari.paginate_array(@replyreports_sin).page(params[:replyreport]).per(7)
  end

  def new
    @report = Report.new
  end

  def create
    Report.create(report_params)
    redirect_to root_path
  end

  def show
    @message = Message.new
    @report = Report.find(params[:id])
    @fromuser = User.where(id: @report.user_id)
    @messages = @report.messages.includes(:user)
  end

  private
  def report_params
    params.require(:report).permit(:title, :message, user_ids: []).merge(user_id: current_user.id)
  end
end
