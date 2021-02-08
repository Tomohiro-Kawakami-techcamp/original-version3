class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name,          null: false
      t.text   :info,          null: false
      t.date   :event_date,    null: false
      t.references  :user,     foreign_key: true
      t.timestamps
    end
  end
end
