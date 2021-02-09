class CreateAppoints < ActiveRecord::Migration[6.0]
  def change
    create_table :appoints do |t|
      t.references  :user,     foreign_key: true
      t.references  :task,     foreign_key: true
      t.timestamps
    end
  end
end