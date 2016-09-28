class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :description
      t.date :period_start
      t.date :period_finish
      t.string :attachment
      t.text :link

      t.timestamps
    end
  end
end
