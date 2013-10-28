class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.text :title
      t.text :post
      t.text :slug

      t.timestamps
    end
  end
end
