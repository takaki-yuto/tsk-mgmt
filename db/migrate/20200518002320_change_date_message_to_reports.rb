class ChangeDateMessageToReports < ActiveRecord::Migration[5.2]
  def change
    change_column :reports, :message, :text
  end
end
