class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :user, index: true

      t.string :address, null: false
      t.string :token, null: false
      t.integer :view_count, default: 0
      t.datetime :expired_at

      t.timestamps null: false
    end
  end
end
