class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :message
      t.string :create_name
      t.timestamps
    end
  end
end
