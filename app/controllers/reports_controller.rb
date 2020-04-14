class ReportsController < ApplicationController

  def index
  end

  def new
    @report = Report.new
  end

  def create
    Report.create(report_params)
    redirect_to root_path
  end

  private
  def report_params
    params.require(:report).permit(:title, :content)
  end
end
