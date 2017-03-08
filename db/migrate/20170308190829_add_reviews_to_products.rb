class AddReviewsToProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
    t.string  "author"
    t.integer "product_id"
    t.string  "content"
    t.integer "user_id"
  end
  end
end
