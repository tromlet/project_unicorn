class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :img_url
      t.string :type
      t.timestamps
    end
  end
end
