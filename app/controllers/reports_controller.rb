class ReportsController < ApplicationController

  # ページネーションを一つのページで二つ表示させるために配列を使ってデータの加工を行っている
  def index
    @myreports = Report.where(user_id: current_user).order(created_at: "DESC").page(params[:myreport]).per(7)
    @replyreports = Report.where.not(user_id: current_user).order(created_at: "DESC")
    member_id = []
    @replyreports_sin = []
    # @replyreportsには受信データも含まれているので、データの格納
    @replyreports.each do |replyreport|
      # replyreportが送信されたデータである場合、ログインユーザーのIDをmember_idに格納
      replyreport.users.each do |user|
        member_id << user.id
      end
      # replyreportは受信されたデータではないか？
      if member_id.include?(current_user.id)
        @replyreports_sin << replyreport
      end
      # 初期化
      member_id = []
    end
    # ログインしているユーザーの送信データが入っている@replyreports_sinをページネーションで表示できるようにする
    @replyreports_sin = Kaminari.paginate_array(@replyreports_sin).page(params[:replyreport]).per(7)
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path
    else
      render :new
    end
    # Report.create(report_params)
    # redirect_to root_path
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
