class CreateMyPortfolios < ActiveRecord::Migration[8.0]
  def change
    create_table :my_portfolios do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
