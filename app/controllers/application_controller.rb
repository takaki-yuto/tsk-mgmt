class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # ログインしているユーザーか？
  before_action :configure_permitted_parameters, if: :devise_controller?
  # 未読メールはあるか？
  before_action :unread_message_flag

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  private

  def unread_message_flag
    @read_flag_chack = 0
    @reports = ReportUser.where(user_id: current_user)
    @reports.each do |report|
      if report.read_flag == 0
        @read_flag_chack = 1
      end
      if @read_flag_chack == 1
        break
      end
    end
  end
end
