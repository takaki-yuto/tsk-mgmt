class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :message
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
