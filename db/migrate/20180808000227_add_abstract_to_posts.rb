class AddAbstractToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :abstract, :text
  end
end
