class CreatePortfolios < ActiveRecord::Migration[8.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.string :thumb

      t.timestamps
    end
  end
end
