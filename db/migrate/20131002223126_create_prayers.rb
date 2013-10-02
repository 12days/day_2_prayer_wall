class CreatePrayers < ActiveRecord::Migration
  def change
    drop_table :prayers

    create_table :prayers do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
