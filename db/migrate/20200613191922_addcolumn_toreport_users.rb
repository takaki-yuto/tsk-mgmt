class AddcolumnToreportUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :report_users, :read_flag, :integer, default: '0'
  end
end
