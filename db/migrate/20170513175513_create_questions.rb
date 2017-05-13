class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :font
      t.string :name
      t.string :email
      t.string :pnum
      t.timestamps
    end
  end
end
