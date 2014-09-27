class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    	t.string :prefix
    	t.string :name
      t.string :subject
      t.string :email
      t.string :password_digest
      t.string :image_url

      t.timestamps
    end
  end
end
