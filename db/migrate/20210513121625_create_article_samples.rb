class CreateArticleSamples < ActiveRecord::Migration[6.1]
  def change
    create_table :article_samples do |t|
      t.string :name
      t.text :body
      t.integer :age
      t.timestamps
    end
  end
end
